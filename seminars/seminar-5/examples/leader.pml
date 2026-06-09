#define N 10                         /* number of noodes */
mtype = { election, winner };       /* type of messages */
chan q[N] = [N] of { mtype, byte }; /* channel (msg, node_ID)*/
byte nr_leaders = 0;                /* counter */



/*
    NODE (ID, pos)
*/
proctype node(byte my_id; byte my_pos) {    
    byte neighbor_id;
    byte next_chan = (my_pos + 1) % N;      /* index for the next node */
    q[next_chan] ! election, my_id;         /* sends an election message to its next node */
    do
    :: q[my_pos] ? election, neighbor_id -> /* listening for election messages */
        if
        :: neighbor_id == my_id ->          /* if its election vote comes back, it wons. */
            nr_leaders++;                   /* increase number of leaders */
            q[next_chan] ! winner, my_id;   /* votes for its win */
            break;                          
        :: neighbor_id > my_id ->           /* it received a vote from a greater node */
            q[next_chan] ! election, neighbor_id; /* votes for the election of that node */
        :: neighbor_id < my_id -> 
            skip;
        fi;
    :: q[my_pos] ? winner, neighbor_id ->   /* listening for winner messages */
        if
        :: neighbor_id != my_id ->          /* receive a winner message */
            q[next_chan] ! winner, neighbor_id; /* passes the message to the next node*/
        fi;
        break;
    od;
}




init {
    byte proc = 0;
    atomic {            /* creates all the nodes in an atomic way */
        do
        :: proc < N ->
            run node(N - proc, proc); 
            proc++;
        :: proc == N -> break;
        od;
    }
    
    _nr_pr == 1;        /* number of live processes */
    assert(nr_leaders == 1);
}
