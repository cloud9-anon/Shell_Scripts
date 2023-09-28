#!/bin/bash

while true; do
    echo -e "\nMenu\n--------------\n1: Addition\n2: Subtraction\n3: Multiplication\n4: Division\n5: Exit"
    read -p "Enter your choice (1-5): " choice

    case $choice in
        1)
            read -p "Enter first number: " num1
            read -p "Enter second number: " num2
            result=$((num1 + num2))
            echo "Result: $result"
            ;;
        2)
            read -p "Enter first number: " num1
            read -p "Enter second number: " num2
            result=$((num1 - num2))
            echo "Result: $result"
            ;;
        3)
            read -p "Enter first number: " num1
            read -p "Enter second number: " num2
            result=$((num1 * num2))
            echo "Result: $result"
            ;;
        4)
            read -p "Enter dividend: " num1
            read -p "Enter divisor: " num2
            if [ "$num2" -eq 0 ]; then
                echo "Error: Division by zero is not allowed."
            else
                result=$(awk "BEGIN {printf \"%.2f\", $num1 / $num2}")
                echo "Result: $result"
            fi
            ;;
        5)
            echo "Exiting the program."
            exit 0
            ;;
        *)
            echo "Invalid choice. Please enter a number between 1 and 5."
            ;;
    esac
done
