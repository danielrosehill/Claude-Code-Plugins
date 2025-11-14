Check XFS filesystem health and performance:

1. Identify XFS filesystems: `df -T | grep xfs`
2. Check filesystem usage: `df -h | grep xfs`
3. Check XFS-specific info: `xfs_info /` (or relevant mount point)
4. Review XFS statistics: `xfs_db -r -c "sb 0" -c "print" <device>` (read-only)
5. Check for fragmentation: `xfs_db -r -c "freesp -s" <device>`
6. Review filesystem errors: `dmesg | grep -i xfs`
7. Check filesystem mount options: `mount | grep xfs`
8. Review I/O statistics: `iostat -x 1 3 | grep -A1 <device>`
9. Check SMART status of underlying disks: `sudo smartctl -a <device>`

Provide Daniel with:
- XFS filesystem usage and available space
- Filesystem configuration (block size, features)
- Fragmentation status
- Any filesystem errors or warnings
- Mount options in use
- I/O performance metrics
- Underlying disk health (SMART data)
- Recommendations for XFS optimization
- Warning if space is running low (<20% free)
- Suggestions for maintenance (defragmentation, etc.)
