#!/bin/bash
echo "=== RAFT LOG REPLICATION - LIVENESS ==="

cd ../examples

spin -a -DMAX_TERM=16 -DMAX_AE=1 raft_log_replication.pml

gcc -O2 -DCOLLAPSE -o pan pan.c

echo -e "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n" >> ../results/results_run_raft_log_replication_liveness.txt

./pan -a -f -N liveness_eventually_leader >> ../results/results_run_raft_log_replication_liveness.txt 2>&1
