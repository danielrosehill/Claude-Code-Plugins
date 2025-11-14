This repository contains project level subagents at ./claude/agents.

The agents are missing frontmatter.

The frontmatter needs to be formatted like:

---
name: your-sub-agent-name
description: Description of when this subagent should be invoked
tools: tool1, tool2, tool3  # Optional - inherits all tools if omitted
model: sonnet  # Optional - specify model alias or 'inherit'
---

You should:

- Infer a name for the agent from filename and/or content 
- Infer a description. Keep this short. 
- Skip tools
- SKip model 

So a completed frontmatter will look like:

---
name: {name} 
description: {description}
---


Repeat this for every subagent missing frontmatter