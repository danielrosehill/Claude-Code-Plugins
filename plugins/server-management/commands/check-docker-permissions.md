Check Docker volume and data directory permissions:

1. **Docker data location**: Verify `/var/lib/docker/volumes/` permissions
2. **Volume list**: `docker volume ls`
3. **Volume permissions**: Check ownership and permissions for each volume
   - `docker volume inspect <volume>` to get Mountpoint
   - `ls -la <mountpoint>` to check permissions
4. **Docker deployments**: Check ~/docker-network/deployments directory structure
5. **Data directories**: Verify dedicated Docker data directories exist and have correct permissions
6. **User permissions**: Check if docker group membership is correct: `groups`
7. **Container user IDs**: Review running containers for user/UID: `docker ps --format "{{.Names}}" | xargs -I {} docker inspect {} --format "{{.Name}}: User={{.Config.User}}"`
8. **Permission errors in logs**: `docker logs <container> 2>&1 | grep -i "permission denied"`

Check for common issues:
- Root-owned volumes that should be user-owned
- World-writable directories (security risk)
- Restrictive permissions causing container failures
- Mismatched UIDs between container and host
- Missing directories for volume mounts

Provide Daniel with:
- List of all Docker volumes with their permissions
- Any permission issues detected
- Containers experiencing permission errors
- Data directories and their ownership
- UID/GID mismatches between containers and hosts
- Security concerns (overly permissive)
- Functional concerns (too restrictive)
- Recommended fixes with specific commands:
  - `chown` commands for ownership fixes
  - `chmod` commands for permission fixes
- Best practices for Docker volume permissions

Note: This server follows principle of dedicated, clearly-delineated Docker data directories.
