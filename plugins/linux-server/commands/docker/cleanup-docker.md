Identify inactive and old Docker deployments for potential removal:

1. Navigate to ~/docker-network/deployments
2. List active and inactive deployment directories
3. Check Docker images: `docker images`
4. Identify dangling images: `docker images -f "dangling=true"`
5. Check stopped containers: `docker ps -a --filter "status=exited"`
6. Review unused volumes: `docker volume ls -f "dangling=true"`
7. Check Docker space: `docker system df`
8. Review last modified dates of deployment directories
9. Check for containers not started in >30 days
10. Identify deployments without corresponding running containers

**IMPORTANT**: DO NOT remove anything automatically. Only identify candidates.

Provide Daniel with:
- List of inactive deployment directories with last modified dates
- Stopped containers and their age
- Dangling images and their sizes
- Unused volumes and their sizes
- Estimated space recoverable from each cleanup action
- Deployments that appear abandoned (no recent activity)
- Safe cleanup commands for Daniel to review:
  - `docker image prune -a` (remove unused images)
  - `docker volume prune` (remove unused volumes)
  - `docker container prune` (remove stopped containers)
- Recommendations for archiving before deletion
- Risks and dependencies to consider

**Require explicit approval before any deletions**

Note: Daniel uses atomic deployments with one GitHub repo per service. Verify repos are pushed before removing local deployments.
