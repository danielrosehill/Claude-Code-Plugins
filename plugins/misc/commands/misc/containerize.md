Containerize this development project using Docker.

Your task:
1. Analyze the project to understand:
   - Programming language and runtime
   - Dependencies and package managers
   - Development vs production requirements
   - Port requirements

2. Create a simplified Docker setup:
   - Write a Dockerfile optimized for the project
   - Create docker-compose.yml if multiple services needed
   - Add .dockerignore file
   - Document build and run commands

3. Ensure development workflow compatibility:
   - Volume mounts for live code updates
   - Environment variable configuration
   - Port mappings
   - Development dependencies included

4. Provide clear instructions:
   ```bash
   # Build the image
   docker build -t project-name .

   # Run the container
   docker run -p port:port project-name

   # Or with docker-compose
   docker-compose up
   ```

Focus on creating a simple, functional Docker setup for exclusive development within the container environment.
