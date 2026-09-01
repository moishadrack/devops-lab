#!/bin/bash

current_date=$(date +%Y-%m-%d)
user=$(whoami)
ip=$(hostname -I | awk '{print $1}')
disk=$(df -h / | tail -1 | awk '{print $4}')

echo "=== System Report ==="
echo "Date: $current_date"
echo "User: $user"
echo "IP Address: $ip"
echo "Free Disk Space: $disk"
