#!/bin/bash

# Check if the number of arguments is correct
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 'expression' (e.g., $0 '2+3' or $0 '5*4')"
    exit 1
fi

# Extract the operator and numbers from the argument
expression="$1"
operator="${expression//[0-9]/}"
num1=$(echo "$expression" | awk -F"$operator" '{print $1}')
num2=$(echo "$expression" | awk -F"$operator" '{print $2}')

# Perform calculation based on the operator
case $operator in
    +)
        result=$((num1 + num2))
        echo "Result: $result"
        ;;
    -)
        result=$((num1 - num2))
        echo "Result: $result"
        ;;
    \*)
        result=$((num1 * num2))
        echo "Result: $result"
        ;;
    /)
        if [ "$num2" -eq 0 ]; then
            echo "Error: Division by zero is not allowed."
        else
            result=$(awk "BEGIN {printf \"%.2f\", $num1 / $num2}")
            echo "Result: $result"
        fi
        ;;
    *)
        echo "Invalid operator. Supported operators are +, -, *, /."
        ;;
esac
