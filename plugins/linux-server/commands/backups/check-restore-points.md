Check available backup and restore points on the server:

1. **Local Backups**:
   - Check backup directory: `ls -lah ~/backups/`
   - List backup subdirectories: `find ~/backups -maxdepth 2 -type d`
   - Check backup sizes: `du -sh ~/backups/*`
   - Recent backups: `find ~/backups -type f -mtime -7 -ls | head -20`
   - Oldest backups: `find ~/backups -type f -printf '%T+ %p\n' | sort | head -20`

2. **Backup Organization**:
   - Check for dated backup directories
   - Identify backup types (database dumps, file archives, etc.)
   - Look for backup metadata/manifests
   - Check for backup verification logs

3. **System Snapshots**:
   - LVM snapshots: `sudo lvs -o lv_name,vg_name,lv_size,lv_attr | grep snapshot` (if using LVM)
   - Check for timeshift snapshots: `sudo timeshift --list` (if installed)
   - Btrfs snapshots: `sudo btrfs subvolume list /` (if using btrfs)
   - ZFS snapshots: `sudo zfs list -t snapshot` (if using ZFS)

4. **Proxmox Backups** (check from host if accessible):
   - VM backups on host: `ssh proxmox-host "ls -lah /var/lib/vz/dump/"`
   - Recent VM backups: `ssh proxmox-host "find /var/lib/vz/dump/ -name '*.vma*' -o -name '*.tar*' -mtime -14"`

5. **Cloud/Remote Backups**:
   - Check rclone remotes: `rclone listremotes`
   - List recent cloud backups: `rclone lsf --max-age 7d <remote>:backups/` (if configured)
   - Check backup sync status logs

6. **NAS Backups**:
   - Check NAS mount: `mount | grep 192.168.1.100`
   - List NAS backup directories: `ls -lah /path/to/nas/mount/backups/`
   - Recent NAS backups: `find /path/to/nas/mount/backups -type f -mtime -7`

7. **Docker Volume Backups**:
   - Check for volume backups: `find ~/backups -name '*volume*' -o -name '*docker*'`
   - List Docker volumes: `docker volume ls`

8. **Database Backups**:
   - Find SQL dumps: `find ~/backups -name '*.sql' -o -name '*.sql.gz' -mtime -7`
   - Check database backup directories

9. **Backup Integrity**:
   - Look for checksums: `find ~/backups -name '*.md5' -o -name '*.sha*'`
   - Check for backup logs: `find ~/backups -name '*.log'`

Provide Daniel with:
- **Summary** of available restore points organized by:
  - Backup type (files, databases, volumes, system)
  - Age (newest to oldest)
  - Location (local, NAS, cloud)
  - Size
- **Coverage analysis**:
  - What is being backed up
  - What might be missing
  - Backup frequency assessment
- **Restore point recommendations**:
  - Which backups are suitable for recovery
  - Age and freshness of backups
  - Gaps in backup coverage
- **Health indicators**:
  - Recent backup activity
  - Backup sizes over time (growth trends)
  - Missing or stale backups
  - Integrity verification status
- **Quick restore paths**:
  - Most recent full backup
  - Most recent incremental
  - Fastest restore option
- **Action items**:
  - Old backups to clean up
  - Missing backups to create
  - Backup verification needed
  - Retention policy compliance

Format as a clear report with sections for each backup type and restore point category.
