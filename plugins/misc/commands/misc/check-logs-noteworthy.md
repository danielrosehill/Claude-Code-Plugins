Review system logs for anything noteworthy (not just errors):

1. **Recent system messages**: `journalctl -n 100 --no-pager`
2. **Errors and warnings**: `journalctl -p warning -n 50`
3. **Critical messages**: `journalctl -p crit -n 20`
4. **Kernel messages**: `dmesg -T | tail -50`
5. **Authentication events**: `tail -50 /var/log/auth.log`
6. **Docker events**: `docker events --since 24h --until 1s` (recent events)
7. **Service restarts**: `journalctl | grep -i "restart" | tail -20`
8. **OOM events**: `journalctl | grep -i "out of memory" | tail -10`
9. **Disk events**: `journalctl | grep -i "disk\|i/o" | tail -20`
10. **Segfaults**: `journalctl | grep -i "segfault" | tail -10`

Look for:
- Unusual patterns or repeated messages
- Services starting/stopping unexpectedly
- Hardware errors or warnings
- Security-relevant events
- Performance-related messages
- Configuration changes
- Backup job completions/failures
- Interesting system events (not necessarily problems)

Provide Daniel with:
- **Summary**: Overall log health (clean / some issues / concerning)
- **Notable Events**: Interesting occurrences in past 24h
- **Patterns**: Recurring messages worth knowing
- **Errors**: Any errors requiring attention
- **Performance**: Messages about resource usage
- **Security**: Authentication, firewall, access events
- **Services**: Notable service activity
- **Hardware**: Hardware-related messages
- **Context**: Why each item is noteworthy
- **Action Items**: Things Daniel should investigate

This is a "what's happening on my server" check, not just error hunting.
