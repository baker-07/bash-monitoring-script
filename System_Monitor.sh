#!/bin/bash

# Output file
LOG_FILE="/var/log/system_monitor.log"
mkdir -p "$(dirname "$LOG_FILE")"

# Timestamp
echo "=== System Monitoring Report - $(date) ===" >> "$LOG_FILE"

# CPU usage
echo -e "\n>> CPU Load:" >> "$LOG_FILE"
top -b -n1 | grep "Cpu(s)" >> "$LOG_FILE"

# Memory usage
echo -e "\n>> Memory Usage:" >> "$LOG_FILE"
free -h >> "$LOG_FILE"

# Disk usage
echo -e "\n>> Disk Usage:" >> "$LOG_FILE"
df -h >> "$LOG_FILE"

# Uptime
echo -e "\n>> System Uptime:" >> "$LOG_FILE"
uptime >> "$LOG_FILE"

# Logged in users
echo -e "\n>> Logged in Users:" >> "$LOG_FILE"
who >> "$LOG_FILE"

# Separator
echo -e "\n==============================\n" >> "$LOG_FILE"

