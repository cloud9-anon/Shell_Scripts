#!/bin/bash
echo "Directories in the current directory:"
ls -l | grep '^d' | awk '{print $9}'
echo "Count of directories: $(ls -l | grep -c '^d')"
exit 0
