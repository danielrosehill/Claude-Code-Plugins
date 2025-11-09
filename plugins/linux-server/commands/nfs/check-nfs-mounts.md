Check NFS mounts and availability to the NAS:

1. Check currently mounted NFS shares: `mount | grep nfs`
2. Review /etc/fstab for NFS entries: `grep nfs /etc/fstab`
3. Test NAS connectivity: `ping -c 3 10.0.0.50`
4. Check NFS service status: `systemctl status nfs-client.target`
5. List available NFS exports from NAS: `showmount -e 10.0.0.50`
6. Test NFS mount manually (if not mounted): `mkdir -p /tmp/nfs-test && mount -t nfs 10.0.0.50:/export /tmp/nfs-test`
7. Check mount point permissions and accessibility
8. Review NFS-related logs: `journalctl | grep -i nfs | tail -20`
9. Check for stale NFS handles: `grep -i "stale" /var/log/syslog`

Provide Daniel with:
- Currently mounted NFS shares and their status
- NAS connectivity (10.0.0.50)
- Available NFS exports from the NAS
- Configured but unmounted NFS shares
- Mount point accessibility and permissions
- Any NFS errors or warnings
- Stale file handles or connectivity issues
- Recommendations:
  - Mounting missing shares
  - Fixing permission issues
  - Addressing stale mounts
  - Updating /etc/fstab if needed

Note: NAS at 10.0.0.50 can be used as overflow storage. Some mounts may be legacy but should be documented.
