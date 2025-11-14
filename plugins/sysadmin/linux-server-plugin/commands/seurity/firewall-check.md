Assess firewall configuration and security posture:

1. Check UFW status: `ufw status verbose`
2. List all UFW rules: `ufw status numbered`
3. Check iptables rules: `iptables -L -n -v`
4. Review ip6tables: `ip6tables -L -n`
5. Check for exposed services: `ss -tulpn`
6. Compare open ports to firewall rules
7. Review Docker iptables rules: `iptables -L DOCKER -n`
8. Check NAT rules: `iptables -t nat -L -n`
9. Verify Cloudflare Tunnel setup (should minimize direct exposure)

Provide Daniel with:
- Firewall status (enabled/disabled)
- Complete list of allowed ports and services
- Any overly permissive rules (0.0.0.0/0 access)
- Services listening but not explicitly allowed
- Docker-created firewall rules
- Comparison to expected configuration for:
  - SSH access
  - Cloudflare Tunnel
  - Local LAN services
- IPv6 firewall status
- Recommendations for hardening
- Rules that should be added/removed
- Security score for firewall posture
