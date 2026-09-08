#!/bin/bash

threshold=80
usage=$(df -h / | tail -1 | awk '{print $5}' | tr -d '%')

echo "Current disk usage: ${usage}%"

if [ "$usage" -gt "$threshold" ]; then
    echo "WARNING: Disk usage is above ${threshold}%!"
    echo "Action needed: Clean up files"
else
    echo "OK: Disk usage is within safe limits"
fi
