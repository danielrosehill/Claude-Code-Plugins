---
description: Check MQTT broker status and connectivity
tags: [project, gitignored]
---

Verify MQTT broker configuration and operation:

1. MQTT Broker Status
   - Check if MQTT broker is running (add-on or external)
   - Verify broker version
   - Check resource usage
   - Review broker uptime

2. Connection Status
   - Verify Home Assistant connection to broker
   - Check authentication status
   - Review connection logs
   - Identify connection errors or drops

3. Client Inventory
   - List all connected MQTT clients
   - Identify devices using MQTT
   - Show client connection status
   - Note disconnected/unavailable clients

4. Topic Analysis
   - List active MQTT topics
   - Review topic naming structure
   - Identify high-traffic topics
   - Check for orphaned topics

5. Message Flow
   - Monitor recent MQTT message activity
   - Identify message bottlenecks
   - Check for message errors
   - Review QoS settings

6. Configuration Review
   - Verify broker configuration settings
   - Check authentication requirements
   - Review ACL/permissions if configured
   - Assess security settings

7. Integration Health
   - Check MQTT-dependent integrations
   - Verify Zigbee2MQTT status (if applicable)
   - Check any MQTT sensors/switches
   - Review MQTT discovery status

Provide MQTT system health report with recommendations.
