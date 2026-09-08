#!/bin/bash

source="/mnt/d/devops-lab/linux/scripts"
destination="/mnt/d/devops-lab/linux/backup"
timestamp=$(date +%Y-%m-%d_%H-%M-%S)
backup_name="backup-$timestamp.tar.gz"

mkdir -p "$destination"
tar -czf "$destination/$backup_name" "$source"

echo "Backup completed: $backup_name"
echo "Saved to: $destination"
