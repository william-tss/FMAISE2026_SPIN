#!/bin/bash
cd ../examples

spin -DMIN_VAL=20 -a tsp4_optimized.pml

gcc -o pan pan.c

./pan 

