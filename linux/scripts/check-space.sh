#!/bin/bash

free_space=$(df -h / | tail -1 | awk '{print $4}' | tr -d 'G')

if [ "$free_space" -gt 100 ]; then
    echo "Good: $free_space GB free - plenty of space"
else
    echo "Warning: $free_space GB free - low on space"
fi
