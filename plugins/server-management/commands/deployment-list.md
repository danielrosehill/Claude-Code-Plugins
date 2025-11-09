List and analyze Docker deployments:

1. List active deployments: `ls -la ~/docker-network/deployments/active/`
2. List inactive deployments: `ls -la ~/docker-network/deployments/inactive/`
3. Check running containers: `docker ps --format "table {{.Names}}\t{{.Status}}\t{{.Ports}}"`
4. Check compose files: `find ~/docker-network/deployments/active -name "docker-compose.yml" -o -name "compose.yaml"`
5. Review deployment git status: `for d in ~/docker-network/deployments/active/*; do echo "=== $d ===" && cd "$d" && git status --short; done`
6. Check deployment resources: `docker ps --format "table {{.Names}}\t{{.Size}}"`
7. Review deployment networks: `docker network ls`
8. Check deployment volumes: `docker volume ls`

Provide Daniel with:
- List of active deployments with status
- List of inactive deployments
- Running vs configured services
- Deployments with uncommitted changes
- Resource usage per deployment
- Network and volume usage
- Any deployments without git repositories
- Recommendations for deployment organization
- Suggestions for cleaning up unused deployments
- Reminders about atomic deployment principle
