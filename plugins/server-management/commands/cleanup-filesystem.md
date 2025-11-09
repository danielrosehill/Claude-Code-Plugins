Identify and safely clean up old/leftover files on the filesystem:

1. Find old log files: `find /var/log -type f -mtime +30 -size +100M`
2. Check old temp files: `find /tmp -type f -mtime +30`
3. Identify old backup files: `find ~/backups -type f -mtime +90`
4. Check for core dumps: `find / -name "core.*" 2>/dev/null`
5. Find large old files in home: `find ~ -type f -size +500M -mtime +60`
6. Check for old Docker logs: `du -sh /var/lib/docker/containers/*/*-json.log`
7. Find duplicate files (if fdupes installed)
8. Check package manager cache: `du -sh /var/cache/apt/archives`
9. Look for old downloads: `find ~/Downloads -type f -mtime +90 2>/dev/null`

**IMPORTANT**: DO NOT delete anything automatically. Only identify candidates.

Provide Daniel with:
- List of cleanup candidates organized by:
  - Old log files (with sizes)
  - Temp files past retention
  - Old backups past retention policy
  - Large old files
  - Core dumps
  - Package cache
- Estimated space recoverable for each category
- Recommended retention policies
- Safe cleanup commands for Daniel to review and approve
- Risks and considerations for each cleanup action

**Require explicit approval before any deletions**
