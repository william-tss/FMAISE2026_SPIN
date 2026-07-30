

#define N           3
#ifndef MAX_TERM
#define MAX_TERM    1
#endif
#define BUF_SIZE    1
#define MAX_HB      2
#define MAX_CRASHES 1

#define FOLLOWER  0
#define CANDIDATE 1
#define LEADER    2
#define CRASHED   3

mtype = { RequestVote, VoteGranted, VoteDenied, AppendEntries }

chan inbox[N] = [BUF_SIZE] of { mtype, byte, byte, byte }

byte leader_count[MAX_TERM+1]

byte crash_count = 0

#define LOG_PRI(nid)  ((nid) + 1)

inline net_send(dest, mtyp, frm, trm, lp) {
    if
    :: nfull(inbox[dest]) -> inbox[dest] ! mtyp, frm, trm, lp
    :: skip
    fi
}

inline clear_msg() {
    msg_type   = RequestVote;
    msg_from   = 0;
    msg_term   = 0;
    msg_logPri = 0;
}

inline do_crash(decr_lc) {
    atomic {
        if :: (decr_lc == 1) -> leader_count[currentTerm]--
           :: else            -> skip
        fi;
        crash_count++;
        state = CRASHED;

        if :: nempty(inbox[id]) ->
                 inbox[id] ? msg_type, msg_from, msg_term, msg_logPri
           :: true -> skip
        fi;

        clear_msg();
        votesRcv = 0;
        hb_count = 0
    }
}

proctype Node(byte id) {

    byte state       = FOLLOWER;
    byte currentTerm = 0;
    byte votedFor    = 255;
    byte votesRcv    = 0;
    byte hb_count    = 0;

    mtype msg_type;
    byte  msg_from;
    byte  msg_term;
    byte  msg_logPri;

    byte i;

    do

    :: (state == FOLLOWER) ->
       if

       :: nempty(inbox[id]) ->
          inbox[id] ? msg_type, msg_from, msg_term, msg_logPri;

          if
          :: (msg_type == RequestVote) ->
             if
             :: (msg_term   >= currentTerm)  &&
                (msg_logPri >= LOG_PRI(id))  &&
                ((votedFor == 255) || (votedFor == msg_from)) ->
                currentTerm = msg_term;
                votedFor    = msg_from;
                net_send(msg_from, VoteGranted, id, currentTerm, 0)
             :: else ->
                if :: (msg_term > currentTerm) -> currentTerm = msg_term
                   :: else -> skip
                fi;
                net_send(msg_from, VoteDenied, id, currentTerm, 0)
             fi

          :: (msg_type == AppendEntries) ->
             if
             :: (msg_term > currentTerm) ->
                currentTerm = msg_term;
                votedFor    = 255
             :: (msg_term == currentTerm) -> skip
             :: else -> skip
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
          atomic {
              i = 0;
              do
              :: (i < N) ->
                 if :: (i != id) ->
                       net_send(i, RequestVote, id, currentTerm, LOG_PRI(id))
                    :: else -> skip
                 fi;
                 i++
              :: (i >= N) -> break
              od
          }

       :: empty(inbox[id]) && (currentTerm >= MAX_TERM) ->
          if
          :: skip
          :: (crash_count < MAX_CRASHES) -> do_crash(0)
          fi

       fi

    :: (state == CANDIDATE) ->
       if

       :: nempty(inbox[id]) ->
          inbox[id] ? msg_type, msg_from, msg_term, msg_logPri;

          if
          :: (msg_type == VoteGranted) && (msg_term == currentTerm) ->
             votesRcv++;
             if
             :: (votesRcv > N / 2) ->
                state    = LEADER;
                hb_count = 0;
                votesRcv = 0;
                leader_count[currentTerm]++
             :: else -> skip
             fi

          :: (msg_type == VoteDenied) ->
             if :: (msg_term > currentTerm) ->
                   state        = FOLLOWER;
                   currentTerm  = msg_term;
                   votedFor     = 255;
                   votesRcv     = 0
                :: else -> skip
             fi

          :: (msg_type == AppendEntries) && (msg_term >= currentTerm) ->
             state        = FOLLOWER;
             currentTerm  = msg_term;
             votedFor     = 255;
             votesRcv     = 0

          :: (msg_type == RequestVote) && (msg_term > currentTerm) ->
             state        = FOLLOWER;
             currentTerm  = msg_term;
             votedFor     = 255;
             votesRcv     = 0

          :: else -> skip
          fi;
          clear_msg()

       :: empty(inbox[id]) ->
          if
          :: skip
          :: (crash_count < MAX_CRASHES) -> do_crash(0)
          fi

       fi

    :: (state == LEADER) ->
       if

       :: (hb_count < MAX_HB) ->
          atomic {
              i = 0;
              do
              :: (i < N) ->
                 if :: (i != id) ->
                       net_send(i, AppendEntries, id, currentTerm, 0)
                    :: else -> skip
                 fi;
                 i++
              :: (i >= N) -> break
              od
          };
          hb_count++

       :: nempty(inbox[id]) ->
          inbox[id] ? msg_type, msg_from, msg_term, msg_logPri;
          if
          :: (msg_term > currentTerm) ->
             leader_count[currentTerm]--;
             state        = FOLLOWER;
             currentTerm  = msg_term;
             votedFor     = 255;
             hb_count     = 0
          :: else -> skip
          fi;
          clear_msg()

       :: (hb_count >= MAX_HB) && empty(inbox[id]) ->
          if
          :: skip
          :: (crash_count < MAX_CRASHES) -> do_crash(1)
          fi

       fi

    :: (state == CRASHED) ->
       if
       :: atomic {

              votesRcv = 0;
              hb_count = 0;

              state = FOLLOWER
          }
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
       && leader_count[5] <= 1

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

