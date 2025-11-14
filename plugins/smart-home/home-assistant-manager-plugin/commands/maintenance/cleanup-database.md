---
description: Clean up Home Assistant database and optimize
tags: [project, gitignored]
---

Perform database cleanup and optimization:

1. Pre-Cleanup Assessment
   - Check current database size
   - Review recorder configuration
   - Assess system resources
   - Create backup recommendation

2. Database Analysis
   - Identify largest tables
   - Find old or unnecessary data
   - Check for data anomalies
   - Review entity history retention

3. Purge Configuration
   - Review current purge settings
   - Suggest optimal purge duration
   - Recommend entities to exclude
   - Assess purge schedule

4. Cleanup Actions
   - Execute database purge
   - Remove events older than retention period
   - Clean up statistics data
   - Optimize database tables (if supported)

5. Optimization
   - Rebuild database indexes (if applicable)
   - Vacuum database (SQLite)
   - Optimize tables (MariaDB/PostgreSQL)
   - Update statistics

6. Post-Cleanup Verification
   - Check database size after cleanup
   - Verify data integrity
   - Test query performance
   - Confirm recorder still functioning

7. Results
   - Report space recovered
   - Show new database size
   - Estimate time until next cleanup needed
   - Recommend ongoing settings

**Warning:** This operation may take several minutes and increase system load. Recommend running during low-activity periods.

Provide cleanup report with before/after statistics.
