Test email notification system:

1. Check mail service status: `systemctl status postfix || systemctl status sendmail || systemctl status exim4`
2. Check mail configuration: `cat /etc/postfix/main.cf` or equivalent
3. Test sending email: `echo "Test email from server" | mail -s "Server Email Test" <configured_email>`
4. Check mail queue: `mailq`
5. Review mail logs: `journalctl -u postfix -n 50` or `tail -50 /var/log/mail.log`
6. Check for relay configuration
7. Verify DNS records for email: `dig MX $(hostname -d)`
8. Test SMTP connectivity: `telnet smtp.gmail.com 587` or relevant SMTP server
9. Check for common email issues: `dmesg | grep -i mail`

Provide Daniel with:
- Mail service status
- Test email result (success/failure)
- Mail queue status
- Recent mail log entries
- Any mail delivery errors
- SMTP configuration verification
- DNS/MX record status
- Recommendations for email configuration
- Troubleshooting steps if test failed
- Suggestions for improving email delivery reliability
