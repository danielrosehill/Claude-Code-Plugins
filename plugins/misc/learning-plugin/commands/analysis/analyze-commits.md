Analyze and summarize changes from repository commit history.

Your task:
1. Examine recent commit history:
   ```bash
   git log --oneline -20
   git log --since="1 week ago" --oneline
   ```

2. Analyze the changes made:
   - Types of changes (features, fixes, refactoring, docs)
   - Files most frequently modified
   - Code complexity trends
   - Patterns in commit messages

3. Identify incremental progress:
   - Feature development trajectory
   - Bug fix patterns
   - Refactoring efforts
   - Documentation improvements

4. Determine technical skills demonstrated:
   - Programming languages used
   - Frameworks and libraries
   - Design patterns implemented
   - Testing approaches
   - DevOps practices

5. Generate summary report:
   ```markdown
   ## Commit Analysis Summary

   **Period:** Last 30 days
   **Total Commits:** 45

   ### Key Changes:
   - Feature: User authentication system (15 commits)
   - Refactor: Database layer optimization (8 commits)
   - Fix: Various UI bugs (12 commits)
   - Docs: API documentation updates (10 commits)

   ### Technical Skills Demonstrated:
   - Node.js/Express backend development
   - React frontend development
   - PostgreSQL database design
   - JWT authentication
   - REST API design
   - Git workflow management

   ### Most Active Areas:
   - src/auth/ (25 commits)
   - src/components/ (18 commits)
   - docs/api/ (10 commits)
   ```

Help users understand project evolution and learning progress through commit analysis.
