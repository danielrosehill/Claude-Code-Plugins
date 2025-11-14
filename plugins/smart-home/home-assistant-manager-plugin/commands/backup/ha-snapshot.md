---
description: Create a Home Assistant snapshot/backup
tags: [project, gitignored]
---

Create a snapshot of the Home Assistant installation:

1. Pre-Snapshot Checks
   - Verify available disk space for snapshot
   - Check current system status
   - Ensure no critical operations are running

2. Snapshot Creation
   - Create a full snapshot (or partial if requested)
   - Include configuration files
   - Include add-on data
   - Include media files if space permits

3. Snapshot Verification
   - Verify snapshot was created successfully
   - Check snapshot file size and integrity
   - Note snapshot timestamp and location

4. Metadata
   - Document what prompted this snapshot
   - List any custom components or configurations
   - Note current versions (Core, Supervisor, OS)

5. Post-Snapshot Actions
   - Copy snapshot to backup location if configured
   - Update snapshot inventory
   - Clean up old snapshots if retention policy exists

Provide snapshot details and confirmation of successful backup.
