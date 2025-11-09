---
description: Review Home Assistant automations for issues and optimization
tags: [project, gitignored]
---

Analyze automation configuration and performance:

1. Automation Inventory
   - List all automations
   - Show enabled/disabled status
   - Group by area or function

2. Execution Analysis
   - Check automation trigger history
   - Identify automations that never trigger
   - Find automations that trigger too frequently
   - Note automations with execution errors

3. Performance Issues
   - Identify slow-executing automations
   - Find automations with complex conditions
   - Note automations causing system load

4. Configuration Problems
   - Deprecated trigger/condition/action syntax
   - Invalid entity references
   - Logic errors or infinite loops
   - Missing error handling

5. Optimization Opportunities
   - Suggest consolidation of similar automations
   - Recommend more efficient trigger methods
   - Identify redundant automations
   - Suggest template optimizations

6. Best Practices
   - Check for proper naming conventions
   - Review use of descriptions
   - Assess mode settings (single, restart, parallel, queued)
   - Evaluate safety measures (e.g., delay, conditions)

Provide prioritized recommendations for fixes and improvements.
