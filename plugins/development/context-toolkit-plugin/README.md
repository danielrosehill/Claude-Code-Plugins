# CONTEXT.md Toolkit - Claude Code Plugin

A comprehensive Claude Code plugin that implements the CONTEXT.md workflow system for managing human-authored context and agent-ready briefings.

## Overview

This plugin bridges the gap between how humans naturally express ideas and how AI agents optimally process information. Instead of forcing humans to write in "robot speak," it provides a workflow where you can:

1. **Capture ideas naturally** in CONTEXT.md (human-friendly scratchpad)
2. **Convert to structured briefings** in CLAUDE.md (agent-optimized format)
3. **Keep both synchronized** as your project evolves

## Core Concept

The CONTEXT.md system recognizes that:
- Humans express ideas best in conversational, narrative form
- AI agents work best with structured, concise briefings
- LLMs excel at converting between these two "dialects"
- A single markdown file is often sufficient for project context (vs. complex RAG systems)

**Two complementary files:**
- **CONTEXT.md**: Expressive, detailed, human-friendly context (often from voice transcription)
- **CLAUDE.md**: Structured, concise, agent-ready briefing (automatically read by Claude Code)

## Installation

### From GitHub

```bash
/plugin install danielrosehill/Claude-Code-Context-Toolkit
```

### From Local Directory

```bash
/plugin install /path/to/Claude-Code-Context-Toolkit
```

## Features

### Slash Commands

#### Core Operations

**`/context-to-claude`** - Convert CONTEXT.md to CLAUDE.md
- Proofreads and lightly edits CONTEXT.md (fixes typos, adds punctuation)
- Extracts key requirements and creates structured CLAUDE.md
- Preserves human voice in CONTEXT.md while creating agent-optimized briefing

**`/claude-to-context`** - Extract info from CLAUDE.md to CONTEXT.md
- Identifies valuable information in CLAUDE.md
- Incorporates it into CONTEXT.md naturally
- Maintains narrative, conversational style

#### Context Management

**`/add-to-context`** - Add new information to context pool
- Integrates new context into CONTEXT.md or context-data/
- Updates CLAUDE.md to reflect new information
- Maintains organization and avoids duplication

**`/remove-from-context`** - Remove outdated information
- Removes specified content from context pool
- Updates CLAUDE.md for consistency
- Cleans up document structure

**`/manual-context-update`** - Guided manual editing workflow
- Interactive workflow for coordinated updates
- Supports updates to either or both files
- Validates consistency after changes

**`/chunk-repo-context`** - Split CONTEXT.md into organized chunks
- Analyzes content and proposes topic-based organization
- Creates context-data/ directory with focused files
- Builds index and updates CLAUDE.md references

### Specialized Agents

**context-converter** - Handles conversion between context formats
- Optimized for CONTEXT.md ↔ CLAUDE.md conversion
- Preserves distinct character of each file type
- Maintains consistency and quality

**context-manager** - Manages context file organization
- Adds, removes, and reorganizes context
- Handles chunking and restructuring
- Maintains cross-references and indexes

### Hooks

**context-file-detector** (on_repo_open)
- Detects CONTEXT.md or context-data/ in repository
- Reminds agent to read context files
- Runs automatically when opening repository

**context-sync-reminder** (on_file_write)
- Triggers when context files are modified
- Reminds to keep CONTEXT.md and CLAUDE.md synchronized
- Suggests relevant slash commands

## Workflow Examples

### Starting a New Project

1. Create CONTEXT.md and describe your project naturally (use voice transcription if you like)
2. Run `/context-to-claude` to generate CLAUDE.md
3. Continue working with Claude Code - it now has optimal context

### Adding New Requirements

1. Add information to CONTEXT.md (conversationally)
2. Run `/add-to-context` to integrate cleanly
3. CLAUDE.md is automatically updated

### Growing Project Context

When CONTEXT.md gets large:
1. Run `/chunk-repo-context`
2. Review proposed organization
3. Approve to split into topic-based files in context-data/

## File Structure

```
your-repo/
├── CONTEXT.md              # Human-friendly context scratchpad
├── CLAUDE.md              # Agent-ready briefing (auto-read by Claude Code)
└── context-data/          # Optional: chunked context (for large projects)
    ├── README.md          # Index of context files
    ├── project-vision.md
    ├── requirements.md
    └── technical-specs.md
```

## Best Practices

### CONTEXT.md
- Write naturally and expressively
- Use voice transcription if it helps you capture ideas
- Don't worry about being too verbose
- Include the "why" behind decisions
- Preserve your thought process

### CLAUDE.md
- Keep it structured and actionable
- Extract specific requirements
- Provide clear implementation guidance
- Reference CONTEXT.md for deeper context
- Update when requirements change

### Synchronization
- Run `/context-to-claude` when CONTEXT.md changes significantly
- Use `/add-to-context` to keep both files aligned
- Let hooks remind you when files get out of sync

### Chunking
- Chunk when CONTEXT.md exceeds ~500-1000 lines
- Organize by topic, not arbitrary size
- Use descriptive filenames (kebab-case)
- Maintain index in context-data/README.md

## Related Projects

- [CONTEXT.md Specification](https://github.com/danielrosehill/CONTEXT.md) - Original concept and notes
- [Context Cruncher](https://github.com/danielrosehill/Context-Cruncher) - CLI tools for context processing

## Author

**Daniel Rosehill**
- Website: [danielrosehill.com](https://danielrosehill.com)
- Business: [DSR Holdings](https://dsrholdings.cloud)
- Email: public@danielrosehill.com

## License

MIT License - See LICENSE file for details

## Feedback

Issues, suggestions, and feature requests: [GitHub Issues](https://github.com/danielrosehill/Claude-Code-Context-Toolkit/issues)
