#!/bin/bash
echo "=== RAFT CRASHES ==="

cd ../examples

spin -a -DMAX_TERM=5 raft_le_with_crashes.pml

gcc -O2 -o pan pan.c

echo -e "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n" >> ../results/results_run_raft_le_with_crashes.txt


./pan -a >> ../results/results_run_raft_le_with_crashes.txt 2>&1
