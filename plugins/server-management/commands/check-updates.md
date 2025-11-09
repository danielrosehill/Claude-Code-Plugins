Check for available system updates including security patches.

Perform the following checks:

1. **Package Updates**: Run `apt update && apt list --upgradable` to see available package updates
2. **Security Updates**: Check `unattended-upgrades` status and review security updates specifically
3. **Kernel Updates**: Identify if kernel updates are available
4. **Docker Updates**: Check if Docker has updates available
5. **Critical Services**: Check for updates to critical services (nginx, cloudflared, backup tools)

Provide a summary report including:
- Total number of updates available
- Number of security updates
- Any critical updates requiring immediate attention
- Recommended update schedule based on urgency
- Potential impact (service restarts required, etc.)

If updates are available, ask if the user wants to:
- Apply all updates now
- Apply only security updates
- Review specific packages before updating
- Schedule updates for later
