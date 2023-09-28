#!/bin/bash

# Accept a number from the user
read -p "Enter a number: " number

# Initialize factorial
factorial=1

# Calculate factorial
while [ "$number" -gt 1 ]; do
    factorial=$((factorial * number))
    number=$((number - 1))
done

echo "Factorial: $factorial"
