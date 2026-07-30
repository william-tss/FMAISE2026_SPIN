#!/bin/bash
echo "=== RAFT TIMED + CRASHES ==="

cd ../examples


spin -a -DMAX_TERM=3 -DMAX_TIME=12 -DCRASH_LEADER_ONLY raft_timed_crashes.pml

gcc -O2 -DCOLLAPSE -DMEMLIM=14000 -o pan pan.c

echo -e "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n" >> ../results/results_run_raft_timed_crashes.txt


./pan -a -m1000000 -w26 -N safety_one_leader >> ../results/results_run_raft_timed_crashes.txt 2>&1
