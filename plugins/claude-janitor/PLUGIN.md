# Claude Janitor Plugin

A Claude Code plugin that provides repository cleanup tools as slash commands and agents.

## Overview

The Claude Janitor plugin bundles six repository cleanup operations into convenient slash commands. These can be run individually or orchestrated sequentially for a complete repository cleanup.

## Installation

This plugin is already configured in this repository. To use it in other repositories:

1. Copy the `.claude` directory to your target repository
2. The slash commands will be automatically available in Claude Code

## Available Slash Commands

### Individual Operations

Run these commands individually to perform specific cleanup tasks:

#### `/clean-docs`
Clean documentation by removing emojis, "comprehensive", and hyperbolic language. Focuses on making docs succinct and technically accurate.

#### `/remove-legacy-code`
Identify and remove old legacy code that is no longer used in the application.

#### `/remove-script-clutter`
Remove single-purpose diagnostic and testing scripts that are no longer needed.

#### `/remove-doc-sprawl`
Remove unnecessary AI-generated documentation sprawl, consolidating useful content into main docs.

#### `/organize-structure`
Reorganize repository structure for better organization using logical folder hierarchies.

#### `/separate-code-docs`
Separate code from documentation at top-folder level for cleaner project structure.

### Complete Cleanup

#### `/janitor-full-cleanup`
Runs all six cleanup operations in the correct sequential order. This is the recommended way to perform a complete repository cleanup.

**Execution order:**
1. Separate code from documentation
2. Organize repository structure
3. Remove legacy code
4. Remove script clutter
5. Remove documentation sprawl
6. Clean documentation content

**Important**: Operations run sequentially to avoid file collisions. The process may take several minutes depending on repository size.

## Agent Configuration

### `repo-janitor` Agent

An advanced agent configuration is available for programmatic use via the Claude Agent SDK or for more complex cleanup orchestrations.

Location: `.claude/agents/repo-janitor.md`

## Usage Examples

### Quick Cleanup
```bash
# Run individual operations as needed
/clean-docs
/remove-legacy-code
```

### Full Cleanup
```bash
# Complete repository cleanup (all operations)
/janitor-full-cleanup
```

## Safety Features

The plugin includes several safety measures:

- **User Confirmation**: Asks before deleting files when there's uncertainty
- **Refactoring Safety**: Verifies path changes won't break functionality
- **Deployment Awareness**: Extra caution with changes affecting deployable code
- **Sequential Execution**: Prevents file collisions by running operations one at a time
- **Progress Reporting**: Updates you as each step completes

## Customization

### Modifying Operations

Edit the command files in `.claude/commands/` to customize the cleanup behavior:

- `clean-docs.md` - Documentation cleaning rules
- `remove-legacy-code.md` - Legacy code identification logic
- `remove-script-clutter.md` - Script cleanup criteria
- `remove-doc-sprawl.md` - Documentation sprawl rules
- `organize-structure.md` - Organization preferences
- `separate-code-docs.md` - Code/docs separation rules

### Modifying Orchestration

Edit `.claude/commands/janitor-full-cleanup.md` to change:
- Operation execution order
- Step-by-step instructions
- Safety guidelines

### Modifying Agent Behavior

Edit `.claude/agents/repo-janitor.md` to customize the agent's:
- Operation approach
- Execution rules
- Success criteria

## Best Practices

1. **Commit Before Cleanup**: Always commit your work before running cleanup operations
2. **Review Changes**: Carefully review all changes before committing them
3. **Test After Cleanup**: Run tests to ensure functionality wasn't broken
4. **Incremental Cleanup**: For large repos, consider running individual operations first
5. **Backup Important Data**: Keep backups of critical files before cleanup

## Common Use Cases

### New Repository Setup
Run `/janitor-full-cleanup` to establish good organization from the start.

### After Major Development
Clean up accumulated cruft with `/remove-script-clutter` and `/remove-legacy-code`.

### Before Release
Polish documentation with `/clean-docs` and `/remove-doc-sprawl`.

### Restructuring Project
Use `/organize-structure` and `/separate-code-docs` to improve organization.

## Troubleshooting

### Commands Not Appearing
- Ensure `.claude` directory is in repository root
- Check that command files have `.md` extension
- Verify command files have valid frontmatter with `description`

### Operations Taking Too Long
- Large repositories may take time - be patient
- Consider running individual operations instead of full cleanup
- Check that you're not running on extremely large directories

### Unexpected Deletions
- Review changes before committing
- Use version control to revert unwanted changes
- Adjust operation criteria in command files if needed

## Technical Details

- **Plugin Format**: Claude Code slash commands and agents
- **Language**: Markdown with YAML frontmatter
- **Sequential Execution**: Enforced via orchestrator instructions
- **Safety**: Built-in user confirmation and refactoring checks

## Contributing

To improve the plugin:

1. Edit command files in `.claude/commands/`
2. Test your changes in a safe repository
3. Update this documentation
4. Commit and push changes

## License

Same license as the Claude-Janitor repository.
