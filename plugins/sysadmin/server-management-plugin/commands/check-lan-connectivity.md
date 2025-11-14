Check connectivity to key local computers on the LAN:

1. **Gateway/Firewall**: `ping -c 3 192.168.1.1` (OPNsense)
2. **Home Assistant**: `ping -c 3 192.168.1.10`
3. **This VM**: Verify own IP `ip addr | grep "10.0.0"`
4. **NAS**: `ping -c 3 192.168.1.100`
5. **Proxmox Host**: Attempt SSH connection to host
6. **DNS**: Test resolution `nslookup google.com`
7. **Internet**: `ping -c 3 8.8.8.8`

8. Check LAN subnet: `ip route | grep 10.0.0`
9. Scan LAN for active hosts: `nmap -sn 10.0.0.0/24` (if nmap available)
10. Review ARP cache: `ip neigh show`
11. Check network interface status: `ip link show`

Provide Daniel with:
- Connectivity status to each key system:
  - ✓ Gateway (192.168.1.1)
  - ✓ Home Assistant (192.168.1.10)
  - ✓ NAS (192.168.1.100)
  - ✓ Proxmox Host
- This server's IP confirmation (should be 192.168.1.20)
- DNS and internet connectivity
- List of other active LAN hosts detected
- Any unreachable key systems
- Network path issues
- Recommendations for troubleshooting
- Suggested next steps if connectivity issues found

Context: This VM is at 192.168.1.20 on a 10.0.0.0/24 LAN with gateway at 192.168.1.1
