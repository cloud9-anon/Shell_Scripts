#!/bin/bash

# Accept three numbers from the command line
num1=$1
num2=$2
num3=$3

# Find the largest number
largest=$num1

if [ $num2 -gt $largest ]; then
    largest=$num2
fi

if [ $num3 -gt $largest ]; then
    largest=$num3
fi

echo "The largest number is: $largest"
