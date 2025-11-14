---
description: List and analyze Home Assistant entities
tags: [project, gitignored]
---

Review entity configuration and status:

1. Entity Inventory
   - Total entity count by domain (light, switch, sensor, etc.)
   - List entities by integration
   - Identify newly added entities

2. Entity Health
   - Identify unavailable entities
   - Find entities with "unknown" or "None" states
   - Check for entities that haven't updated recently

3. Naming & Organization
   - Review entity naming conventions
   - Identify entities with unclear names
   - Check for duplicate entity names
   - Suggest reorganization if needed

4. Configuration Issues
   - Find deprecated entity features
   - Identify misconfigured entities
   - Note entities without proper device association

5. Unused Entities
   - Identify entities not used in any automation, script, or UI
   - Suggest entities that could be disabled
   - Note entities consuming resources unnecessarily

6. Entity Relationships
   - Show which entities are used in automations
   - Identify critical entities
   - Map dependencies

Provide organized entity list with health assessment and recommendations.
