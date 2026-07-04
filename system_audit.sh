#!/bin/bash
clear
echo "=========================================================="
echo "          AUTOMATED LINUX SYSTEM AUDIT REPORT             "
echo "=========================================================="
echo "1. Hostname:          $(hostname)"
echo "2. Current Date/Time: $(date)"
echo "----------------------------------------------------------"
echo "3. CPU Information:"
lscpu | grep -E "Model name|Core\(s\) per socket|CPU\(s\):"
echo "----------------------------------------------------------"
echo "4. Memory Usage:"
free -h
echo "----------------------------------------------------------"
echo "5. Disk Usage:"
df -h --total | grep 'total'
echo "----------------------------------------------------------"
echo "6. Logged In Users:"
who
echo "----------------------------------------------------------"
echo "7. Top 5 Running Processes by CPU Usage:"
echo -e "PID\t%CPU\tCOMMAND"
ps -eo pid,%cpu,cmd --sort=-%cpu | head -n 6 | tail -n 5
echo "=========================================================="
