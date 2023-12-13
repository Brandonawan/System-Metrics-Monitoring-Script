#!/bin/bash

while true; do
    # Get CPU usage using top command
    cpu_usage=$(top -bn 1 | grep "%Cpu" | awk '{print $2}' | cut -d. -f1)

    # Get memory usage using free command
    total_memory=$(free -m | awk '/^Mem:/{print $2}')
    used_memory=$(free -m | awk '/^Mem:/{print $3}')

    # Get disk usage using df command
    disk_usage=$(df -h / | awk '/\//{print $5}' | cut -d% -f1)

    # Get network usage using ifconfig
    network_usage=$(ifconfig | grep "RX bytes" | awk '{print $2}' | cut -d: -f2)

    # Get load average using uptime
    load_average=$(uptime | awk '{print $10}')

    # Get the number of running processes using ps
    process_count=$(ps aux --no-headers | wc -l)

    # Get I/O statistics using iostat
    io_stats=$(iostat -d -x 1 2 | grep "^sda" | awk '{print "Read: "$6" KB/s, Write: "$7" KB/s"}')

    # Get system uptime using uptime
    system_uptime=$(uptime | awk '{print $3}')

    # Get the number of user sessions using who
    user_sessions=$(who | wc -l)

    # Get swap usage using free command
    total_swap=$(free -m | awk '/^Swap:/{print $2}')
    used_swap=$(free -m | awk '/^Swap:/{print $3}')

    # Print metrics
    echo "CPU Usage: ${cpu_usage}%"
    echo "Memory Usage: ${used_memory}/${total_memory} MB"
    echo "Disk Usage: ${disk_usage}%"
    echo "Network Usage: ${network_usage}"
    echo "Load Average: ${load_average}"
    echo "Running Processes: ${process_count}"
    echo "Filesystem I/O: ${io_stats}"
    echo "System Uptime: ${system_uptime}"
    echo "User Sessions: ${user_sessions}"
    echo "Swap Usage: ${used_swap}/${total_swap} MB"

    # Sleep for 1 second (adjust as needed)
    sleep 1
done

