Analyze disk space consumption and identify space hogs:

1. Check overall filesystem usage: `df -h`
2. Find largest directories in home: `du -h ~ --max-depth=2 | sort -hr | head -20`
3. Check Docker space usage: `docker system df -v`
4. Find large files: `find / -type f -size +1G 2>/dev/null | xargs ls -lh`
5. Check backup directory size: `du -sh ~/backups/*`
6. Analyze Docker deployments: `du -sh ~/docker-network/deployments/*`
7. Check log file sizes: `du -sh /var/log/*`
8. Identify old temp files: `find /tmp -type f -mtime +7`

Provide Daniel with:
- Filesystem usage summary with percentages
- Top 15 space-consuming directories
- Large files that may be candidates for cleanup
- Docker space breakdown (images, containers, volumes)
- Backup storage trends
- Log files consuming significant space
- Recommendations for space recovery
- Warning if any filesystem is >80% full
