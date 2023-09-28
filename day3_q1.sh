#!/bin/bash

# Number of rows
rows=4

# Outer loop for the number of rows
for ((i=1; i<=rows; i++)); do
    # Inner loop for printing '*' based on the current row
    for ((j=1; j<=i; j++)); do
        echo -n "*"
    done
   
    echo ""
done


