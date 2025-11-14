Analyze system and service logs for errors and issues:

1. Check recent system logs with `journalctl -p err -n 50` for errors
2. Review kernel logs with `dmesg -T -l err,warn | tail -50`
3. Check Docker logs if containers are running
4. Review auth logs for any security concerns: `sudo tail -50 /var/log/auth.log`
5. Check for recurring error patterns

Provide Daniel with:
- Summary of any significant errors found
- Patterns or recurring issues
- Severity assessment of issues
- Recommendations for investigation
- Any security concerns from auth logs
- Services or components that appear to be having problems
