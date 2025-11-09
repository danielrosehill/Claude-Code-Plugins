Troubleshoot Docker environment issues and provide best practices guidance.

Your task:
1. Diagnose common Docker problems:
   - Container won't start
   - Network connectivity issues
   - Volume mounting problems
   - Permission errors
   - Image build failures
   - Resource constraints

2. Provide troubleshooting steps:
   ```bash
   # Check container logs
   docker logs container_name

   # Inspect container
   docker inspect container_name

   # Check resource usage
   docker stats

   # View running containers
   docker ps -a
   ```

3. Address specific issues:
   - Port conflicts
   - Volume permission issues (especially with bind mounts)
   - Network bridge problems
   - Image layer caching
   - Docker daemon issues

4. Best practices guidance:
   - Multi-stage builds
   - .dockerignore usage
   - Layer optimization
   - Security considerations
   - Resource limits

5. Deployment strategies:
   - Docker Compose for multi-container apps
   - Health checks
   - Restart policies
   - Environment variable management

Refer to latest Docker documentation. Help users with basic Linux/sysadmin knowledge overcome Docker challenges.
