# Claude Home Assistant Manager Template

[![Claude Code](https://img.shields.io/badge/Claude%20Code-Project-8A2BE2?style=flat&logo=anthropic)](https://github.com/anthropics/claude-code)
[![Claude Code Projects Index](https://img.shields.io/badge/Claude%20Code-Projects%20Index-blue?style=flat)](https://github.com/danielrosehill/Claude-Code-Repos-Index)
[![Master Index](https://img.shields.io/badge/GitHub-Master%20Index-green?style=flat&logo=github)](https://github.com/danielrosehill/Github-Master-Index)

A template repository for deploying Claude Code configuration optimized for Home Assistant OS management. This template provides comprehensive slash commands, specialized agents, and context for effective Home Assistant administration.

# Important: Customization Required

**Important:** This repository provides a pattern and starting point - it should not be deployed without customization. It was created as a general-purpose template and needs to be tailored to your specific Home Assistant installation.

Before deploying, you will need to:

- **Customize `CLAUDE.md`** - This is the most important file. Fill in all sections with your actual Home Assistant configuration:
  - Hardware platform and specifications
  - Network configuration and IP addresses
  - Installed integrations and add-ons
  - Device inventory and organization
  - Backup strategy and locations
  - Custom components and configurations

- **Remove irrelevant slash commands** - The template includes 20+ commands covering various scenarios. Review them and remove commands that don't apply to your setup (e.g., remove Z-Wave commands if you don't use Z-Wave)

- **Adjust agents as needed** - The 5 included agents cover common scenarios, but you may want to remove or modify them based on your needs

- **Update network references** - Replace all placeholder IP addresses and network information with your actual configuration

- **Document your specific environment** - Add details about your unique setup, known issues, and any special considerations

This repository demonstrates the pattern of creating a comprehensive Claude Code environment for Home Assistant management. Use it as a reference and starting point, but customize it thoroughly for your installation.

# Purpose

This template provides a comprehensive Claude Code environment optimized for Home Assistant OS administration. It includes:

- Custom `CLAUDE.md` with Home Assistant-specific context and instructions
- **20+ slash commands** for common Home Assistant operations
- **5 specialized agents** for complex management workflows
- Deployment scripts for easy installation

### Key Features

- **Health Monitoring** - System status, logs, integrations, entities, automations
- **Backup Management** - Snapshot creation, verification, and recovery
- **Integration Support** - Zigbee, Z-Wave, MQTT, and general integration management
- **Network Diagnostics** - Connectivity checks and network health monitoring
- **Maintenance Operations** - Updates, restarts, storage management, optimization
- **Device Management** - Comprehensive device and entity management
- **Automation Assistance** - Create, debug, and optimize automations
- **Troubleshooting** - Systematic problem diagnosis and resolution

# Deployment Model

Clone this repository anywhere on your system, then use the provided sync scripts to deploy the configuration files where Claude Code expects them.

## Quick Start

```bash
# 1. Clone the repository (or use your fork)
cd ~/repos/github  # or wherever you keep repositories
git clone https://github.com/danielrosehill/Claude-Home-Assistant-Manager-Template.git
cd Claude-Home-Assistant-Manager-Template

# 2. Customize CLAUDE.md for your Home Assistant installation
nano CLAUDE.md  # Fill in all the sections with your actual configuration

# 3. Deploy the template files
# Choose your deployment method:

# Option A: Sync to home directory only
./sync-to-home.sh

# Option B: Sync to both home directory AND / (requires sudo)
./sync-to-home-and-root.sh

# 4. Start using Claude Code
claude  # Claude Code CLI
# Now you have access to all the slash commands
```

## Deployment Options

### Option A: `sync-to-home.sh`

- Deploys to `~/CLAUDE.md` and `~/.claude/`
- No sudo required
- Use when Claude Code will be run from your user account
- Suitable for most Home Assistant setups

### Option B: `sync-to-home-and-root.sh`

- Deploys to both `~` and `/` (filesystem root)
- Requires sudo for copying to `/`
- Use when you want Claude Code available system-wide
- Useful if running Claude Code with elevated privileges

## How It Works

The sync scripts:

1. Copy `CLAUDE.md` and `.claude/` from the repository to the target location(s)
2. Handle existing files interactively (merge, overwrite, or skip)
3. Copy `context/` directory if present
4. Can be run repeatedly to update the configuration after making changes

This approach allows you to:

- Keep the repository under version control in a normal location
- Update configurations by editing the repo and re-running the sync script
- Maintain separation between the repository and deployment locations
- Use Git workflows (branches, PRs) for configuration management

## Updating Configuration

After making changes to the repository:

```bash
cd /path/to/Claude-Home-Assistant-Manager-Template
git pull  # if pulling updates from remote
# Make your changes...
./sync-to-home.sh  # or sync-to-home-and-root.sh
```

# Included Slash Commands

Use these commands by typing them in Claude Code CLI:

## Health & Monitoring (7 commands)

- `/ha-status` - Comprehensive Home Assistant system status and health check
- `/check-logs` - Examine logs for errors, warnings, and issues
- `/check-addons` - List and check status of all add-ons
- `/check-integrations` - List and check status of all integrations
- `/check-entities` - List and analyze entity health and organization
- `/check-automations` - Review automations for issues and optimization
- `/check-database` - Check database health and performance

## Backup Operations (3 commands)

- `/ha-snapshot` - Create a Home Assistant snapshot/backup
- `/backup-status` - Check backup status and history
- `/verify-backup` - Verify backup integrity and completeness

## Network & Connectivity (4 commands)

- `/check-network` - Check network configuration and connectivity
- `/check-mqtt` - Check MQTT broker status and connectivity
- `/check-zwave` - Check Z-Wave network status and health
- `/check-zigbee` - Check Zigbee network status and health

## Maintenance (6 commands)

- `/ha-config-check` - Validate configuration without restarting
- `/check-updates` - Check for available updates
- `/restart-ha` - Restart Home Assistant (with safety checks)
- `/check-storage` - Check storage and disk space
- `/cleanup-database` - Clean up and optimize database
- `/optimize-performance` - Analyze and optimize performance

## Integration Management (1 command)

- `/check-sensors` - Review sensor entities and their status

# Included Agents

Specialized agents for complex administrative tasks (use via Task tool):

## Core Management

- **automation-helper** - Help create, debug, and optimize Home Assistant automations
  - Design automation logic
  - Debug broken automations
  - Optimize performance
  - Provide testing guidance
  - Follow best practices

- **integration-manager** - Manage, configure, and troubleshoot integrations
  - Guide integration setup
  - Troubleshoot connectivity issues
  - Optimize configuration
  - Recommend integration selection
  - Handle migration between integrations

- **device-manager** - Manage devices and their entities
  - Organize devices by area/room
  - Configure device settings
  - Troubleshoot device issues
  - Handle device lifecycle
  - Maintain device inventory

## Operations & Support

- **backup-manager** - Manage and troubleshoot backup operations
  - Design backup strategies
  - Create and verify backups
  - Troubleshoot backup failures
  - Guide recovery procedures
  - Implement 3-2-1 backup strategy

- **troubleshooter** - Diagnose and resolve issues systematically
  - Systematic issue diagnosis
  - Root cause analysis
  - Solution implementation
  - Prevention strategies
  - Documentation and knowledge building

# Directory Structure

```
.
├── .claude/
│   ├── commands/          # Slash commands organized by category
│   │   ├── health/        # Health monitoring commands
│   │   ├── backup/        # Backup operation commands
│   │   ├── network/       # Network diagnostic commands
│   │   ├── integrations/  # Integration management commands
│   │   └── maintenance/   # Maintenance operation commands
│   └── agents/            # Specialized subagents
├── context/               # Additional context files (optional)
├── CLAUDE.md              # Main context file (must customize!)
├── README.md              # This file
├── env.md                 # Environment documentation template
├── sync-to-home.sh        # Deploy to home directory
└── sync-to-home-and-root.sh  # Deploy to home and root
```

# Use Cases

This template is ideal for:

- **Home Assistant OS installations** on any platform (Raspberry Pi, VM, dedicated hardware)
- **Development environments** where you're actively building automations and integrations
- **Production systems** requiring comprehensive monitoring and management
- **Multi-integration setups** with Zigbee, Z-Wave, MQTT, and cloud services
- **Learning and experimentation** with Home Assistant features and capabilities

# Customization Guide

## Essential Customization Steps

### 1. CLAUDE.md - The Foundation

This is your most important customization. Open `CLAUDE.md` and fill in every section:

**System Information:**
```markdown
- Home Assistant Version: [Your version]
- Installation Type: [OS/Supervised/Container/Core]
- Hardware Platform: [Your hardware]
- IP Address: [Your HA IP]
```

**Integrations:**
List every integration you use. This helps Claude understand your setup.

**Devices:**
Document your device types and counts. This provides scale context.

**Backup Strategy:**
Describe how you handle backups. This is critical for recovery operations.

### 2. Remove Unnecessary Commands

Not using Z-Wave? Remove:
- `.claude/commands/network/check-zwave.md`

Not using Zigbee? Remove:
- `.claude/commands/network/check-zigbee.md`

Not using MQTT? Remove:
- `.claude/commands/network/check-mqtt.md`

Review all commands and keep only what's relevant.

### 3. Adjust Agents (Optional)

The included agents are generally useful, but you may want to:
- Remove agents you won't use
- Modify agent instructions for your workflow
- Add custom agents for specific needs

### 4. Network Configuration

Replace all placeholder network information:
- IP addresses
- Subnet information
- Gateway details
- DNS servers
- External access methods

### 5. Document Special Considerations

Add any unique aspects of your setup:
- Custom components or integrations
- Unusual configuration patterns
- Known issues or workarounds
- Critical automations or devices
- Special maintenance procedures

## Advanced Customization

### Adding Custom Commands

Create new slash commands in `.claude/commands/`:

```bash
# Create a new command
nano .claude/commands/your-category/your-command.md
```

Use this format:
```markdown
---
description: Brief description of what this command does
tags: [project, gitignored]
---

Detailed instructions for Claude on what to do when this command is executed.

Include:
1. What to check
2. What to analyze
3. What to report
4. Any actions to take
```

### Adding Custom Agents

Create new agents in `.claude/agents/`:

```bash
nano .claude/agents/your-agent.md
```

Follow the existing agent format with detailed instructions.

### Environment Documentation

Use `env.md` to document your environment details that don't fit in CLAUDE.md.

# Security Considerations

- **Credentials**: Never commit actual credentials. Use placeholders in CLAUDE.md
- **IP Addresses**: Public IPs should not be documented if security is a concern
- **Network Topology**: Document carefully if this repository is public
- **API Keys**: Reference where they're stored, never include actual keys
- **Backup Encryption**: Document if backups are encrypted

If you're documenting a production system, consider making your fork private.

# Version Control Strategy

## For Private Use

If you've made a private fork:
- Document everything in detail
- Include actual IPs and configuration details
- Track all changes to your HA setup
- Commit after configuration changes

## For Public Sharing

If you plan to share your fork:
- Use placeholders for sensitive information
- Generalize specific details
- Focus on the pattern, not specifics
- Document what users need to customize

# Troubleshooting

## Commands Not Available

If slash commands don't appear after deployment:
1. Verify files were copied: `ls -la ~/.claude/commands/`
2. Check file permissions: `chmod -R u+rw ~/.claude`
3. Restart Claude Code CLI
4. Check Claude Code version (may need update)

## Agent Not Working

If agents don't respond correctly:
1. Verify agent files exist: `ls -la ~/.claude/agents/`
2. Check agent file format (proper frontmatter)
3. Review agent instructions for clarity
4. Check Claude Code logs for errors

## Sync Script Issues

If sync scripts fail:
1. Check script permissions: `chmod +x sync-*.sh`
2. Verify source files exist
3. Check disk space
4. For root sync, ensure sudo works

# Contributing

If you've made improvements to this template:

1. Fork the repository
2. Make your changes
3. Remove any personal/sensitive information
4. Submit a pull request with description of improvements

Good contributions include:
- New useful slash commands
- Improved agent instructions
- Better documentation
- Bug fixes in scripts
- Additional use cases

# Examples

## Example Workflow: Daily Health Check

```bash
claude
# Claude Code starts

/ha-status
# Reviews overall system health

/check-logs
# Checks recent logs for issues

/check-integrations
# Verifies all integrations are working

/check-database
# Checks database health
```

## Example Workflow: Adding New Device

```bash
claude
# Claude Code starts

# Ask Claude to help add a new device
"I want to add a new Zigbee motion sensor. Can you guide me through the process?"

# Claude will use the device-manager agent to guide you through:
# 1. Putting coordinator in pairing mode
# 2. Pairing the device
# 3. Naming and configuring
# 4. Testing functionality
# 5. Adding to automations
```

## Example Workflow: Troubleshooting Automation

```bash
claude
# Claude Code starts

"My living room lights automation isn't working. Can you help debug it?"

# Claude will:
# 1. Use /check-automations to see automation status
# 2. Review automation traces
# 3. Check entity availability
# 4. Test trigger conditions
# 5. Suggest fixes
# 6. Help test the solution
```

# Related Projects

- [Claude Code Official Repository](https://github.com/anthropics/claude-code)
- [Claude Server Manager Template](https://github.com/danielrosehill/Claude-Server-Manager-Template)
- [Home Assistant Documentation](https://www.home-assistant.io/docs/)

# License

MIT License - Feel free to use and modify for your own purposes.

# About

Created by Daniel Rosehill as part of a series of Claude Code templates for different management scenarios. This template demonstrates the pattern of creating comprehensive, context-rich environments for AI-assisted system management.

For more Claude Code projects, see the [Claude Code Projects Index](https://github.com/danielrosehill/Claude-Code-Repos-Index).

---

**Remember:** This is a template. Customize it for your specific Home Assistant installation before extensive use!
