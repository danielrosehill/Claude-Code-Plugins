Identify and analyze resource-intensive processes:

1. Top CPU consumers: `ps aux --sort=-%cpu | head -20`
2. Top memory consumers: `ps aux --sort=-%mem | head -20`
3. Long-running processes: `ps -eo pid,user,etime,cmd --sort=-etime | head -20`
4. Process tree: `pstree -p | head -50`
5. Check for zombie processes: `ps aux | grep defunct`
6. Docker container resource usage: `docker stats --no-stream`
7. Check process limits: `ulimit -a`
8. Review systemd resource control: `systemctl show --property=CPUQuotaPerSecUSec,MemoryMax <service>`

Provide Daniel with:
- Top 10 CPU and memory consumers
- Any zombie or defunct processes
- Long-running processes that may need attention
- Docker container resource usage
- Processes exceeding expected resource usage
- Potential issues (process leaks, runaway processes)
- Recommendations for process management
- Suggestions for resource limiting if needed
