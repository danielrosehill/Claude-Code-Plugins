Check this VM's status from Proxmox host perspective:

1. SSH to Proxmox host and check VM status: `ssh proxmox-host "qm status <VMID>"`
2. Get VM configuration: `ssh proxmox-host "qm config <VMID>"`
3. Check VM resource usage from host: `ssh proxmox-host "qm monitor <VMID> info status"`
4. Review VM snapshots: `ssh proxmox-host "qm listsnapshot <VMID>"`
5. Check GPU passthrough status: `ssh proxmox-host "qm config <VMID> | grep hostpci"`
6. Review VM backup status: `ssh proxmox-host "vzdump --dumpdir /var/lib/vz/dump"`
7. Check host resource allocation: `ssh proxmox-host "pvesh get /nodes/localhost/status"`

Note: Replace <VMID> with the actual VM ID. May need to adapt SSH command based on actual host configuration.

Provide Daniel with:
- VM running status and uptime
- Allocated resources (CPU cores, RAM, disk)
- GPU passthrough configuration
- Available snapshots
- Recent backups
- Host resource availability
- Any alerts or warnings from Proxmox
- Recommendations for VM optimization
