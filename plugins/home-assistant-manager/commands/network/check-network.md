---
description: Check Home Assistant network configuration and connectivity
tags: [project, gitignored]
---

Verify network configuration and connectivity:

1. Network Configuration
   - Display current IP address and network settings
   - Show gateway and DNS configuration
   - Check DHCP vs static IP configuration
   - Verify subnet and VLAN settings

2. Local Network Connectivity
   - Test connectivity to gateway/router
   - Verify DNS resolution
   - Check connectivity to key LAN services
   - Test multicast/mDNS functionality

3. Internet Connectivity
   - Verify internet access
   - Test external DNS resolution
   - Check NTP synchronization
   - Measure latency and packet loss

4. Port Status
   - Check which ports are open/listening
   - Verify expected services are accessible
   - Identify unexpected open ports
   - Test port forwarding if configured

5. Remote Access
   - Check Nabu Casa connection (if configured)
   - Verify reverse proxy status (if configured)
   - Test VPN connectivity (if configured)
   - Check Cloudflare Tunnel (if configured)

6. Integration Connectivity
   - Test cloud service connectivity
   - Verify local device reachability
   - Check MQTT broker connection
   - Test any network-dependent integrations

Provide network health assessment and identify connectivity issues.
