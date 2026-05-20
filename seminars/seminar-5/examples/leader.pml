#define N 8
mtype = { election, winner };
chan q[N] = [N] of { mtype, byte };
byte nr_leaders = 0; 
proctype node(byte my_id; byte my_pos) {
    byte neighbor_id;
    byte next_chan = (my_pos + 1) % N;
    q[next_chan] ! election, my_id;
    do
    :: q[my_pos] ? election, neighbor_id ->
        if
        :: neighbor_id == my_id -> 
            nr_leaders++;
            q[next_chan] ! winner, my_id;
            break;
        :: neighbor_id > my_id -> 
            q[next_chan] ! election, neighbor_id;
        :: neighbor_id < my_id -> 
            skip;
        fi;
    :: q[my_pos] ? winner, neighbor_id ->
        if
        :: neighbor_id != my_id ->
            q[next_chan] ! winner, neighbor_id;
        fi;
        break;
    od;
}
init {
    byte proc = 0;
    atomic {
        do
        :: proc < N ->
            run node(N - proc, proc); 
            proc++;
        :: proc == N -> break;
        od;
    }
    
    _nr_pr == 1; 
    assert(nr_leaders == 1);
}
