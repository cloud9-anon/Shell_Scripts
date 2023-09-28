#!/bin/bash

# Initialize the counter
counter=5

# Use a while loop to print numbers in descending order
while [ "$counter" -gt 0 ]; do
    echo "$counter"
    counter=$((counter - 1))
done
