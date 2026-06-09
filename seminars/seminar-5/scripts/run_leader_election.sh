#!/bin/bash
echo "=== Leader election ==="

cd ../examples

spin -a leader.pml

gcc -o pan pan.c

./pan -a

echo "--- Fine Verifica ---"
