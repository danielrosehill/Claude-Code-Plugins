Review the status of systemd services on the system:

1. List all failed services with `systemctl --failed`
2. Check status of critical services (docker, networking, ssh)
3. Identify any services in a degraded state
4. Check for any recent service restarts in journal logs
5. Review enabled services with `systemctl list-unit-files --state=enabled`

Provide Daniel with:
- A summary of any failed or problematic services
- Details about what each failed service does
- Recommendations for investigation or remediation
- Any services that have been restarting frequently
