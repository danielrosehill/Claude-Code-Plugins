Perform a comprehensive system health check:

1. Check disk space usage with `df -h` and identify any filesystems above 80% capacity
2. Check memory usage with `free -h` and swap usage
3. Check CPU load with `uptime` and `top -bn1 | head -20`
4. Check for any I/O wait issues with `iostat` if available
5. Review system temperature if sensors are available (`sensors`)
6. Check filesystem health status

Provide Daniel with:
- A summary of overall system health
- Any warnings or concerns about resource usage
- Recommendations if any metrics are approaching thresholds
- Specific issues that need immediate attention
