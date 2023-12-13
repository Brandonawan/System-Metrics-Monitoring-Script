# System Metrics Monitoring Script

This bash script continuously monitors various system metrics on a Linux machine, providing insights into system performance and resource utilization. The script captures the following metrics:

- **CPU Usage:** Percentage of CPU utilization.
- **Memory Usage:** Used and total memory in megabytes (MB).
- **Disk Usage:** Percentage of disk space usage.
- **Network Usage:** Received bytes on the network interface.
- **Load Average:** System load average.
- **Running Processes:** Number of active processes.
- **Filesystem I/O:** Disk I/O statistics (Read and Write speeds).
- **System Uptime:** Time since the system was last booted.
- **User Sessions:** Number of active user sessions.
- **Swap Usage:** Used and total swap space in megabytes (MB).

## Usage
1. Save the script to a file, e.g., `system_health.sh`.
2. Grant execute permissions: `chmod +x system_health.sh`.
3. Run the script: `./system_health.sh`.

## Customization
- Adjust the sleep duration (currently set to 1 second) for the monitoring frequency.
- Fine-tune the script based on specific metrics or additional information required.

## Requirements
- The script relies on standard Linux commands (`top`, `free`, `df`, `ifconfig`, `uptime`, `ps`, `iostat`, `who`) for metric retrieval.

## Note
- This script assumes a Linux environment and may require modifications for compatibility with other operating systems.

Feel free to customize and integrate additional metrics based on your system monitoring needs.
