#!/bin/bash
echo "=== PLC ==="

cd ../examples

spin -a deadlock.plcCommented.pml

gcc -o pan pan.c

./pan -m100000
