# Home Assistant Environment Documentation

This file documents the specific Home Assistant environment details for reference. Use this to supplement the CLAUDE.md file with additional technical information that may be useful for troubleshooting and management.

## System Environment

### Host System Information

**Hardware:**
- Platform: [e.g., Raspberry Pi 4 Model B 8GB / Intel NUC / VM on Proxmox]
- CPU: [e.g., Quad-core ARM Cortex-A72 / Intel i5-8259U]
- RAM: [e.g., 8GB]
- Storage: [e.g., 128GB SSD / 1TB HDD]
- Network Interface: [e.g., Gigabit Ethernet / WiFi]

**Operating System:**
- OS Type: [Home Assistant OS / Debian / Ubuntu]
- OS Version: [e.g., Home Assistant OS 11.1]
- Kernel: [if applicable]
- Architecture: [e.g., aarch64 / x86_64]

### Home Assistant Installation

**Core Components:**
- Home Assistant Core: [version]
- Supervisor: [version]
- Operating System: [version]
- Frontend: [version]

**Installation Method:**
- [Home Assistant OS (recommended) / Supervised / Container / Core]
- Installation Date: [when initially installed]
- Last Major Update: [date of last significant update]

### Network Configuration

**Local Network:**
- IP Address: [static IP or DHCP]
- Subnet Mask: [e.g., 255.255.255.0]
- Gateway: [router IP]
- DNS Servers: [primary and secondary]
- MAC Address: [if relevant]
- VLAN: [if applicable]

**Port Configuration:**
- HTTP Port: [default 8123]
- HTTPS Port: [if configured]
- Additional Ports: [list any other open ports]

**External Access:**
- Method: [None / Nabu Casa / Reverse Proxy / VPN / Cloudflare Tunnel]
- Domain: [if applicable]
- SSL Certificate: [Let's Encrypt / Self-signed / None]
- Certificate Expiry: [date]

## Storage Configuration

### Filesystem

**Primary Storage:**
- Mount Point: [e.g., /]
- Filesystem Type: [e.g., ext4 / btrfs]
- Total Size: [e.g., 128GB]
- Used Space: [approximate]
- Available Space: [approximate]

**Additional Storage:**
- NAS Mounts: [if applicable]
- External Drives: [if applicable]
- Cloud Storage: [if configured]

### Database

**Configuration:**
- Database Type: [SQLite (default) / MariaDB / PostgreSQL]
- Database Location: [path]
- Current Size: [approximate size]
- Growth Rate: [approximate rate]

**Recorder Settings:**
- Purge Interval: [e.g., Every 7 days]
- History Days: [e.g., Keep 10 days]
- Excluded Domains: [list if configured]
- Excluded Entities: [list if configured]

## Hardware Devices

### Coordinators/Controllers

**Zigbee Coordinator:**
- Model: [e.g., Sonoff Zigbee 3.0 USB Dongle Plus]
- Firmware Version: [version]
- Channel: [e.g., Channel 15]
- Device Path: [e.g., /dev/ttyUSB0]
- Integration: [ZHA / Zigbee2MQTT]

**Z-Wave Controller:**
- Model: [e.g., Aeotec Z-Stick Gen5+]
- Firmware Version: [version]
- Device Path: [e.g., /dev/ttyACM0]
- Integration: [Z-Wave JS]

**Other Controllers:**
- [List any other hardware controllers]

### Connected Hardware

**USB Devices:**
- [List USB devices connected to HA host]

**Serial Devices:**
- [List serial devices]

**Network Devices:**
- [List directly connected network devices]

## Software Configuration

### Python Environment

**Python Version:** [e.g., Python 3.11.x]

**Key Packages:**
- [List important Python packages if custom installation]

### Add-ons Installed

List all add-ons with versions:

**System:**
- [e.g., File Editor v5.6.0]
- [e.g., Terminal & SSH v9.7.1]
- [e.g., Samba share v12.1.0]

**Database:**
- [e.g., MariaDB v2.6.1]
- [e.g., InfluxDB v4.7.1]

**Networking:**
- [e.g., Mosquitto MQTT broker v6.2.1]
- [e.g., Nginx Proxy Manager v2.10.4]

**Automation:**
- [e.g., Node-RED v14.2.2]
- [e.g., AppDaemon v0.13.3]

**Backup:**
- [e.g., Google Drive Backup v0.110.4]

**Zigbee/Z-Wave:**
- [e.g., Zigbee2MQTT v1.33.2]
- [e.g., Z-Wave JS UI v1.12.0]

**Other:**
- [List other add-ons]

### Custom Components (HACS)

**Integrations:**
- [e.g., Browser Mod]
- [e.g., Adaptive Lighting]
- [List all custom integrations]

**Frontend:**
- [e.g., Mini Graph Card]
- [e.g., Button Card]
- [List all custom cards]

**Themes:**
- [List installed themes]

## Integrations

### Cloud Services

- [e.g., Google Assistant]
- [e.g., Amazon Alexa]
- [e.g., Nabu Casa]
- [List all cloud integrations]

### Smart Home Platforms

- [e.g., Philips Hue (Cloud)]
- [e.g., IKEA TRÅDFRI (Local)]
- [e.g., Shelly (Local)]
- [List all platforms]

### Media

- [e.g., Plex Media Server]
- [e.g., Spotify]
- [e.g., YouTube Music]
- [List all media integrations]

### Monitoring

- [e.g., System Monitor]
- [e.g., Speedtest.net]
- [e.g., Uptime Robot]
- [List all monitoring integrations]

### Notifications

- [e.g., Telegram]
- [e.g., Discord]
- [e.g., Email (SMTP)]
- [List all notification methods]

### Weather

- [e.g., OpenWeatherMap]
- [e.g., Met.no]
- [List all weather integrations]

### Other Integrations

- [List any other significant integrations]

## Device Inventory

### Device Count by Type

- **Lights:** [count]
- **Switches:** [count]
- **Sensors:** [count]
- **Binary Sensors:** [count]
- **Climate:** [count]
- **Covers:** [count]
- **Media Players:** [count]
- **Cameras:** [count]
- **Locks:** [count]
- **Fans:** [count]
- **Automations:** [count]
- **Scripts:** [count]
- **Scenes:** [count]

### Device Breakdown by Protocol

- **Zigbee:** [count] devices
- **Z-Wave:** [count] devices
- **WiFi:** [count] devices
- **MQTT:** [count] devices
- **Bluetooth:** [count] devices
- **Wired (Ethernet):** [count] devices

## Automation Structure

### Organization Method

- [By room / By function / By YAML files / Packages / Mixed]

### File Structure

Describe how automations are organized:

```
[e.g.,
/config/automations.yaml - Main automation file
/config/automations/ - Split by room
  - living_room.yaml
  - bedroom.yaml
  - kitchen.yaml
]
```

### Complexity Metrics

- **Simple Automations:** [count] - Single trigger, simple action
- **Medium Automations:** [count] - Multiple conditions, sequences
- **Complex Automations:** [count] - Advanced templates, choose/repeat

## Backup Configuration

### Backup Method

**Primary Backup:**
- Method: [Add-on name / Script / Manual]
- Frequency: [e.g., Daily at 3:00 AM]
- Type: [Full / Partial]
- Location: [Local / NAS / Cloud]

**Secondary Backup:**
- Method: [if applicable]
- Frequency: [schedule]
- Location: [destination]

### Retention Policy

- **Local:** [e.g., Keep last 3 backups]
- **NAS:** [e.g., Keep last 7 backups]
- **Cloud:** [e.g., Keep last 30 backups]

### Backup Size

- **Typical Full Backup:** [approximate size]
- **Total Backup Storage Used:** [approximate]

## Performance Characteristics

### Resource Usage

**Typical Operation:**
- CPU Usage: [e.g., 10-20%]
- Memory Usage: [e.g., 2-3GB]
- Disk I/O: [e.g., Low]

**Startup:**
- Boot Time: [approximate]
- Component Load Time: [approximate]

**Database:**
- Recorder Overhead: [impact description]
- Query Performance: [typical response times]

## Known Issues and Workarounds

### Current Issues

**Issue 1:**
- Description: [problem description]
- Impact: [what's affected]
- Workaround: [temporary solution]
- Tracking: [link to issue or notes]

**Issue 2:**
- [same format]

### Resolved Issues

**Past Issue 1:**
- Description: [what it was]
- Resolution: [how it was fixed]
- Date Resolved: [when]

## Maintenance History

### Recent Updates

**[Date]** - [Update description]
- Core: [version] → [new version]
- Changes made:
  - [change 1]
  - [change 2]
- Issues encountered: [if any]

**[Date]** - [Update description]
- [same format]

### Hardware Changes

**[Date]** - [Hardware change description]
- [Details of what was changed and why]

### Configuration Changes

**[Date]** - [Configuration change]
- [Description of what was changed]
- [Reason for change]

## Access Information

### User Accounts

**Admin Users:**
- [Username] - [Description/Purpose]

**Regular Users:**
- [Username] - [Description/Purpose]

**Service Accounts:**
- [Account name] - [Purpose]

### API Access

**Long-Lived Access Tokens:**
- [Token name] - [Purpose] - Created: [date]

**Integrations Using API:**
- [Integration name] - [Purpose]

## External Dependencies

### Required Services

**Internal Network:**
- [Service name] at [IP] - [Purpose]
- [e.g., NAS at 192.168.1.100 - Backup storage]

**Internet Services:**
- [Service name] - [Purpose]
- [e.g., OpenWeatherMap API - Weather data]

### Service Accounts

**Cloud Services:**
- [Service] - [Account email] - [Purpose]

## Recovery Information

### Emergency Contacts

**Support Resources:**
- Home Assistant Community: [forum URL]
- GitHub Issues: [if applicable]
- Local Support: [if applicable]

### Recovery Procedures

**Configuration Recovery:**
1. [Step-by-step procedure]

**Full System Recovery:**
1. [Step-by-step procedure]

### Last Known Good State

**Date:** [date of last verified good backup]
**Backup Location:** [where to find it]
**Notes:** [any special considerations]

## Documentation

### Additional Documentation

**Network Diagrams:**
- Location: [where diagrams are stored]

**Device Manuals:**
- Location: [where manuals are stored]

**Custom Documentation:**
- [List of any custom docs you maintain]

### Change Log

Maintain a record of significant changes:

**[Date]** - [Change summary]
- [Details]

---

**Last Updated:** [Date]
**Updated By:** [Who maintains this]
**Review Schedule:** [How often to update this doc]
