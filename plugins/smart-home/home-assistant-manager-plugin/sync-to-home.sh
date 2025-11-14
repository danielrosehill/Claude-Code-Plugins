#!/bin/bash

# Home Assistant Manager Template - Deployment Script (Home Directory Only)
# This script copies Claude Code configuration files from the repository to your home directory

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
HOME_DIR="$HOME"

echo "═══════════════════════════════════════════════════════════════"
echo "  Home Assistant Manager Template - Deploy to Home Directory"
echo "═══════════════════════════════════════════════════════════════"
echo ""
echo "Repository: $SCRIPT_DIR"
echo "Target:     $HOME_DIR"
echo ""

# Function to prompt for action
prompt_action() {
    local target_file="$1"
    local default_action="$2"

    echo ""
    echo "Target already exists: $target_file"
    echo "Choose action:"
    echo "  1) Overwrite (replace completely)"
    echo "  2) Merge (preserve existing, add new files)"
    echo "  3) Destructively overwrite (use rsync --delete)"
    echo "  4) Skip"
    echo ""

    if [ -n "$default_action" ]; then
        echo "Default: $default_action"
    fi

    read -p "Choice [1-4]: " choice

    case "$choice" in
        1) echo "overwrite" ;;
        2) echo "merge" ;;
        3) echo "destructive" ;;
        4) echo "skip" ;;
        *)
            if [ -n "$default_action" ]; then
                echo "$default_action"
            else
                echo "skip"
            fi
            ;;
    esac
}

# Deploy CLAUDE.md
echo "─────────────────────────────────────────────────────────────────"
echo "1. Deploying CLAUDE.md"
echo "─────────────────────────────────────────────────────────────────"

if [ -f "$HOME_DIR/CLAUDE.md" ]; then
    action=$(prompt_action "$HOME_DIR/CLAUDE.md" "overwrite")

    case "$action" in
        overwrite|destructive)
            echo "→ Overwriting CLAUDE.md..."
            cp "$SCRIPT_DIR/CLAUDE.md" "$HOME_DIR/CLAUDE.md"
            echo "✓ CLAUDE.md deployed"
            ;;
        skip)
            echo "⊘ Skipped CLAUDE.md"
            ;;
        *)
            echo "⊘ Invalid choice, skipped CLAUDE.md"
            ;;
    esac
else
    echo "→ Copying CLAUDE.md to $HOME_DIR..."
    cp "$SCRIPT_DIR/CLAUDE.md" "$HOME_DIR/CLAUDE.md"
    echo "✓ CLAUDE.md deployed"
fi

# Deploy .claude directory
echo ""
echo "─────────────────────────────────────────────────────────────────"
echo "2. Deploying .claude/ directory"
echo "─────────────────────────────────────────────────────────────────"

if [ -d "$HOME_DIR/.claude" ]; then
    # Check if commands or agents subdirectories exist
    has_commands=false
    has_agents=false

    [ -d "$HOME_DIR/.claude/commands" ] && has_commands=true
    [ -d "$HOME_DIR/.claude/agents" ] && has_agents=true

    if [ "$has_commands" = true ] || [ "$has_agents" = true ]; then
        echo ""
        echo "Existing .claude directory found with:"
        [ "$has_commands" = true ] && echo "  • commands/"
        [ "$has_agents" = true ] && echo "  • agents/"

        action=$(prompt_action "$HOME_DIR/.claude" "merge")

        case "$action" in
            merge)
                echo "→ Merging .claude directory (preserving existing files)..."
                rsync -av --ignore-existing "$SCRIPT_DIR/.claude/" "$HOME_DIR/.claude/"
                echo "✓ .claude directory merged"
                ;;
            destructive)
                echo "→ Destructively syncing .claude directory (using rsync --delete)..."
                rsync -av --delete "$SCRIPT_DIR/.claude/" "$HOME_DIR/.claude/"
                echo "✓ .claude directory synced (destructive)"
                ;;
            overwrite)
                echo "→ Overwriting .claude directory..."
                rm -rf "$HOME_DIR/.claude"
                cp -r "$SCRIPT_DIR/.claude" "$HOME_DIR/.claude"
                echo "✓ .claude directory deployed"
                ;;
            skip)
                echo "⊘ Skipped .claude directory"
                ;;
            *)
                echo "⊘ Invalid choice, skipped .claude directory"
                ;;
        esac
    else
        # No commands or agents, just overwrite
        echo "→ Existing .claude directory found but no commands/agents subdirectories"
        echo "→ Overwriting .claude directory..."
        rm -rf "$HOME_DIR/.claude"
        cp -r "$SCRIPT_DIR/.claude" "$HOME_DIR/.claude"
        echo "✓ .claude directory deployed"
    fi
else
    echo "→ Copying .claude directory to $HOME_DIR..."
    cp -r "$SCRIPT_DIR/.claude" "$HOME_DIR/.claude"
    echo "✓ .claude directory deployed"
fi

# Deploy context directory (if exists)
if [ -d "$SCRIPT_DIR/context" ]; then
    echo ""
    echo "─────────────────────────────────────────────────────────────────"
    echo "3. Deploying context/ directory"
    echo "─────────────────────────────────────────────────────────────────"

    if [ -d "$HOME_DIR/context" ]; then
        echo "→ Merging context directory..."
        rsync -av "$SCRIPT_DIR/context/" "$HOME_DIR/context/"
        echo "✓ context directory merged"
    else
        echo "→ Copying context directory to $HOME_DIR..."
        cp -r "$SCRIPT_DIR/context" "$HOME_DIR/context"
        echo "✓ context directory deployed"
    fi
fi

# Completion
echo ""
echo "═══════════════════════════════════════════════════════════════"
echo "  Deployment Complete!"
echo "═══════════════════════════════════════════════════════════════"
echo ""
echo "Files deployed to: $HOME_DIR"
echo ""
echo "You can now use Claude Code with Home Assistant-specific commands."
echo "Run 'claude' from anywhere to start using the slash commands."
echo ""
echo "Important: Remember to customize CLAUDE.md for your specific"
echo "Home Assistant installation before using extensively."
echo ""
