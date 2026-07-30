#!/bin/bash
echo "=== RAFT CRASHES - LIVENESS ==="

cd ../examples

spin -a -DMAX_TERM=16 raft_le_with_crashes.pml

gcc -O2 -o pan pan.c

echo -e "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n" >> ../results/results_run_raft_le_with_crashes_liveness.txt

./pan -a -f -N liveness_eventually_leader >> ../results/results_run_raft_le_with_crashes_liveness.txt 2>&1


