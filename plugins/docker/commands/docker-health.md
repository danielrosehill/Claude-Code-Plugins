Check comprehensive Docker health status:

1. Verify Docker daemon is running: `systemctl status docker`
2. Check all containers status: `docker ps -a`
3. Review container resource usage: `docker stats --no-stream`
4. Check Docker disk usage: `docker system df`
5. Identify unhealthy containers: `docker ps --filter health=unhealthy`
6. Review Docker daemon logs for errors: `journalctl -u docker -n 50 -p err`
7. Check Docker network status: `docker network ls`
8. Verify Docker volumes: `docker volume ls`

Provide Daniel with:
- Summary of running vs stopped containers
- Resource usage per container
- Any unhealthy or restarting containers
- Disk space consumed by images, containers, volumes
- Recent Docker errors from logs
- Recommendations for optimization or troubleshooting
