Check connectivity to key local computers on the LAN:

1. **Gateway/Firewall**: `ping -c 3 10.0.0.1` (OPNsense)
2. **Home Assistant**: `ping -c 3 10.0.0.3`
3. **This VM**: Verify own IP `ip addr | grep "10.0.0"`
4. **NAS**: `ping -c 3 10.0.0.50`
5. **Proxmox Host**: Attempt SSH connection to host
6. **DNS**: Test resolution `nslookup google.com`
7. **Internet**: `ping -c 3 8.8.8.8`

8. Check LAN subnet: `ip route | grep 10.0.0`
9. Scan LAN for active hosts: `nmap -sn 10.0.0.0/24` (if nmap available)
10. Review ARP cache: `ip neigh show`
11. Check network interface status: `ip link show`

Provide Daniel with:
- Connectivity status to each key system:
  - ✓ Gateway (10.0.0.1)
  - ✓ Home Assistant (10.0.0.3)
  - ✓ NAS (10.0.0.50)
  - ✓ Proxmox Host
- This server's IP confirmation (should be 10.0.0.4)
- DNS and internet connectivity
- List of other active LAN hosts detected
- Any unreachable key systems
- Network path issues
- Recommendations for troubleshooting
- Suggested next steps if connectivity issues found

Context: This VM is at 10.0.0.4 on a 10.0.0.0/24 LAN with gateway at 10.0.0.1
