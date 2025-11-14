Verify GitHub CLI (gh) is working correctly:

1. Check gh installation: `which gh && gh --version`
2. Verify authentication: `gh auth status`
3. Test API access: `gh api user`
4. Check configured git user: `git config --global user.name && git config --global user.email`
5. Test repo operations: `gh repo list --limit 5`
6. Verify SSH key access: `ssh -T git@github.com`
7. Check gh extensions: `gh extension list`
8. Test gh cli functionality: `gh issue list --repo anthropics/claude-code --limit 3`

Provide Daniel with:
- GitHub CLI installation status and version
- Authentication status (logged in user)
- API connectivity status
- Git configuration (name, email)
- SSH key authentication status
- List of recent accessible repos
- Any installed gh extensions
- Overall health: WORKING / ISSUES FOUND
- Troubleshooting steps if issues detected:
  - Reauthentication command if needed
  - SSH key setup if failing
  - Configuration fixes

Note: Daniel uses gh extensively for repo creation and management.
