Check multi-disk array and RAID status:

1. Check for software RAID: `cat /proc/mdstat`
2. If using mdadm, get detailed status: `sudo mdadm --detail /dev/md*`
3. Check individual disk health: `sudo smartctl -a /dev/sd[a-z]`
4. Review disk errors: `dmesg | grep -i "sd[a-z].*error"`
5. Check filesystem on array: `df -h | grep -E "(md|mapper)"`
6. Review LVM if used: `sudo lvdisplay && sudo vgdisplay && sudo pvdisplay`
7. Check disk I/O stats: `iostat -x 1 3`
8. Review array rebuild status if active: `cat /proc/mdstat | grep -i resync`
9. Check array configuration: `lsblk -o NAME,SIZE,TYPE,MOUNTPOINT,FSTYPE`

Provide Daniel with:
- RAID array status (healthy, degraded, failed)
- Individual disk status and health
- Array rebuild progress if applicable
- SMART data for all disks in array
- Any disk errors or warnings
- Array configuration (RAID level, devices)
- Performance metrics
- LVM status if applicable
- Recommendations for array maintenance
- Critical warnings if array is degraded or disks are failing
- Suggestions for disk replacement if needed
