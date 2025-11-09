#!/bin/bash

# Home Assistant Manager Template - Deployment Script (Home & Root)
# This script copies Claude Code configuration files to both home directory and filesystem root
# Requires sudo for copying to root

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
HOME_DIR="$HOME"
ROOT_DIR="/"

echo "═══════════════════════════════════════════════════════════════"
echo "  Home Assistant Manager Template - Deploy to Home & Root"
echo "═══════════════════════════════════════════════════════════════"
echo ""
echo "Repository: $SCRIPT_DIR"
echo "Target 1:   $HOME_DIR"
echo "Target 2:   $ROOT_DIR (requires sudo)"
echo ""

# Check for sudo
if [ "$EUID" -ne 0 ]; then
    echo "⚠ This script requires sudo privileges to copy files to /"
    echo "  You may be prompted for your password."
    echo ""
fi

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

# Function to deploy to a target directory
deploy_to_target() {
    local target_dir="$1"
    local use_sudo="$2"
    local cp_cmd="cp"
    local rsync_cmd="rsync"
    local rm_cmd="rm"

    if [ "$use_sudo" = true ]; then
        cp_cmd="sudo cp"
        rsync_cmd="sudo rsync"
        rm_cmd="sudo rm"
    fi

    echo ""
    echo "════════════════════════════════════════════════════════════"
    echo "  Deploying to: $target_dir"
    echo "════════════════════════════════════════════════════════════"

    # Deploy CLAUDE.md
    echo ""
    echo "─────────────────────────────────────────────────────────────────"
    echo "1. Deploying CLAUDE.md"
    echo "─────────────────────────────────────────────────────────────────"

    if [ -f "$target_dir/CLAUDE.md" ]; then
        action=$(prompt_action "$target_dir/CLAUDE.md" "overwrite")

        case "$action" in
            overwrite|destructive)
                echo "→ Overwriting CLAUDE.md..."
                $cp_cmd "$SCRIPT_DIR/CLAUDE.md" "$target_dir/CLAUDE.md"
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
        echo "→ Copying CLAUDE.md to $target_dir..."
        $cp_cmd "$SCRIPT_DIR/CLAUDE.md" "$target_dir/CLAUDE.md"
        echo "✓ CLAUDE.md deployed"
    fi

    # Deploy .claude directory
    echo ""
    echo "─────────────────────────────────────────────────────────────────"
    echo "2. Deploying .claude/ directory"
    echo "─────────────────────────────────────────────────────────────────"

    if [ -d "$target_dir/.claude" ]; then
        has_commands=false
        has_agents=false

        [ -d "$target_dir/.claude/commands" ] && has_commands=true
        [ -d "$target_dir/.claude/agents" ] && has_agents=true

        if [ "$has_commands" = true ] || [ "$has_agents" = true ]; then
            echo ""
            echo "Existing .claude directory found with:"
            [ "$has_commands" = true ] && echo "  • commands/"
            [ "$has_agents" = true ] && echo "  • agents/"

            action=$(prompt_action "$target_dir/.claude" "merge")

            case "$action" in
                merge)
                    echo "→ Merging .claude directory (preserving existing files)..."
                    $rsync_cmd -av --ignore-existing "$SCRIPT_DIR/.claude/" "$target_dir/.claude/"
                    echo "✓ .claude directory merged"
                    ;;
                destructive)
                    echo "→ Destructively syncing .claude directory (using rsync --delete)..."
                    $rsync_cmd -av --delete "$SCRIPT_DIR/.claude/" "$target_dir/.claude/"
                    echo "✓ .claude directory synced (destructive)"
                    ;;
                overwrite)
                    echo "→ Overwriting .claude directory..."
                    $rm_cmd -rf "$target_dir/.claude"
                    $cp_cmd -r "$SCRIPT_DIR/.claude" "$target_dir/.claude"
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
            echo "→ Existing .claude directory found but no commands/agents subdirectories"
            echo "→ Overwriting .claude directory..."
            $rm_cmd -rf "$target_dir/.claude"
            $cp_cmd -r "$SCRIPT_DIR/.claude" "$target_dir/.claude"
            echo "✓ .claude directory deployed"
        fi
    else
        echo "→ Copying .claude directory to $target_dir..."
        $cp_cmd -r "$SCRIPT_DIR/.claude" "$target_dir/.claude"
        echo "✓ .claude directory deployed"
    fi

    # Deploy context directory (if exists)
    if [ -d "$SCRIPT_DIR/context" ]; then
        echo ""
        echo "─────────────────────────────────────────────────────────────────"
        echo "3. Deploying context/ directory"
        echo "─────────────────────────────────────────────────────────────────"

        if [ -d "$target_dir/context" ]; then
            echo "→ Merging context directory..."
            $rsync_cmd -av "$SCRIPT_DIR/context/" "$target_dir/context/"
            echo "✓ context directory merged"
        else
            echo "→ Copying context directory to $target_dir..."
            $cp_cmd -r "$SCRIPT_DIR/context" "$target_dir/context"
            echo "✓ context directory deployed"
        fi
    fi
}

# Deploy to home directory
deploy_to_target "$HOME_DIR" false

# Deploy to root directory
deploy_to_target "$ROOT_DIR" true

# Completion
echo ""
echo "═══════════════════════════════════════════════════════════════"
echo "  Deployment Complete!"
echo "═══════════════════════════════════════════════════════════════"
echo ""
echo "Files deployed to:"
echo "  • $HOME_DIR"
echo "  • $ROOT_DIR"
echo ""
echo "You can now use Claude Code with Home Assistant-specific commands"
echo "from both your user account and with elevated privileges."
echo ""
echo "Run 'claude' from anywhere to start using the slash commands."
echo ""
echo "Important: Remember to customize CLAUDE.md for your specific"
echo "Home Assistant installation before using extensively."
echo ""
