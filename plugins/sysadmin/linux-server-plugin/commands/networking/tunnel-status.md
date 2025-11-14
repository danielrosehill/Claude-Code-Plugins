Check Cloudflare tunnel status and connectivity:

1. Check if cloudflared service is running: `systemctl status cloudflared`
2. Review tunnel logs: `journalctl -u cloudflared -n 50`
3. Check tunnel configuration: `cat ~/.cloudflared/config.yml` (if standard location)
4. Test external connectivity through tunnel endpoints
5. Check network connectivity to Cloudflare: `ping 1.1.1.1`
6. Review recent tunnel errors: `journalctl -u cloudflared -p err -n 20`
7. Check tunnel process resources: `ps aux | grep cloudflared`

Provide Daniel with:
- Current tunnel status (up/down)
- Any connectivity issues or errors
- Tunnel resource usage
- Recent errors or warnings from logs
- Recommendations for tunnel optimization
- Suggestions if tunnel is down or unreliable
