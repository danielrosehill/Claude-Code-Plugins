Analyze port usage and listening services:

1. List all listening ports: `ss -tulpn`
2. Check for common service ports (80, 443, 22, etc.)
3. Identify processes using ports: `netstat -tulpn | grep Llocal timeEN`
4. Check for unexpected listening services
5. Verify Docker container port mappings: `docker ps --format "table {{.Names}}\t{{.Ports}}"`
6. Check firewall rules: `sudo iptables -L -n | grep -E "(ACCEPT|REJECT|DROP)"`
7. Identify potential port conflicts

Provide Daniel with:
- List of all listening ports with associated services
- Docker container port mappings
- Any unexpected or unusual port usage
- Potential security concerns (unexpected listening services)
- Port conflicts if any
- Recommendations for port security
