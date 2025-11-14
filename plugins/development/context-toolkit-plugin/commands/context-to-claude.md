---
description: Convert CONTEXT.md (human scratchpad) to CLAUDE.md (agent briefing)
---

This repository contains a file called CONTEXT.md (or context.md) which provides detailed, human-friendly description of the project purpose, motivations, and vision.

This file likely contains conversational language, possibly captured using voice transcription, and may include typos, speech artifacts, and verbose explanations.

Execute these tasks in sequence:

## Task 1: Proofread CONTEXT.md

Lightly edit CONTEXT.md to improve readability while preserving the human voice and intent:
- Add paragraph spacing for better readability
- Add punctuation where needed
- Fix typos and grammatical errors
- Fix errors that appear to be AI transcription mistakes
- Remove obvious speech artifacts (um, uh, repeated words)
- Preserve the conversational, expressive tone

Do NOT over-edit or strip away personality. The goal is clarity, not sterility.

## Task 2: Create/Update CLAUDE.md

CLAUDE.md is the agent-facing context file that Claude Code automatically reads. Think of CONTEXT.md as the user's expressive scratchpad and CLAUDE.md as your structured implementation guide.

Create or update CLAUDE.md with:

1. **Project Overview**: Concise summary of purpose and goals
2. **Key Requirements**: Specific, actionable requirements extracted from CONTEXT.md
3. **Implementation Guidance**: Technical direction, architecture decisions, constraints
4. **Workflow Instructions**: How the agent should approach tasks in this project
5. **Context Reference Note**: Add this section:

```markdown
## Human Context Reference

This project includes a CONTEXT.md file containing detailed, human-authored context including:
- Project vision and motivations
- Detailed requirements and use cases
- User's thought process and decision rationale
- Additional background information

When you need deeper understanding of the project's purpose or user intent, refer to CONTEXT.md for the full narrative context.
```

Keep CLAUDE.md focused, structured, and actionable. Extract the essence of what's in CONTEXT.md and present it in a format optimized for agent processing.
