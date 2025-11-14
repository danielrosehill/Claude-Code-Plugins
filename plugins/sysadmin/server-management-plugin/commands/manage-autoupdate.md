Review and configure automatic update settings for the server.

Check current autoupdate configuration:

1. **Unattended-Upgrades Status**:
   - Check if `unattended-upgrades` is installed and enabled
   - Review `/etc/apt/apt.conf.d/50unattended-upgrades` configuration
   - Check `/etc/apt/apt.conf.d/20auto-upgrades` settings

2. **Current Configuration**:
   - What updates are applied automatically (security, all, none)
   - Email notifications setup
   - Auto-reboot configuration
   - Update schedule (timing)
   - Blacklisted packages (packages excluded from auto-update)

3. **Systemd Timers**:
   - Check `apt-daily.timer` and `apt-daily-upgrade.timer` status
   - Review when automatic updates run

4. **Update Logs**:
   - Review recent automatic update history: `/var/log/unattended-upgrades/`
   - Check for any failed automatic updates

Provide a summary report with:
- Current autoupdate status (enabled/disabled)
- What gets updated automatically
- When updates run
- Any configuration issues or recommendations

Then offer to help with:
- Enabling/disabling automatic updates
- Adjusting which packages update automatically
- Configuring email notifications
- Setting up auto-reboot for kernel updates (if desired)
- Adding packages to the blacklist
- Adjusting update schedule

**Recommendation for this server**: Given this is a low-resource VM running critical services, recommend:
- Enable automatic security updates only
- Disable automatic kernel updates (require manual review)
- Configure email notifications for update activity
- Avoid auto-reboot (manual reboot after reviewing updates)
- Blacklist Docker and other critical service packages
