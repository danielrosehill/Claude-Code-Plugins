This machine is running Home Assistant (home automation platform).

Audit its cybersecurity with focus on:
- Web interface authentication and password strength
- API token security and exposure
- Integration credentials and secret storage
- Network exposure (internal vs external access)
- HTTPS/TLS configuration
- Add-on security and permissions
- MQTT broker security (if used)
- Database security and backup encryption
- User account management and 2FA status
- Zigbee/Z-Wave coordinator security
- Device authentication and pairing security
- Automation script injection risks
- Custom component security review
- Log exposure and sensitive data leakage
- Reverse proxy configuration
- Firewall rules for Home Assistant ports
- Update status for core and add-ons
- Webhook security and URL exposure

Do not remediate. However, you should document your findings in a detailed document written out to ~/ai-analysis. If it does not exist (the folder) create it to house the doc.
