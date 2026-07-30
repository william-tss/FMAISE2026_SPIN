#!/bin/bash
echo "=== RAFT TIMED + CRASHES - LIVENESS ==="

cd ../examples

spin -a -DMAX_TERM=31 -DMAX_TIME=8 -DCRASH_LEADER_ONLY raft_timed_crashes.pml

gcc -O2 -DCOLLAPSE -DNFAIR=3 -o pan pan.c

echo -e "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n" >> ../results/results_run_raft_timed_crashes_liveness.txt

./pan -a -f -N liveness_eventually_leader >> ../results/results_run_raft_timed_crashes_liveness.txt 2>&1
