---
description: Verify backup integrity and completeness
tags: [project, gitignored]
---

Verify that backups are valid and complete:

1. Backup File Integrity
   - Check backup file exists and is readable
   - Verify file size is reasonable
   - Check file format and compression
   - Attempt to open/read backup file

2. Content Verification
   - List contents of backup
   - Verify key files are present (configuration.yaml, etc.)
   - Check for add-on data inclusion
   - Verify custom component inclusion

3. Completeness Check
   - Compare backup size to expected size
   - Verify all configured items are backed up
   - Check for missing critical files
   - Ensure secrets are included (if applicable)

4. Metadata Validation
   - Check backup timestamp accuracy
   - Verify version information
   - Confirm backup type (full/partial)
   - Validate backup description

5. Accessibility Test
   - Confirm backup can be accessed from restore location
   - Test backup retrieval from off-site storage
   - Verify proper permissions
   - Check encryption status (if applicable)

6. Restore Test Recommendation
   - Suggest periodic restore testing
   - Document restore process
   - Estimate restore time
   - Identify restore dependencies

Provide detailed backup verification report with pass/fail status.
