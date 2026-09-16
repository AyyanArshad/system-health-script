#!/bin/bash

echo '========================'
printf "\n"
echo 'SYSTEM HEALTH REPORT'
printf "\n"
echo '========================'
printf "\n"
echo "DATE GENERATED  $(date '+%Y-%m-%d %H:%M:%S')"
printf "\n\n"
hostnamectl | awk 'tolower($0) ~ /hostname|operating system|kernel/'
printf "IP ADDRESS: "
hostname -I
printf "\n\n"
echo 'CPU USAGE:'
mpstat 1 1
printf "\n\n"
echo 'MEMORY USAGE: '
free -h
printf "\n\n"
echo 'DISK USAGE: '
df -h
printf "\n"
echo "TOP 5 PROCESSES (By memory): "
ps -eo pid,comm:20,%cpu,%mem --sort=-%mem | head -n 6
echo; echo "TOP 5 PROCESSES (By cpu): "
ps -eo pid,comm:20,%cpu,%mem --sort=-%cpu | head -n 6
printf "\nTOTAL PROCESSON SYSTEM: "; ps -ef --no-headers | wc -l
printf "\n\n"
echo "LOGGED IN USERS: "
w
printf "\n"
echo "UPTIME: "
uptime -p
printf "\n"
echo "SECURE SHELL STATUS: "
systemctl is-active ssh

