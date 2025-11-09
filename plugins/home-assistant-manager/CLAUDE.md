# CLAUDE.md For Home Assistant Management

## Purpose

This configuration provides Claude Code with comprehensive context for managing a Home Assistant OS installation. The slash commands, agents, and instructions here are optimized for Home Assistant administration, troubleshooting, and automation development.

## Important: Customization Required

**This is a template** - you must customize it for your specific Home Assistant installation before deployment. Update the sections below with your actual configuration details.

## Home Assistant Environment

### Installation Details

- **Home Assistant Version**: [e.g., 2025.10.5]
- **Installation Type**: [Home Assistant OS / Supervised / Container / Core]
- **Hardware Platform**: [e.g., Raspberry Pi 4 8GB / VM on Proxmox / Intel NUC]
- **Storage**: [e.g., 128GB SSD / 1TB HDD]
- **Network Mode**: [Static IP / DHCP]
- **Access URL**: [e.g., http://homeassistant.local:8123 or https://ha.example.com]

### System Information

- **Operating System**: [e.g., Home Assistant OS 11.1]
- **Supervisor Version**: [e.g., 2024.10.2]
- **Core Version**: [e.g., 2025.10.5]
- **Frontend Version**: [e.g., 20251005.0]
- **IP Address**: [e.g., 10.0.0.3]
- **Subnet**: [e.g., 10.0.0.0/24]

## Network Configuration

### Local Network

- **Gateway/Router**: [e.g., 10.0.0.1]
- **DNS Servers**: [e.g., 10.0.0.1, 1.1.1.1]
- **VLAN**: [if applicable]
- **Port Forwarding**: [if configured for remote access]

### External Access

- **Remote Access Method**: [None / Nabu Casa / Reverse Proxy / VPN / Cloudflare Tunnel]
- **External Domain**: [if applicable]
- **SSL Certificate**: [Let's Encrypt / Self-signed / None]

## Integrations

List your key integrations here so Claude understands your setup:

### Cloud Services
- [e.g., Google Assistant, Alexa, Apple HomeKit]

### Smart Home Protocols
- **Zigbee**: [Coordinator type, e.g., Sonoff Zigbee 3.0 USB Dongle]
- **Z-Wave**: [Controller type, e.g., Aeotec Z-Stick Gen5]
- **Matter**: [If configured]
- **Thread**: [If configured]

### IoT Platforms
- [e.g., Philips Hue, IKEA TRÅDFRI, Tuya, Shelly, ESPHome]

### Media
- [e.g., Plex, Sonos, Spotify, Chromecast]

### Voice Assistants
- [e.g., Local Whisper, Piper TTS, Google Assistant SDK]

### Monitoring & Notifications
- [e.g., MQTT, InfluxDB, Grafana, Telegram, Discord]

### Other Key Integrations
- [List other important integrations]

## Add-ons

List installed add-ons:

### Essential Add-ons
- [e.g., File Editor, Terminal & SSH, Samba share]

### Database & Logging
- [e.g., InfluxDB, MariaDB, PostgreSQL]

### Networking
- [e.g., Mosquitto MQTT broker, Nginx Proxy Manager, AdGuard Home]

### Automation & Development
- [e.g., Node-RED, AppDaemon, Visual Studio Code]

### Backup & Recovery
- [e.g., Google Drive Backup, Dropbox Sync]

### Zigbee/Z-Wave
- [e.g., Zigbee2MQTT, Z-Wave JS UI]

### Other Add-ons
- [List other installed add-ons]

## Devices

### Device Categories

Approximate counts by type (helps Claude understand scale):

- **Lights**: [e.g., 25 devices]
- **Switches**: [e.g., 15 devices]
- **Sensors**: [e.g., 40 sensors]
- **Climate**: [e.g., 3 thermostats]
- **Media Players**: [e.g., 8 devices]
- **Cameras**: [e.g., 5 cameras]
- **Covers**: [e.g., 3 blinds/shades]
- **Locks**: [e.g., 2 smart locks]
- **Other**: [Describe other device types]

### Critical Devices

List devices that require special attention or are critical to your setup:

- [Device name and why it's critical]

## Automations & Scripts

### Automation Organization

- **Total Automations**: [Approximate count]
- **Organization Method**: [By room / By function / By YAML files / UI only]
- **Packages Used**: [Yes/No - describe structure if yes]

### Key Automation Areas
- [e.g., Morning routine, Security, Climate control, Presence detection]

### Script Organization
- **Total Scripts**: [Approximate count]
- **Purpose**: [Brief description of script usage patterns]

## Database & Recorder

### Database Configuration

- **Database Type**: [SQLite (default) / MariaDB / PostgreSQL]
- **Database Location**: [e.g., /config/home-assistant_v2.db or remote]
- **Purge Settings**: [e.g., Keep 10 days, purge every 7 days]

### Recorder Configuration

- **Included Domains**: [List if specifically configured]
- **Excluded Entities**: [List patterns if configured]
- **Commit Interval**: [If customized from default 1 second]

## Storage & Backups

### Storage Information

- **Total Storage**: [e.g., 128GB]
- **Used Space**: [Approximate percentage or GB]
- **Config Directory Size**: [Approximate]
- **Database Size**: [Approximate]

### Backup Strategy

- **Backup Method**: [e.g., Automated add-on, manual snapshots, script]
- **Backup Frequency**: [e.g., Daily at 3 AM]
- **Backup Retention**: [e.g., Keep last 7 backups]
- **Backup Location**: [e.g., Google Drive, NAS at 10.0.0.50, local only]
- **Off-site Backup**: [Yes/No - describe if yes]

### Snapshot Policy
- **Full Snapshots**: [Frequency and retention]
- **Partial Snapshots**: [If used - what's included/excluded]

## Configuration Structure

### Directory Organization

Describe how your /config directory is organized:

```
/config/
├── automations.yaml          [or split into multiple files]
├── scripts.yaml              [or split into multiple files]
├── scenes.yaml
├── configuration.yaml        [main config or includes only]
├── secrets.yaml              [encrypted credentials]
├── packages/                 [if using packages]
├── custom_components/        [list key custom components]
├── www/                      [custom resources]
└── blueprints/               [automation blueprints]
```

### Configuration Style

- **YAML Files**: [Single file / Split by domain / Packages]
- **UI Configuration**: [Percentage of configuration via UI vs YAML]
- **Version Control**: [Using Git? Describe approach]

## Custom Components

List any custom HACS or manually installed components:

- [Component name - brief description of what it provides]

## Themes

- **Active Themes**: [List installed themes]
- **Custom CSS**: [Yes/No]

## Lovelace UI

### Dashboard Organization

- **Number of Dashboards**: [e.g., 3 - Main, Mobile, Admin]
- **Dashboard Mode**: [Storage (UI) / YAML / Mixed]
- **Custom Cards**: [List any custom Lovelace cards from HACS]

## Authentication & Security

### Users & Access

- **Admin Users**: [Number of admin accounts]
- **Regular Users**: [Number of regular user accounts]
- **Service Accounts**: [e.g., for API access]

### Security Measures

- **Two-Factor Authentication**: [Enabled for which users]
- **Trusted Networks**: [If configured]
- **IP Banning**: [Enabled/Disabled]
- **SSL/TLS**: [Configuration type]

## Monitoring & Logs

### Logging Configuration

- **Log Level**: [default / info / debug / warning]
- **Component-Specific Logging**: [List any components with custom log levels]
- **Log Rotation**: [How logs are managed]

### System Monitoring

- **System Monitor Integration**: [Configured? What's monitored?]
- **External Monitoring**: [e.g., Uptime Kuma, Healthchecks.io]
- **Performance Metrics**: [e.g., InfluxDB + Grafana]

## Known Issues & Quirks

Document any recurring issues or special considerations:

- [Issue description and workaround]

## Development & Testing

### Development Environment

- **Development Mode**: [Enabled/Disabled]
- **Test Devices**: [Any devices used specifically for testing]
- **Staging Area**: [Separate HA instance for testing?]

### Custom Development

- **AppDaemon Apps**: [If used - describe]
- **Python Scripts**: [If used - describe]
- **Shell Commands**: [If used - describe]
- **Custom Integrations**: [Any in development]

## Maintenance Schedule

### Regular Tasks

- **Weekly**: [e.g., Check for updates, review logs]
- **Monthly**: [e.g., Database cleanup, backup verification]
- **Quarterly**: [e.g., Full backup test restore]
- **Annually**: [e.g., Hardware inspection, coordinator firmware updates]

## Special Considerations

### Resource Constraints

- [e.g., Running on Raspberry Pi - be mindful of CPU/memory usage]

### Network Dependencies

- [e.g., Relies on NAS at 10.0.0.50 - many automations will fail if offline]

### Critical Integrations

- [e.g., Security system integration - test carefully before changes]

## Claude Code Workflow Guidelines

### When Working on This Installation

1. **Always check system health** before making changes (use `/ha-status`)
2. **Validate configuration** before restarting (use `/ha-config-check`)
3. **Create snapshot** before major changes (use `/ha-snapshot`)
4. **Check logs** after changes to ensure no errors (use `/check-logs`)
5. **Test automations** in safe conditions before deploying

### Automation Development

When creating or modifying automations:
- Use available entities from `/check-entities`
- Follow existing naming conventions
- Test trigger conditions before deploying
- Document complex logic clearly
- Consider failure modes and add safeguards

### Integration Management

When working with integrations:
- Check integration status before troubleshooting
- Review integration-specific logs
- Understand device communication patterns
- Test after changes to ensure connectivity

### Backup Before Changes

Always create a snapshot before:
- Installing new add-ons
- Updating Home Assistant core
- Modifying critical automations
- Changing network configuration
- Updating integration credentials

## API Access

### Home Assistant API

- **Long-Lived Access Tokens**: [How they're managed]
- **API Rate Limits**: [If configured]
- **Webhook Usage**: [If configured for external services]

### External APIs

List any external APIs your Home Assistant installation uses:
- [Service name - what it's used for - any rate limits to be aware of]

## Reference Links

### Documentation Locations

- **Official Docs**: https://www.home-assistant.io/docs/
- **Community Forum**: https://community.home-assistant.io/
- **Local Documentation**: [any local documentation you maintain]

### Your Specific Resources

- **Network Diagram**: [Path to diagram if exists]
- **Device Inventory**: [Path to inventory if maintained]
- **Credential Storage**: [e.g., 1Password, Bitwarden - DO NOT store actual credentials here]

## Emergency Procedures

### System Down

If Home Assistant is completely down:
1. [Your recovery steps]

### Configuration Broken

If configuration is broken and won't load:
1. [Your recovery steps]

### Restore from Backup

Process for restoring from backup:
1. [Your restore procedure]

## Notes for Claude

### Preferences

- **Automation Style**: [Prefer UI / YAML / No preference]
- **Code Comments**: [Verbose / Minimal / Standard]
- **Testing Approach**: [Always ask before restart / Proceed with standard changes / etc.]

### Restrictions

- **Never modify**: [List any entities/automations that should never be changed]
- **Always ask before**: [List operations requiring explicit permission]
- **Critical systems**: [Systems that require extra caution]
