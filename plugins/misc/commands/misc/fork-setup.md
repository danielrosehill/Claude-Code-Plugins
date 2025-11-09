Set up a GitHub fork for contributing to an open source project.

Your task:
1. Guide the user through forking best practices:
   - Fork the repository on GitHub (if not already done)
   - Clone their fork locally
   - Add upstream remote pointing to original repository
   - Set up branch tracking

2. Configure the fork:
   ```bash
   # Clone your fork
   git clone [your-fork-url]

   # Add upstream remote
   git remote add upstream [original-repo-url]

   # Verify remotes
   git remote -v

   # Fetch upstream
   git fetch upstream
   ```

3. Explain workflow for keeping fork synchronized:
   - Regularly fetch upstream changes
   - Merge upstream/main into local main
   - Create feature branches from updated main

4. Provide guidance on contributing:
   - Creating meaningful commits
   - Following project contribution guidelines
   - Opening pull requests to upstream

Help user navigate GitHub fork workflow and best practices.
