Check network configuration and connectivity health:

1. Check network interfaces: `ip addr show`
2. Verify default gateway: `ip route show`
3. Check DNS configuration: `cat /etc/resolv.conf`
4. Test DNS resolution: `nslookup google.com`
5. Check listening ports: `ss -tulpn`
6. Review network statistics: `ss -s`
7. Check for network errors: `ip -s link`
8. Test internet connectivity: `ping -c 3 8.8.8.8 && ping -c 3 google.com`
9. Check LAN gateway: `ping -c 3 192.168.1.1`
10. Review Cloudflare Tunnel status if running: `docker ps | grep cloudflare`

Provide Daniel with:
- Network interface status (IP: 192.168.1.20 expected)
- Gateway connectivity (192.168.1.1)
- DNS resolution status
- Internet connectivity status
- Listening services and ports
- Network errors or packet loss
- Cloudflare Tunnel status
- Any network configuration issues
- Recommendations for network problems
