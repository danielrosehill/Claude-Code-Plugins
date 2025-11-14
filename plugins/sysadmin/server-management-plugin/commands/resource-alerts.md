Check system resource pressure and alerts (critical for low-spec hardware):

1. Check CPU usage and load average: `uptime && mpstat 1 3`
2. Check memory usage and pressure: `free -h && cat /proc/pressure/memory`
3. Check swap usage: `swapon --show && vmstat 1 3`
4. Check disk I/O: `iostat -x 1 3`
5. Identify resource-intensive processes: `ps aux --sort=-%mem | head -20`
6. Check for OOM killer activity: `dmesg | grep -i "out of memory"`
7. Check system pressure indicators: `cat /proc/pressure/{cpu,memory,io}`
8. Review temperature if sensors available: `sensors 2>/dev/null || echo "sensors not available"`

Provide Daniel with:
- Current resource usage percentages (CPU, RAM, swap, disk)
- Load average interpretation
- Top resource consumers
- Any pressure indicators suggesting resource constraints
- Warning if approaching critical thresholds (>80% RAM, >90% disk, load > CPU count)
- OOM events if any
- Recommendations for resource optimization
- Suggestions for process management or hardware upgrade needs
