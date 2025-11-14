Check Docker volume configuration and health:

1. List all Docker volumes: `docker volume ls`
2. Check volume usage: `docker system df -v`
3. Identify volumes and their mount points: `docker volume inspect $(docker volume ls -q)`
4. Check if volumes are in designated data directory
5. Identify orphaned volumes: `docker volume ls -f dangling=true`
6. Check volume permissions: `ls -la /path/to/docker/volumes/`
7. Review volume mounts for running containers: `docker ps -q | xargs docker inspect --format '{{ .Name }}: {{ range .Mounts }}{{ .Source }} -> {{ .Destination }}, {{ end }}'`
8. Check filesystem usage of volume storage: `df -h /path/to/docker/volumes/`

Provide Daniel with:
- List of all volumes with sizes
- Volume mount locations
- Volumes properly located in designated data directory
- Orphaned or dangling volumes
- Volume permission issues
- Space consumed by volumes
- Containers using each volume
- Volumes without proper backup location
- Recommendations for volume cleanup
- Suggestions for volume organization
- Warnings if volumes are not in proper data directory
- Action items for volume management
