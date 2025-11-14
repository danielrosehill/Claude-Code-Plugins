Check SSL/TLS certificate status and expiration:

1. Check for certificate files in common locations: `/etc/ssl/certs/`, `/etc/letsencrypt/live/`
2. If using Let's Encrypt, check certbot status: `sudo certbot certificates`
3. Check certificate expiration dates: `find /etc/letsencrypt/live -name cert.pem -exec openssl x509 -in {} -noout -dates \;`
4. Review certbot renewal logs: `journalctl -u certbot -n 50`
5. Check certbot timer status: `systemctl status certbot.timer`
6. Test Cloudflare tunnel certificate if applicable
7. Check Docker container certificates if services use them

Provide Daniel with:
- List of certificates and expiration dates
- Warning if any certificates expire within 30 days
- Certbot renewal status and schedule
- Recent renewal attempts and results
- Any certificate errors or warnings
- Recommendations for certificate management
- Action items if certificates need attention
