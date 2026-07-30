#!/bin/bash
echo "=== RAFT TIMED ==="

cd ../examples

spin -a -DMAX_TERM=3 raft_timed.pml

gcc -O2 -o pan pan.c

./pan -a 
