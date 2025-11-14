Analyze system boot time and identify slow-starting services:

1. Check overall boot time: `systemd-analyze`
2. Show time per service: `systemd-analyze blame | head -20`
3. Identify critical path: `systemd-analyze critical-chain`
4. Check last boot time: `uptime -s`
5. Review boot logs for errors: `journalctl -b -p err`
6. Check for failed units at boot: `systemctl --failed`

Provide Daniel with:
- Total boot time and breakdown by phase
- Top 10 slowest services to start
- Critical path services
- Any services that failed at boot
- Comparison to typical boot times (if available)
- Recommendations for boot optimization
- Services that could be disabled to speed up boot
