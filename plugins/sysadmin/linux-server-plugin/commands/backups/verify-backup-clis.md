Verify backup-related CLI tools are installed and working:

1. **Rclone**:
   - Check installation: `which rclone && rclone version`
   - List configured remotes: `rclone listremotes`
   - Test config access: `rclone config show`

2. **AWS CLI** (for Wasabi):
   - Check installation: `which aws && aws --version`
   - Test configuration: `aws configure list`
   - Test Wasabi access: `aws s3 ls --endpoint-url=https://s3.wasabisys.com` (if configured)

3. **Restic** (if used):
   - Check installation: `which restic && restic version`

4. **Duplicity** (if used):
   - Check installation: `which duplicity && duplicity --version`

5. **rsync**:
   - Check installation: `which rsync && rsync --version`

6. **Other tools**:
   - Check for tar, gzip, pigz availability
   - Check for age (encryption) if used

Provide Daniel with:
- Installation status of each backup tool
- Version information
- Configuration status (authenticated, remotes configured)
- Test connectivity results
- Missing tools that should be installed
- Configuration issues requiring attention
- Recommendations for:
  - Installing missing tools
  - Updating outdated versions
  - Fixing authentication issues
  - Testing backup operations

Overall status: ALL WORKING / SOME ISSUES / MULTIPLE FAILURES

Note: This server performs cloud backups (SaaS) and local backups. Both workflows need working CLIs.
