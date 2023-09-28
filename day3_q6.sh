#!/bin/bash

# Get the current hour
hour=$(date +"%H")

# Greet the user based on the time of the day
if [ "$hour" -ge 5 ] && [ "$hour" -lt 12 ]; then
    echo "Good morning! Have a great day, user."
elif [ "$hour" -ge 12 ] && [ "$hour" -lt 18 ]; then
    echo "Good afternoon! Hope you're having a good day, user."
else
    echo "Good evening! Wishing you a pleasant evening, user."
fi
