Check filesystem health and integrity:

1. Check filesystem types and mount status: `mount | grep "^/dev"`
2. Review filesystem health: `df -h` and identify issues
3. Check XFS filesystem health: `xfs_info / && xfs_repair -n /dev/sda1 2>&1 | head -20`
4. Check for filesystem errors in dmesg: `dmesg -T | grep -i "error\|failed" | tail -20`
5. Review SMART status if available: `smartctl -H /dev/sda` (or available disks)
6. Check inode usage: `df -i`
7. Review mount options: `cat /etc/fstab`
8. Check for read-only filesystems: `mount | grep ro,`

Provide Daniel with:
- Overall filesystem health status
- Any XFS-specific issues (this server uses XFS)
- SMART health status for disks
- Inode usage (can fill up even with disk space available)
- Mount points and their status
- Any filesystem errors from kernel logs
- Recommendations for maintenance
- Warning flags for anything concerning
