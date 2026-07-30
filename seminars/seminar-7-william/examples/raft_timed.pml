

#define N        3
#ifndef MAX_TERM
#define MAX_TERM 3
#endif
#define BUF_SIZE 1
#define MAX_HB   2

#define T_SHORT  2
#define T_LONG   3
#define T_HB     1
#define MAX_TIME 12

#define FOLLOWER  0
#define CANDIDATE 1
#define LEADER    2

mtype = { RequestVote, VoteGranted, VoteDenied, AppendEntries }

chan inbox[N] = [BUF_SIZE] of { mtype, byte, byte, byte }

byte leader_count[MAX_TERM+1]

#define OFF 255

short now = 0;
short elect_deadline[N];
short hb_deadline[N];

#define LOG_PRI(nid)  ((nid) + 1)

inline net_send(dest, mtyp, frm, trm, lp) {
    if
    :: nfull(inbox[dest]) -> inbox[dest] ! mtyp, frm, trm, lp
    :: skip
    fi
}

inline arm_election_timer(id) {
    if
    :: elect_deadline[id] = now + T_SHORT
    :: elect_deadline[id] = now + T_LONG
    fi
}

inline clear_msg() {
    msg_type   = RequestVote;
    msg_from   = 0;
    msg_term   = 0;
    msg_logPri = 0;
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

    arm_election_timer(id);
    hb_deadline[id] = OFF;

    do

    :: (state == FOLLOWER) ->
       if

       :: nempty(inbox[id]) ->
          inbox[id] ? msg_type, msg_from, msg_term, msg_logPri;

          if
          :: (msg_type == RequestVote) ->
             if
             :: (msg_term >= currentTerm) && (msg_logPri >= LOG_PRI(id)) && ((votedFor == 255) || (votedFor == msg_from)) ->
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
             :: (msg_term >= currentTerm) ->

                if :: (msg_term > currentTerm) ->
                      currentTerm = msg_term;
                      votedFor    = 255
                   :: else -> skip
                fi;
                arm_election_timer(id)
             :: else -> skip
             fi

          :: (msg_type == VoteDenied) ->
             if :: (msg_term > currentTerm) -> currentTerm = msg_term
                :: else -> skip
             fi

          :: else -> skip
          fi;
          clear_msg()

       :: (now >= elect_deadline[id]) && (currentTerm < MAX_TERM) ->
          currentTerm++;
          votedFor = id;
          votesRcv = 1;
          state    = CANDIDATE;
          arm_election_timer(id);
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

       :: true -> skip

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
                hb_deadline[id]    = now + T_HB;
                elect_deadline[id] = OFF;
                leader_count[currentTerm]++
             :: else -> skip
             fi

          :: (msg_type == VoteDenied) ->
             if :: (msg_term > currentTerm) ->
                   state        = FOLLOWER;
                   currentTerm  = msg_term;
                   votedFor     = 255;
                   votesRcv     = 0;
                   arm_election_timer(id)
                :: else -> skip
             fi

          :: (msg_type == AppendEntries) && (msg_term >= currentTerm) ->

             state        = FOLLOWER;
             currentTerm  = msg_term;
             votedFor     = 255;
             votesRcv     = 0;
             arm_election_timer(id)

          :: (msg_type == RequestVote) && (msg_term > currentTerm) ->
             state        = FOLLOWER;
             currentTerm  = msg_term;
             votedFor     = 255;
             votesRcv     = 0;
             arm_election_timer(id)

          :: else -> skip
          fi;
          clear_msg()

       :: (now >= elect_deadline[id]) && (currentTerm < MAX_TERM) ->
          currentTerm++;
          votedFor = id;
          votesRcv = 1;
          arm_election_timer(id);
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

       :: true -> skip

       fi

    :: (state == LEADER) ->
       if

       :: (now >= hb_deadline[id]) && (hb_count < MAX_HB) ->
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
          hb_count++;
          hb_deadline[id] = now + T_HB

       :: nempty(inbox[id]) ->
          inbox[id] ? msg_type, msg_from, msg_term, msg_logPri;
          if
          :: (msg_term > currentTerm) ->
             leader_count[currentTerm]--;
             state        = FOLLOWER;
             currentTerm  = msg_term;
             votedFor     = 255;
             hb_count     = 0;
             hb_deadline[id] = OFF;
             arm_election_timer(id)
          :: else -> skip
          fi;
          clear_msg()

       :: true -> skip

       fi

    od
}

#define no_msg(i)        (empty(inbox[i]))
#define elect_pending(i) ((elect_deadline[i] != OFF) && (now >= elect_deadline[i]))
#define hb_pending(i)    ((hb_deadline[i]    != OFF) && (now >= hb_deadline[i]))

#define quiescent(i) (no_msg(i) && !elect_pending(i) && !hb_pending(i))

#define all_quiescent (quiescent(0) && quiescent(1) && quiescent(2))

proctype Advance() {
    short mind;
    byte  k;

    do
    :: atomic {

         all_quiescent && (now < MAX_TIME) ->

         mind = MAX_TIME;
         k = 0;
         do
         :: (k < N) ->
            if :: (elect_deadline[k] != OFF) && (elect_deadline[k] > now) && (elect_deadline[k] < mind) -> mind = elect_deadline[k]
               :: else -> skip
            fi;
            if :: (hb_deadline[k] != OFF) && (hb_deadline[k] > now) && (hb_deadline[k] < mind) -> mind = hb_deadline[k]
               :: else -> skip
            fi;
            k++
         :: (k >= N) -> break
         od;

         now = mind
       }

    :: else -> break
    od
}

init {
    byte i = 0;
    atomic {
        do
        :: (i < N) -> run Node(i); i++
        :: (i >= N) -> break
        od;
        run Advance()
    }
}

ltl safety_one_leader {
    [] (  leader_count[0] <= 1
       && leader_count[1] <= 1
       && leader_count[2] <= 1
       && leader_count[3] <= 1
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

