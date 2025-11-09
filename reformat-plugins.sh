#!/bin/bash

# Script to reformat plugins to conform to Claude Code plugin structure
# This moves commands and agents from .claude/ to root level and creates plugin.json

PLUGINS_DIR="/home/daniel/repos/github/Claude-Code-Plugins/plugins"

# List of plugins to reformat
PLUGINS=(
    "home-budget-helper"
    "career-planner"
    "lan-manager"
    "diary-planner"
    "home-assistant-manager"
)

for plugin in "${PLUGINS[@]}"; do
    plugin_path="$PLUGINS_DIR/$plugin"
    echo "Processing $plugin..."

    # Create .claude-plugin directory if it doesn't exist
    mkdir -p "$plugin_path/.claude-plugin"

    # Move commands if they exist in .claude/commands
    if [ -d "$plugin_path/.claude/commands" ]; then
        echo "  Moving commands..."
        if [ -d "$plugin_path/commands" ]; then
            # Merge if commands directory already exists
            cp -r "$plugin_path/.claude/commands/"* "$plugin_path/commands/" 2>/dev/null
        else
            mv "$plugin_path/.claude/commands" "$plugin_path/commands"
        fi
    fi

    # Move agents if they exist in .claude/agents
    if [ -d "$plugin_path/.claude/agents" ]; then
        echo "  Moving agents..."
        if [ -d "$plugin_path/agents" ]; then
            # Merge if agents directory already exists
            cp -r "$plugin_path/.claude/agents/"* "$plugin_path/agents/" 2>/dev/null
        else
            mv "$plugin_path/.claude/agents" "$plugin_path/agents"
        fi
    fi

    # Create plugin.json if it doesn't exist
    if [ ! -f "$plugin_path/.claude-plugin/plugin.json" ]; then
        echo "  Creating plugin.json..."

        # Extract description from README if it exists
        description="Claude Code plugin for $plugin"
        if [ -f "$plugin_path/README.md" ]; then
            # Try to extract first paragraph or description
            first_line=$(head -n 5 "$plugin_path/README.md" | grep -v "^#" | grep -v "^$" | head -n 1)
            if [ -n "$first_line" ]; then
                description="$first_line"
            fi
        fi

        cat > "$plugin_path/.claude-plugin/plugin.json" << EOF
{
  "name": "$plugin",
  "description": "$description",
  "version": "1.0.0",
  "author": {
    "name": "Daniel Rosehill",
    "email": "public@danielrosehill.com",
    "url": "https://danielrosehill.com"
  }
}
EOF
    fi

    echo "  ✓ Done with $plugin"
    echo ""
done

echo "All plugins reformatted successfully!"
