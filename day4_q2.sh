#!/bin/bash

# Accept a number from the user
read -p "Enter a number: " number

# Initialize sum
sum=0

# Loop through each digit and add to the sum
while [ "$number" -gt 0 ]; do
    digit=$((number % 10))
    sum=$((sum + digit))
    number=$((number / 10))
done

echo "Sum of the digits: $sum"
