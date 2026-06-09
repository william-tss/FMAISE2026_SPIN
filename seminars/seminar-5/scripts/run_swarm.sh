#!/bin/bash

cd ../examples

# 1. FULL SEARCH 
echo "=== Esecuzione FULL SEARCH (Exhaustive) ==="
spin -a leader.pml
gcc -DMEMLIM=500 -O2 -w -o pan pan.c
./pan  > results_full.txt
echo "Full search completed" 

# 2. HASH-COMPACT
echo "=== HASH-COMPACT ==="
gcc -DHC -DMEMLIM=500 -O2 -w -o pan pan.c
./pan  > results_hash_compact.txt
echo "Hash-Compact completed"

# 3. BITSTATE SWARM 
echo "=== BITSTATE SWARM (3 run) ==="
gcc -DBITSTATE -DMEMLIM=500 -O2 -w -o pan pan.c 
./pan -w30 -k1  > results_bitstate.txt
for i in {2,20}
do
    echo "------- Run k=-$i ----------" >> results_bitstate.txt
    ./pan -w30 -k$i  >> results_bitstate.txt # w=31 --> hashfactor=203.929, smaller w --> smaller hashfactor --> smaller memory usage
done
echo "Bitstate Swarm completed."

echo "Benchmark ended."
