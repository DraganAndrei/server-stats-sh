#!/bin/bash

CPU_MEM_USAGE=$(top -b -n 1 | grep -E "%Cpu|MiB")
DISK_USAGE=$(df -h)
mapfile -t TOP5_CPU < <(ps -eo pid,user,%cpu,%mem,comm --sort=-%cpu | head -n 6)
mapfile -t TOP5_MEM < <(ps -eo pid,user,%cpu,%mem,comm --sort=-%mem | head -n 6)

echo "-----------------------------------------------------------------=--"
echo -e "\nCPU and Memory usage on the server:"
echo "$CPU_MEM_USAGE"
echo -e "\nDisk usage on the server: "
echo "$DISK_USAGE"

echo -e "\nTop 5 CPU intensive processess:"
printf "%s\n" "${TOP5_CPU[@]}"
echo -e "\nTop 5 Memory consuming applications:"
printf "%s\n" "${TOP5_MEM[@]}"
echo "---------------------------------------------------------------------"

#thank you!
