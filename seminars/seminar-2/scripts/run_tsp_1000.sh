#!/bin/bash
echo "=== Paths with cost less than 1000 ==="

cd ../examples

spin -DMIN_VAL=1000 -a tsp4.pml

gcc -o pan pan.c

./pan -a

echo "--- Last state of the counterexample ---"
spin -t tsp4.pml | grep "cost =" | tail -n 1
