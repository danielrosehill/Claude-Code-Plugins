---
description: Check Home Assistant database health and performance
tags: [project, gitignored]
---

Analyze the Home Assistant database:

1. Database Information
   - Database type (SQLite, MariaDB, PostgreSQL)
   - Database size and growth rate
   - Location and disk space available

2. Recorder Configuration
   - Check purge settings
   - Review included/excluded entities
   - Assess commit interval
   - Check for efficient filtering

3. Performance Analysis
   - Database query performance
   - Identify slow queries
   - Check for database locks
   - Assess indexing effectiveness

4. Data Integrity
   - Check for database errors
   - Verify data consistency
   - Identify corrupted records
   - Check foreign key constraints

5. Optimization Opportunities
   - Suggest entities to exclude from recorder
   - Recommend purge setting adjustments
   - Identify unnecessary data retention
   - Suggest database maintenance tasks

6. Backup Status
   - Check if database is being backed up
   - Verify backup integrity
   - Assess backup frequency

Provide actionable recommendations for database optimization and health.
