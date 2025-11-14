Set up a hot-reloading development server for instant code changes.

Your task:
1. Detect the project type and framework:
   - React/Vue/Angular (Vite, Webpack, etc.)
   - Node.js/Express (nodemon, node --watch)
   - Python (Flask/Django with auto-reload)
   - Static sites (live-server, browser-sync)

2. Configure hot reloading based on the stack:
   - Install necessary dev dependencies
   - Update configuration files
   - Set up file watching
   - Configure port and proxy settings

3. Create or update dev scripts:
   ```json
   "scripts": {
     "dev": "appropriate-dev-server --watch",
     "start": "production-command"
   }
   ```

4. Optimize for performance:
   - Configure file watch patterns
   - Exclude unnecessary directories
   - Set up source maps
   - Enable HMR (Hot Module Replacement) if available

5. Document the dev server usage:
   - How to start the dev server
   - Available options and flags
   - Port configuration
   - Troubleshooting common issues

Ensure instant feedback on code changes for optimal development workflow.
