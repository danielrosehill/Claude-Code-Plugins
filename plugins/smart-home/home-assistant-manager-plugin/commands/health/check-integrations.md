---
description: List and check status of all Home Assistant integrations
tags: [project, gitignored]
---

Review all configured integrations and their health:

1. Integration Inventory
   - List all configured integrations
   - Show integration versions
   - Note update availability

2. Connection Status
   - Check which integrations are connected
   - Identify failed or unavailable integrations
   - Note authentication issues

3. Device Coverage
   - Count entities provided by each integration
   - Identify integrations with no entities (possible issue)
   - Check for duplicate entities

4. Error Analysis
   - Review integration-specific error logs
   - Identify recurring connection failures
   - Note API rate limit issues

5. Performance
   - Identify slow-loading integrations
   - Check for integrations causing startup delays
   - Note resource-intensive integrations

6. Configuration Issues
   - Deprecated integration settings
   - Missing required configuration
   - Recommended settings not applied

Provide prioritized remediation steps for any issues found.
