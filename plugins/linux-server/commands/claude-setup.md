# Server Manager Template Setup

I see you've just cloned the Claude Server Manager Template. This template provides a pattern and starting point for creating a comprehensive Claude Code environment for server administration, but it needs to be customized for your specific environment.

Let me help you tailor this template to your needs by asking some questions about your environment and requirements.

## Environment Discovery

Please provide information about:

1. **Server Purpose & Role**
   - What is the primary purpose of this server?
   - What services/applications will it run?
   - Is this for production, development, testing, or personal use?

2. **Hardware Specifications**
   - CPU model and core count
   - RAM amount
   - GPU (if any)
   - Storage configuration (drives, RAID, filesystem types)
   - Are there any resource constraints I should be aware of?

3. **Network Configuration**
   - What is your LAN IP address range?
   - Gateway/router IP address
   - This server's static IP (if assigned)
   - Any other important network services (NAS, firewall, other servers)?
   - How are external services accessed (Cloudflare Tunnel, reverse proxy, direct port forwarding)?

4. **Operating System & Software**
   - Linux distribution and version
   - Is Docker installed? If so, what's your deployment pattern?
   - Any virtualization (Proxmox, KVM, etc.)?
   - What backup tools/strategies are you using?

5. **Directory Organization**
   - Where do you keep Docker deployments?
   - Where is backup data stored?
   - Any other important directory structures?

6. **Administrative Priorities**
   - What types of tasks will you need help with most often?
   - Are there specific monitoring or maintenance routines you want automated?
   - Any specific security or compliance requirements?

Based on your answers, I will:

1. **Rewrite `CLAUDE.md`** with accurate context about your environment
2. **Review and remove irrelevant slash commands** from the 38 included in the template
3. **Identify which agents are relevant** to your needs and suggest removing others
4. **Update network references** throughout the configuration
5. **Adjust resource management context** based on your hardware capabilities
6. **Suggest additional slash commands or agents** that might be useful for your specific use case

Please provide as much detail as you're comfortable sharing, and I'll help you transform this template into a customized server management environment.
