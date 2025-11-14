---
description: Check Home Assistant storage and disk space
tags: [project, gitignored]
---

Analyze storage usage and disk space:

1. Overall Storage
   - Display total storage capacity
   - Show used vs available space
   - Calculate usage percentage
   - Identify storage trends (growth rate)

2. Directory Analysis
   - Check /config directory size
   - Review database size
   - Check backup storage usage
   - Identify /media and /www storage
   - Review add-on storage usage
   - Check log file sizes

3. Large Files
   - Identify largest files and directories
   - Find old log files
   - Locate large media files
   - Identify temporary files

4. Database Storage
   - Check home-assistant_v2.db size
   - Review database growth trend
   - Assess recorder data volume
   - Check for database bloat

5. Backup Storage
   - Review snapshot/backup disk usage
   - Identify oldest backups
   - Calculate backup retention impact
   - Check for backup redundancy

6. Cleanup Opportunities
   - Suggest old files for removal
   - Recommend log rotation settings
   - Identify unused media files
   - Suggest database purge adjustments
   - Recommend backup cleanup

7. Storage Warnings
   - Flag low disk space conditions
   - Warn if space below threshold
   - Predict when storage will fill
   - Recommend expansion if needed

Provide storage report with cleanup recommendations and urgency levels.
