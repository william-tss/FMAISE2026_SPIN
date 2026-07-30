
#define N        3
#ifndef MAX_TERM
#define MAX_TERM 3

#endif
#define BUF_SIZE 1
#ifndef MAX_AE
#define MAX_AE   2

#endif
#define MAX_LOG  2

#define NOVOTE   255
#define HB       255

#define FOLLOWER  0
#define CANDIDATE 1
#define LEADER    2

mtype = { RequestVote, VoteGranted, VoteDenied,
          AppendEntries, AppendOk, AppendFail }

chan inbox[N] = [BUF_SIZE] of { mtype, byte, byte, byte, byte, byte }

byte leader_count[MAX_TERM+1];

byte logv[N * MAX_LOG];
#define LOG(n, k)  logv[(n) * MAX_LOG + (k)]

byte commitIndex[N];

inline net_send(dest, mtyp, frm, trm, a, b, c) {
    if
    :: nfull(inbox[dest]) -> inbox[dest] ! mtyp, frm, trm, a, b, c
    :: skip
    fi
}

inline last_log(nid, lli, llt) {
    if
    :: (LOG(nid, 1) != 0) -> lli = 2; llt = LOG(nid, 1)
    :: (LOG(nid, 1) == 0) && (LOG(nid, 0) != 0) -> lli = 1; llt = LOG(nid, 0)
    :: else -> lli = 0; llt = 0
    fi
}

inline clear_msg() {
    msg_type = RequestVote;
    msg_from = 0;
    msg_term = 0;
    msg_p1   = 0;
    msg_p2   = 0;
    msg_p3   = 0;
}

proctype Node(byte id) {
    byte state       = FOLLOWER;
    byte currentTerm = 0;
    byte votedFor    = NOVOTE;
    byte votesRcv    = 0;
    byte ae_count    = 0;

    mtype msg_type;
    byte  msg_from;
    byte  msg_term;
    byte  msg_p1;
    byte  msg_p2;
    byte  msg_p3;

    byte i;
    byte myLastIdx;
    byte myLastTerm;

    do

    :: (state == FOLLOWER) ->
       if

       :: nempty(inbox[id]) ->
          inbox[id] ? msg_type, msg_from, msg_term, msg_p1, msg_p2, msg_p3;

          if
          :: (msg_type == RequestVote) ->
             last_log(id, myLastIdx, myLastTerm);
             if
             :: (msg_term >= currentTerm) &&
                ((msg_p2 > myLastTerm) ||
                 ((msg_p2 == myLastTerm) && (msg_p1 >= myLastIdx))) &&
                ((votedFor == NOVOTE) || (votedFor == msg_from)) ->
                currentTerm = msg_term;
                votedFor    = msg_from;
                net_send(msg_from, VoteGranted, id, currentTerm, 0, 0, 0)
             :: else ->
                if :: (msg_term > currentTerm) -> currentTerm = msg_term
                   :: else -> skip
                fi;
                net_send(msg_from, VoteDenied, id, currentTerm, 0, 0, 0)
             fi

          :: (msg_type == AppendEntries) ->
             if
             :: (msg_term >= currentTerm) ->
                if :: (msg_term > currentTerm) ->
                      currentTerm = msg_term;
                      votedFor    = NOVOTE
                   :: else -> skip
                fi;

                if
                :: (msg_p1 == HB) -> skip

                :: (msg_p1 == 0) ->
                   if
                   :: (LOG(id, 0) != msg_term) ->
                      LOG(id, 0) = msg_term;
                      LOG(id, 1) = 0
                   :: else -> skip
                   fi;
                   if
                   :: (msg_p3 >= 1) && (commitIndex[id] < 1) ->
                      commitIndex[id] = 1
                   :: else -> skip
                   fi;
                   net_send(msg_from, AppendOk, id, currentTerm, 0, 0, 0)

                :: (msg_p1 == 1) ->
                   if
                   :: (LOG(id, 0) != 0) && (LOG(id, 0) == msg_p2) ->
                      LOG(id, 1) = msg_term;
                      if
                      :: (msg_p3 > commitIndex[id]) ->
                         commitIndex[id] = msg_p3
                      :: else -> skip
                      fi;
                      net_send(msg_from, AppendOk, id, currentTerm, 1, 0, 0)
                   :: else ->
                      net_send(msg_from, AppendFail, id, currentTerm, 0, 0, 0)
                   fi
                fi

             :: else ->
                net_send(msg_from, AppendFail, id, currentTerm, 0, 0, 0)
             fi

          :: (msg_type == VoteDenied) ->
             if :: (msg_term > currentTerm) -> currentTerm = msg_term
                :: else -> skip
             fi

          :: else -> skip
          fi;
          clear_msg()

       :: (currentTerm < MAX_TERM) ->
          currentTerm++;
          votedFor = id;
          votesRcv = 1;
          state    = CANDIDATE;
          last_log(id, myLastIdx, myLastTerm);
          atomic {
              i = 0;
              do
              :: (i < N) ->
                 if :: (i != id) ->
                       net_send(i, RequestVote, id, currentTerm,
                                myLastIdx, myLastTerm, 0)
                    :: else -> skip
                 fi;
                 i++
              :: (i >= N) -> break
              od
          }

       :: true -> skip

       fi

    :: (state == CANDIDATE) ->
       if

       :: nempty(inbox[id]) ->
          inbox[id] ? msg_type, msg_from, msg_term, msg_p1, msg_p2, msg_p3;

          if
          :: (msg_type == VoteGranted) && (msg_term == currentTerm) ->
             votesRcv++;
             if
             :: (votesRcv > N / 2) ->
                state    = LEADER;
                ae_count = 0;
                leader_count[currentTerm]++
             :: else -> skip
             fi

          :: (msg_type == VoteDenied) && (msg_term > currentTerm) ->
             state = FOLLOWER; currentTerm = msg_term; votedFor = NOVOTE

          :: (msg_type == AppendEntries) && (msg_term >= currentTerm) ->
             state = FOLLOWER; currentTerm = msg_term; votedFor = NOVOTE

          :: (msg_type == RequestVote) && (msg_term > currentTerm) ->
             state = FOLLOWER; currentTerm = msg_term; votedFor = NOVOTE

          :: (msg_type == AppendFail) && (msg_term > currentTerm) ->
             state = FOLLOWER; currentTerm = msg_term; votedFor = NOVOTE

          :: else -> skip
          fi;
          clear_msg()

       :: true -> skip

       fi

    :: (state == LEADER) ->
       if

       :: (ae_count < MAX_AE) ->
          atomic {
              i = 0;
              do
              :: (i < N) ->
                 if
                 :: (i != id) ->
                    if
                    :: net_send(i, AppendEntries, id, currentTerm,
                                HB, 0, commitIndex[id])
                    :: (LOG(id, 0) == currentTerm) ->
                       net_send(i, AppendEntries, id, currentTerm,
                                0, 0, commitIndex[id])
                    :: (LOG(id, 1) == currentTerm) ->
                       net_send(i, AppendEntries, id, currentTerm,
                                1, LOG(id, 0), commitIndex[id])
                    fi
                 :: else -> skip
                 fi;
                 i++
              :: (i >= N) -> break
              od
          };
          ae_count++

       :: (LOG(id, MAX_LOG - 1) == 0) ->
          if
          :: (LOG(id, 0) == 0) -> LOG(id, 0) = currentTerm
          :: else              -> LOG(id, 1) = currentTerm
          fi

       :: nempty(inbox[id]) ->
          inbox[id] ? msg_type, msg_from, msg_term, msg_p1, msg_p2, msg_p3;
          if
          :: (msg_term > currentTerm) ->
             leader_count[currentTerm]--;
             state       = FOLLOWER;
             currentTerm = msg_term;
             votedFor    = NOVOTE

          :: (msg_type == AppendOk) && (msg_term == currentTerm) ->
             if
             :: (msg_p1 + 1 > commitIndex[id]) ->
                commitIndex[id] = msg_p1 + 1
             :: else -> skip
             fi

          :: else -> skip
          fi;
          clear_msg()

       :: true -> skip

       fi

    od
}

init {
    byte i = 0;
    atomic {
        do
        :: (i < N) -> run Node(i); i++
        :: (i >= N) -> break
        od
    }
}

ltl safety_one_leader {
    [] (  leader_count[0] <= 1
       && leader_count[1] <= 1
       && leader_count[2] <= 1
       && leader_count[3] <= 1
       && leader_count[4] <= 1

       )
}

ltl log_matching {
    [] (  ((LOG(0,1) != 0 && LOG(0,1) == LOG(1,1)) -> (LOG(0,0) == LOG(1,0)))
       && ((LOG(0,1) != 0 && LOG(0,1) == LOG(2,1)) -> (LOG(0,0) == LOG(2,0)))
       && ((LOG(1,1) != 0 && LOG(1,1) == LOG(2,1)) -> (LOG(1,0) == LOG(2,0)))

       )
}

ltl liveness_eventually_leader {
    <> (   leader_count[1] >= 1
        || leader_count[2] >= 1
        || leader_count[3] >= 1
        || leader_count[4] >= 1
        || leader_count[5] >= 1
        || leader_count[6] >= 1
        || leader_count[7] >= 1
        || leader_count[8] >= 1
        || leader_count[9] >= 1
        || leader_count[10] >= 1
        || leader_count[11] >= 1
        || leader_count[12] >= 1
        || leader_count[13] >= 1
        || leader_count[14] >= 1
        || leader_count[15] >= 1
        || leader_count[16] >= 1

        )
}

