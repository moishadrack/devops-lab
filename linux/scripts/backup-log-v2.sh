#!/bin/bash

timestamp=$(date +%H:%M:%S)

message="Backup started"
echo "$timestamp - $message" >> /mnt/d/devops-lab/linux/scripts/server.log

sleep 2

message="Backup finished"
echo "$timestamp - $message" >> /mnt/d/devops-lab/linux/scripts/server.log
