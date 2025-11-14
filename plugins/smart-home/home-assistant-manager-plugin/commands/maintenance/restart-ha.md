---
description: Restart Home Assistant (with safety checks)
tags: [project, gitignored]
---

Safely restart Home Assistant:

1. Pre-Restart Checks
   - Verify no critical automations are running
   - Check for active media playback that would be interrupted
   - Ensure no update operations in progress
   - Review system resource usage

2. Configuration Validation
   - Run configuration check BEFORE restarting
   - Verify no configuration errors exist
   - Check for recently modified files
   - Ensure all required files are present

3. Snapshot Recommendation
   - Suggest creating snapshot before restart (if significant changes made)
   - Confirm backup is recent
   - Note last known good state

4. Restart Execution
   - Initiate Home Assistant restart
   - Monitor restart process
   - Track restart time

5. Post-Restart Verification
   - Confirm Home Assistant is running
   - Check that all integrations loaded
   - Verify critical add-ons started
   - Test key automations
   - Review logs for errors

6. Troubleshooting
   - If restart fails, identify issue
   - Check logs for restart errors
   - Verify all services started properly
   - Suggest rollback if necessary

Provide restart status and post-restart health assessment.

**Important:** Always run /ha-config-check before using this command to avoid restarting with broken configuration!
