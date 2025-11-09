Check system uptime and stability metrics:

1. Current uptime: `uptime`
2. System boot time: `uptime -s`
3. Load averages: `uptime` and interpret 1, 5, 15 minute averages
4. Last reboot information: `last reboot | head -10`
5. Check for unexpected reboots: `journalctl --list-boots`
6. System crash dumps: `ls -lh /var/crash/` if directory exists
7. Review shutdown logs: `journalctl -u systemd-shutdown -n 20`
8. Check process uptime for critical services: `systemctl status docker ssh | grep Active`

Provide Daniel with:
- Current uptime in human-readable format
- Last boot time and date
- Load average interpretation (relative to CPU count)
- Recent reboot history with reasons if available
- Any unexpected crashes or kernel panics
- Uptime of critical services (docker, ssh, etc.)
- Comparison to expected uptime
- Stability assessment
