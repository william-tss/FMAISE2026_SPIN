local bit vv[4]         /* Global variable */
local int cost;         /* Global variable */

active proctype TSP(){
    vv[0] = 1;          /* The tour starts from P0 */

    P0: atomic {
        if 
        :: !vv[1] -> cost = cost+7; goto P1
        :: !vv[2] -> cost = cost+9; goto P2
        :: !vv[3] -> cost = cost+2; goto P3
        fi
    } 

    P1: atomic {
        vv[1] = 1;
        if 
        :: !vv[2] -> cost = cost+3; goto P2
        :: !vv[3] -> cost = cost+7; goto P3
        :: else   -> cost = cost+4; goto end
        fi
    } 

    P2: atomic {
        vv[2] = 1;
        if 
        :: !vv[1] -> cost = cost+7; goto P1
        :: !vv[3] -> cost = cost+8; goto P3
        :: else   -> cost = cost+6; goto end
        fi
    } 

    P3: atomic {
        vv[3] = 1;
        if 
        :: !vv[1] -> cost = cost+3; goto P1
        :: !vv[2] -> cost = cost+8; goto P2
        :: else   -> cost = cost+2; goto end
        fi
    } 
    end:
        c_code {
            printf("#############\nfound another solution: %d\n############\n", now.cost);
        };
}



#ifndef MIN_VAL
#define MIN_VAL 1000
#endif 

ltl check_opt { <> (cost >= MIN_VAL) }
