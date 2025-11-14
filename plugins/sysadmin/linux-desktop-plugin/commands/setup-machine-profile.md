# Setup Machine Profile

You are helping the user create a profile for a remote machine that will be managed through this Claude Code workspace.

Please gather the following information from the user and create a comprehensive machine profile:

## Required Information

1. **Machine Name**: A descriptive name for this machine (e.g., "Production Web Server", "Development Database")
2. **Bash Alias**: The SSH alias configured for this machine (e.g., "prod-web", "dev-db")
3. **IP Address**: The machine's IP address or hostname
4. **SSH Port**: SSH port (default: 22)
5. **SSH User**: Username for SSH connections
6. **Machine Purpose**: What this machine is used for
7. **Operating System**: OS and version (if known)
8. **Location**: Physical or cloud location (e.g., "AWS us-east-1", "On-premise datacenter")
9. **Access Level**: User's access level (root, sudo, limited user)
10. **Additional Notes**: Any special considerations, VPN requirements, jump host details, etc.

## Your Task

1. Ask the user for each piece of information above
2. Once collected, create or update the following files:
   - `machine-profile.json` - Structured machine data
   - `machine-profile.md` - Human-readable profile
   - `.ssh-config-snippet` - SSH config snippet for reference
3. Update the workspace README if it exists
4. Confirm the profile has been saved successfully

## Output Format

Save the profile to `machine-profile.json` in this format:

```json
{
  "name": "Machine Name",
  "bash_alias": "ssh-alias",
  "connection": {
    "ip": "10.0.0.x or hostname",
    "port": 22,
    "user": "username"
  },
  "purpose": "What this machine does",
  "environment": {
    "os": "Ubuntu 24.04 LTS",
    "location": "AWS us-east-1",
    "access_level": "sudo"
  },
  "notes": "Additional information",
  "created_date": "2025-10-29",
  "last_updated": "2025-10-29"
}
```

Also create a readable markdown version in `machine-profile.md` with the same information formatted nicely.

Create an SSH config snippet in `.ssh-config-snippet` that the user can add to their `~/.ssh/config` if needed:

```
Host [bash_alias]
    HostName [ip]
    Port [port]
    User [user]
    # Add additional SSH options as needed
```
