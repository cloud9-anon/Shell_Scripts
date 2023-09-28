#!/bin/bash

# Accept the first name, middle name, and last name
read -p "Enter your first name: " fname
read -p "Enter your middle name: " mname
read -p "Enter your last name: " lname

# Greet the person using the full name
echo "Hello, $fname $mname $lname! Nice to meet you."
