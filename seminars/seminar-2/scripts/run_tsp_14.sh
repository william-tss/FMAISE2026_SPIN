#!/bin/bash
echo "=== Paths with cost less than  14 ==="

cd ../examples

spin -DMIN_VAL=14 -a tsp4.pml

gcc -o pan pan.c

./pan -a

echo "--- Fine Verifica ---"
