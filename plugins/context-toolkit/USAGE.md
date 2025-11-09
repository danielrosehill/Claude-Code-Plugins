# CONTEXT.md Toolkit - Usage Guide

This guide provides detailed usage instructions and examples for the CONTEXT.md Toolkit plugin.

## Quick Start

### 1. Install the Plugin

```bash
/plugin install danielrosehill/Claude-Code-Context-Toolkit
```

### 2. Create Your First CONTEXT.md

Navigate to your project and create a CONTEXT.md file. Write naturally about your project:

```markdown
# My Project Context

I'm building a web application that helps users track their reading habits. The idea came from my frustration with existing book tracking apps - they're either too complicated or too simple.

What I want is something that:
- Lets me quickly log what I'm reading
- Shows my reading statistics in a beautiful dashboard
- Recommends books based on what I've enjoyed
- Doesn't require a subscription or account creation

I'm thinking of using React for the frontend because I'm familiar with it, and maybe Firebase for the backend to keep things simple. Although I'm also considering a simple Node/Express API with PostgreSQL if I need more control over the data.

The target users are people like me - casual readers who want to track their habits without overthinking it.
```

### 3. Convert to Agent Briefing

Run the conversion command:

```bash
/context-to-claude
```

This creates a CLAUDE.md file:

```markdown
# Reading Tracker Web Application

## Project Overview
A web application for tracking reading habits with a focus on simplicity and beautiful visualization. Target audience: casual readers who want lightweight tracking without complexity.

## Key Requirements
- Quick book logging functionality
- Visual reading statistics dashboard
- Book recommendation engine based on user preferences
- No mandatory account creation or subscription
- Lightweight, user-friendly interface

## Technical Stack (Under Consideration)
**Option 1 (Preferred):**
- Frontend: React
- Backend: Firebase

**Option 2:**
- Frontend: React
- Backend: Node.js/Express + PostgreSQL

Decision needed: Firebase for simplicity vs. custom API for data control.

## Implementation Guidance
- Prioritize user experience and simplicity
- Start with core logging and statistics features
- Implement recommendation engine as phase 2
- Consider authentication strategy that aligns with "no mandatory account" requirement

## Human Context Reference
This project includes a CONTEXT.md file containing detailed, human-authored context including project vision, motivations, and detailed requirements. When you need deeper understanding of the project's purpose or user intent, refer to CONTEXT.md for the full narrative context.
```

## Common Workflows

### Adding New Requirements

When you have new ideas or requirements:

1. **Add to CONTEXT.md** (in your natural voice):
   ```markdown
   ## Update: Export Feature

   I just realized users will want to export their data. Maybe as CSV or JSON? I don't want them to feel locked in. This should be easy to implement and would build trust.
   ```

2. **Run the sync command**:
   ```bash
   /add-to-context
   ```

3. **CLAUDE.md is automatically updated** with the new requirement extracted and formatted.

### Removing Outdated Information

When requirements change:

1. **Run the removal command**:
   ```bash
   /remove-from-context
   ```

2. **Specify what to remove** when prompted:
   ```
   Remove the Firebase backend option - I've decided to go with Node/Express and PostgreSQL.
   ```

3. **Both files are updated** to remove the outdated information.

### Managing Large Projects

When your CONTEXT.md grows to 500+ lines:

1. **Run the chunking command**:
   ```bash
   /chunk-repo-context
   ```

2. **Review the proposed structure**:
   ```
   Proposed chunking structure:

   context-data/
   ├── README.md (index)
   ├── project-vision.md (project goals and motivation)
   ├── user-requirements.md (user stories and feature requirements)
   ├── technical-decisions.md (stack choices and architecture)
   └── future-ideas.md (potential features and enhancements)

   Proceed? (yes/no)
   ```

3. **Approve and the plugin**:
   - Creates the directory structure
   - Splits content logically
   - Creates an index
   - Updates CLAUDE.md references
   - Backs up original CONTEXT.md

## Slash Command Reference

### `/context-to-claude`

**When to use:** You've added significant content to CONTEXT.md and want to update the agent briefing.

**What it does:**
1. Proofreads CONTEXT.md (fixes typos, adds punctuation)
2. Extracts requirements and key information
3. Creates or updates CLAUDE.md in structured format
4. Preserves conversational tone in CONTEXT.md

**Example scenario:**
```bash
# After capturing ideas via voice transcription
/context-to-claude
```

### `/claude-to-context`

**When to use:** CLAUDE.md has evolved through agent interaction and you want to preserve that knowledge in human-readable form.

**What it does:**
1. Extracts valuable information from CLAUDE.md
2. Integrates it naturally into CONTEXT.md
3. Maintains narrative style
4. Adds section headers as needed

**Example scenario:**
```bash
# After Claude Code has refined requirements in CLAUDE.md
/claude-to-context
```

### `/add-to-context`

**When to use:** You have new information to add to the context pool.

**What it does:**
1. Integrates new information into CONTEXT.md (or context-data/)
2. Avoids duplication
3. Maintains organization
4. Updates CLAUDE.md automatically

**Example scenario:**
```bash
/add-to-context

# Then provide the new context when prompted:
# "New requirement: Users need dark mode support for reading at night."
```

### `/remove-from-context`

**When to use:** Information is outdated, incorrect, or no longer relevant.

**What it does:**
1. Removes specified content from context pool
2. Updates CLAUDE.md for consistency
3. Cleans up document structure
4. Provides summary of changes

**Example scenario:**
```bash
/remove-from-context

# Then specify what to remove:
# "Remove the section about mobile app development - focusing on web only."
```

### `/manual-context-update`

**When to use:** You want guided assistance for manual editing of context files.

**What it does:**
1. Asks what type of update you want
2. Guides you through the editing process
3. Validates consistency between files
4. Summarizes changes made

**Example scenario:**
```bash
/manual-context-update

# Provides interactive prompts for coordinated updates
```

### `/chunk-repo-context`

**When to use:** CONTEXT.md is getting large (500+ lines) and would benefit from organization.

**What it does:**
1. Analyzes current CONTEXT.md content
2. Proposes topic-based organization
3. Creates context-data/ directory structure
4. Splits content into focused files
5. Creates index file
6. Updates CLAUDE.md references
7. Backs up original

**Example scenario:**
```bash
# When CONTEXT.md reaches ~800 lines
/chunk-repo-context
```

## Best Practices

### Writing CONTEXT.md

**DO:**
- Write conversationally and naturally
- Use voice transcription if it helps
- Include the "why" behind decisions
- Preserve your thought process
- Be as detailed as you want

**DON'T:**
- Try to write like a robot
- Over-structure or formalize
- Remove personality and voice
- Worry about perfect grammar
- Self-censor your ideas

### Maintaining CLAUDE.md

**DO:**
- Keep it structured and actionable
- Extract specific requirements
- Update when project evolves
- Reference CONTEXT.md for deeper context
- Use clear section headers

**DON'T:**
- Make it overly verbose
- Include conversational tangents
- Let it get out of sync with CONTEXT.md
- Remove all technical constraints
- Forget to update after major context changes

### Synchronization

**Regular sync points:**
- After brainstorming sessions (add to CONTEXT.md, then run `/context-to-claude`)
- When requirements change (run `/add-to-context` or `/remove-from-context`)
- After Claude Code makes significant refinements (run `/claude-to-context`)
- When onboarding new team members (ensure both files are current)

### Chunking Strategy

**When to chunk:**
- CONTEXT.md exceeds 500-1000 lines
- Multiple distinct topic areas exist
- Navigation becomes difficult
- Different team members focus on different areas

**How to organize chunks:**
- By topic (vision, requirements, technical, etc.)
- By feature area (auth, dashboard, api, etc.)
- By project phase (mvp, v2, future)
- By audience (developers, designers, stakeholders)

## Advanced Usage

### Voice-to-CONTEXT Workflow

1. **Record ideas** using voice transcription
2. **Paste into CONTEXT.md** with minimal editing
3. **Run `/context-to-claude`** to create structured briefing
4. **Continue development** with optimized context

### Multi-Agent Projects

For projects using multiple specialized agents:

1. **Maintain one CONTEXT.md** (human source of truth)
2. **Create agent-specific briefings** (CLAUDE.md, CODEX.md, etc.)
3. **Use `/context-to-claude`** as template for other conversions
4. **Keep all briefings synchronized** with the context pool

### Team Collaboration

**Workflow:**
1. **Team members add to CONTEXT.md** via pull requests
2. **Discussion happens in context** (not separate docs)
3. **Run `/context-to-claude`** after merging
4. **CLAUDE.md stays updated** for all team members

## Troubleshooting

### CONTEXT.md and CLAUDE.md are out of sync

**Solution:**
```bash
/context-to-claude  # Regenerate CLAUDE.md from current CONTEXT.md
```

### Context files are getting too large

**Solution:**
```bash
/chunk-repo-context  # Split into organized chunks
```

### Need to restructure existing chunked context

**Solution:**
```bash
/manual-context-update  # Provides guided restructuring
```

### Lost track of what's in context pool

**Solution:**
1. Read context-data/README.md (if chunked)
2. Or review CONTEXT.md section headers
3. Run `/context-to-claude` to regenerate organized CLAUDE.md

## Examples

See the `/examples` directory for:
- Sample CONTEXT.md files for different project types
- Corresponding CLAUDE.md examples
- Chunked context structures
- Voice transcription to context workflows

## Getting Help

- **Documentation**: See README.md
- **Issues**: [GitHub Issues](https://github.com/danielrosehill/Claude-Code-Context-Toolkit/issues)
- **Questions**: public@danielrosehill.com
