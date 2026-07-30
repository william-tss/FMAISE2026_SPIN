#!/bin/bash
echo "=== RAFT TIMED - LIVENESS ==="

cd ../examples

spin -a -DMAX_TERM=16 raft_timed.pml

gcc -O2 -DNFAIR=3 -o pan pan.c

echo -e "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n" >> ../results/results_run_raft_timed_liveness.txt

./pan -a -f -N liveness_eventually_leader >> ../results/results_run_raft_timed_liveness.txt 2>&1
