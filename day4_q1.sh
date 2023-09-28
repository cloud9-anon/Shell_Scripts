#!/bin/bash

# Get username
username=$(whoami)

# Get current date & time
current_datetime=$(date +"%Y-%m-%d %H:%M:%S")

# Get current directory
current_directory=$(pwd)

# Print the information
echo "Username: $username"
echo "Date & Time: $current_datetime"
echo "Current Directory: $current_directory
