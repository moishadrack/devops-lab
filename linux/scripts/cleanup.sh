#!/bin/bash

folder="/mnt/d/devops-lab/linux/backup"
days=7

echo "Cleaning files older than $days days in $folder..."
find "$folder" -type f -mtime +$days -delete
echo "Cleanup done"
