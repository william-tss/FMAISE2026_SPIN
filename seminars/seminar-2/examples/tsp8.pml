local bit vv[8];        /* Array per tracciare le 8 città visitate */
local int cost;         /* Costo totale del tour accumulato finora */

active proctype TSP(){
    vv[0] = 1;          /* Il tour inizia dalla città 0 (P0) */

    P0: atomic {
        if 
        :: !vv[1] -> cost = cost+7; goto P1
        :: !vv[2] -> cost = cost+9; goto P2
        :: !vv[3] -> cost = cost+2; goto P3
        :: !vv[4] -> cost = cost+5; goto P4
        :: !vv[5] -> cost = cost+8; goto P5
        :: !vv[6] -> cost = cost+4; goto P6
        :: !vv[7] -> cost = cost+6; goto P7
        fi
    } 

    P1: atomic {
        vv[1] = 1;
        if 
        :: !vv[2] -> cost = cost+3; goto P2
        :: !vv[3] -> cost = cost+7; goto P3
        :: !vv[4] -> cost = cost+6; goto P4
        :: !vv[5] -> cost = cost+1; goto P5
        :: !vv[6] -> cost = cost+9; goto P6
        :: !vv[7] -> cost = cost+2; goto P7
        :: else   -> cost = cost+4; goto end /* Ritorno a P0 */
        fi
    } 

    P2: atomic {
        vv[2] = 1;
        if 
        :: !vv[1] -> cost = cost+7; goto P1
        :: !vv[3] -> cost = cost+8; goto P3
        :: !vv[4] -> cost = cost+2; goto P4
        :: !vv[5] -> cost = cost+4; goto P5
        :: !vv[6] -> cost = cost+3; goto P6
        :: !vv[7] -> cost = cost+5; goto P7
        :: else   -> cost = cost+6; goto end /* Ritorno a P0 */
        fi
    } 

    P3: atomic {
        vv[3] = 1;
        if 
        :: !vv[1] -> cost = cost+3; goto P1
        :: !vv[2] -> cost = cost+8; goto P2
        :: !vv[4] -> cost = cost+9; goto P4
        :: !vv[5] -> cost = cost+5; goto P5
        :: !vv[6] -> cost = cost+7; goto P6
        :: !vv[7] -> cost = cost+1; goto P7
        :: else   -> cost = cost+2; goto end /* Ritorno a P0 */
        fi
    } 

    P4: atomic {
        vv[4] = 1;
        if 
        :: !vv[1] -> cost = cost+6; goto P1
        :: !vv[2] -> cost = cost+2; goto P2
        :: !vv[3] -> cost = cost+9; goto P3
        :: !vv[5] -> cost = cost+3; goto P5
        :: !vv[6] -> cost = cost+8; goto P6
        :: !vv[7] -> cost = cost+4; goto P7
        :: else   -> cost = cost+5; goto end /* Ritorno a P0 */
        fi
    }

    P5: atomic {
        vv[5] = 1;
        if 
        :: !vv[1] -> cost = cost+1; goto P1
        :: !vv[2] -> cost = cost+4; goto P2
        :: !vv[3] -> cost = cost+5; goto P3
        :: !vv[4] -> cost = cost+3; goto P4
        :: !vv[6] -> cost = cost+2; goto P6
        :: !vv[7] -> cost = cost+7; goto P7
        :: else   -> cost = cost+8; goto end /* Ritorno a P0 */
        fi
    }

    P6: atomic {
        vv[6] = 1;
        if 
        :: !vv[1] -> cost = cost+9; goto P1
        :: !vv[2] -> cost = cost+3; goto P2
        :: !vv[3] -> cost = cost+7; goto P3
        :: !vv[4] -> cost = cost+8; goto P4
        :: !vv[5] -> cost = cost+2; goto P5
        :: !vv[7] -> cost = cost+5; goto P7
        :: else   -> cost = cost+4; goto end /* Ritorno a P0 */
        fi
    }

    P7: atomic {
        vv[7] = 1;
        if 
        :: !vv[1] -> cost = cost+2; goto P1
        :: !vv[2] -> cost = cost+5; goto P2
        :: !vv[3] -> cost = cost+1; goto P3
        :: !vv[4] -> cost = cost+4; goto P4
        :: !vv[5] -> cost = cost+7; goto P5
        :: !vv[6] -> cost = cost+5; goto P6
        :: else   -> cost = cost+6; goto end /* Ritorno a P0 */
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
