# Claude Janitor Plugin Files

This directory contains the Claude Code plugin configuration for repository cleanup operations.

## Structure

```
.claude/
├── commands/          # Slash command definitions
│   ├── clean-docs.md
│   ├── remove-legacy-code.md
│   ├── remove-script-clutter.md
│   ├── remove-doc-sprawl.md
│   ├── organize-structure.md
│   ├── separate-code-docs.md
│   └── janitor-full-cleanup.md
├── agents/           # Agent configurations
│   └── repo-janitor.md
└── README.md         # This file
```

## Slash Commands

- `/clean-docs` - Clean documentation content
- `/remove-legacy-code` - Remove old unused code
- `/remove-script-clutter` - Remove unnecessary scripts
- `/remove-doc-sprawl` - Remove excessive documentation
- `/organize-structure` - Reorganize folder structure
- `/separate-code-docs` - Separate code from docs
- `/janitor-full-cleanup` - Run all operations sequentially

## Agent

- `repo-janitor` - Orchestrator agent for sequential cleanup execution

## Usage

These commands are automatically available in Claude Code when working in this repository or any repository that includes this `.claude` directory.

For detailed usage instructions, see [PLUGIN.md](../PLUGIN.md) in the repository root.
