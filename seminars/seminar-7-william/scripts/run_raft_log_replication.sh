#!/bin/bash
echo "=== RAFT LOG REPLICATION ==="

cd ../examples

spin -a -DMAX_TERM=4 -DMAX_AE=1 raft_log_replication.pml

gcc -O2 -DCOLLAPSE -DMEMLIM=12096 -o pan pan.c

echo -e "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n" >> ../results/results_run_raft_log_replication.txt


for prop in safety_one_leader log_matching; do

    echo ""
    echo -e "\n\n\n\n\n--- proprieta': $prop ---" >> ../results/results_run_raft_log_replication.txt
    ./pan -a -m1000000 -w26 -N $prop >> ../results/results_run_raft_log_replication.txt 2>&1
done
