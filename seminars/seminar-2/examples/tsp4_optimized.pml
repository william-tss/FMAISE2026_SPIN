/* 
 * TSP (Traveling Salesman Problem) - Optimised Version with Branch & Bound
 * Based on advanced SPIN C-code embeddings.
 */

/* Global Promela variables */
bit vv[4];      /* Visited cities array */
int cost = 0;   /* Current cost of the tour */

/* 
 * (1) DECLARATION PART
 * Declare a hidden C variable to store the absolute minimum cost found so far.
 * "Hidden" means it is NOT stored in the Promela state vector, preventing 
 * state-space explosion, but it remains accessible globally during verification.
 */
c_state "int min_cost" "Hidden" "1000"

active proctype TSP() {
    /* Start the tour at city 0 */
    vv[0] = 1;

P0: atomic {
        /* 
         * SIMPLE OPTIMIZATION (Branch & Bound):
         * Check if the current cost already exceeds or equals the best known cost.
         * If so, prune this search branch by jumping to the end.
         */
        if
        :: c_expr { now.cost >= min_cost } -> goto end
        :: else
        fi;

        if
        :: !vv[1] -> cost = cost + 7; goto P1
        :: !vv[2] -> cost = cost + 9; goto P2
        :: !vv[3] -> cost = cost + 2; goto P3
        fi
    }

P1: atomic {
        vv[1] = 1;
        
        /* Pruning check */
        if
        :: c_expr { now.cost >= min_cost } -> goto end
        :: else
        fi;

        if
        :: !vv[2] -> cost = cost + 3; goto P2
        :: !vv[3] -> cost = cost + 7; goto P3
        :: else   -> cost = cost + 4; goto end /* Return to P0 costs 4 */
        fi
    }

P2: atomic {
        vv[2] = 1;
        
        /* Pruning check */
        if
        :: c_expr { now.cost >= min_cost } -> goto end
        :: else
        fi;

        if
        :: !vv[1] -> cost = cost + 7; goto P1
        :: !vv[3] -> cost = cost + 8; goto P3
        :: else   -> cost = cost + 6; goto end /* Return to P0 costs 6 */
        fi
    }

P3: atomic {
        vv[3] = 1;
        
        /* Pruning check */
        if
        :: c_expr { now.cost >= min_cost } -> goto end
        :: else
        fi;

        if
        :: !vv[1] -> cost = cost + 3; goto P1
        :: !vv[2] -> cost = cost + 8; goto P2
        :: else   -> cost = cost + 2; goto end /* Return to P0 costs 2 */
        fi
    }

end:
    /* 
     * (2) END LABEL (Evaluation)
     * If we reach this point, either a full tour is completed or the path was pruned.
     * We use a raw C-code block to check the actual result.
     */
    c_code {
        /* In C, global Promela variables are accessed via the 'now' struct */
        if (now.cost < min_cost) {
            min_cost = now.cost;
            printf("> min cost now: %d\n", min_cost);
            
            /* Tell SPIN to write the counterexample trail dynamically */
            putrail();
            
            /* Decrement trail counter so SPIN overwrites the previous worst trail, 
               keeping ONLY the absolute best one at the end of the run */
            Nr_Trails--; 
        }
    }
}
