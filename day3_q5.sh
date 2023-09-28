#!/bin/bash

# Accept the weight of the person
read -p "Enter your weight in Kgs: " weight

# Check if the weight is within the range
if [ "$weight" -ge 30 ] && [ "$weight" -le 250 ]; then
    echo "Welcome to MBT Health Club! You are accepted as a member."
else
    echo "Sorry, your weight is not within the acceptable range for MBT Health Club."
fi
