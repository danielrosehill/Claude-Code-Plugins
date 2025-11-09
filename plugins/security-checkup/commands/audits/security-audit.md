Conduct a comprehensive security audit of the server:

1. Check for failed login attempts: `grep "Failed password" /var/log/auth.log | tail -20`
2. Review SSH configuration: `sshd -T | grep -E "permitrootlogin|passwordauth|port"`
3. Check open ports: `ss -tulpn`
4. Review firewall status: `ufw status verbose` or `iptables -L -n`
5. Check for security updates: `apt list --upgradable | grep -i security`
6. Review user accounts: `cat /etc/passwd | grep -v nologin`
7. Check sudo access: `grep -v "^#" /etc/sudoers`
8. Scan for world-writable files: `find / -perm -002 -type f 2>/dev/null | head -20`
9. Check for SUID binaries: `find / -perm -4000 -type f 2>/dev/null`
10. Review Docker security: Check exposed ports and volumes
11. Check for unencrypted credentials: Look in common locations
12. Verify automatic updates: `systemctl status unattended-upgrades`

Provide Daniel with:
- Security risk summary (Critical/High/Medium/Low)
- Failed authentication attempts and patterns
- SSH security configuration review
- Open ports and their justification
- Firewall configuration assessment
- Available security patches
- User account and privilege review
- World-writable files requiring attention
- SUID binary audit
- Docker security concerns
- Credential exposure risks
- Recommendations prioritized by risk
