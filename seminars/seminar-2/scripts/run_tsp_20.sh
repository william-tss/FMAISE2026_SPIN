#!/bin/bash
echo "=== Paths with cost less than  20 ==="

cd ../examples

spin -DMIN_VAL=20 -a tsp4.pml

gcc -o pan pan.c

./pan -a

echo "--- Last state of the counterexample ---"
spin -t tsp4.pml | grep "cost =" | tail -n 1
