#!/usr/bin/env python3
"""
Organize slash commands from temp-clones into plugin directories.
"""

import os
import shutil
from pathlib import Path
from collections import defaultdict

# Define the mapping of command patterns to plugins
PLUGIN_MAPPINGS = {
    'ai-tools': [
        'ai-', 'ollama', 'comfyui', 'mcp', 'stt', 'speech-to-text',
        'local-ai', 'gpu-ai', 'ml-assessment', 'ai-cli', 'evaltools',
        'llm', 'hugging-face', 'hf-'
    ],
    'audio': [
        'audio-', 'mic-', 'pipewire', 'pulseaudio', 'sound'
    ],
    'claude-code': [
        'claude-', 'subagent', 'agent-', 'slash-command', 'cc-',
        'add-subagent', 'agent-picker', 'add-to-context', 'add-to-my-notes'
    ],
    'development': [
        'dev-', 'python-', 'conda', 'docker', 'git-', 'github-',
        'pyenv', 'uv-venv', 'nvm', 'npm', 'node', 'rust', 'go-',
        'build-', 'compile', 'test-', 'debug', 'ide', 'add-git',
        'add-bash-alias', 'check-git', 'validate-bashrc', 'setup-',
        'install-', 'brew', 'rclone', 'check-path', 'configuration-',
        'create-venv', 'allow-env', 'allow-repo-commands'
    ],
    'documentation': [
        'readme', 'docs-', 'documentation', 'markdown', 'api-doc',
        'changelog', 'contributing', 'license', 'badge', 'add-readme',
        'add-license', 'add-mit-license', 'add-badge', 'add-index',
        'add-master-index', 'add-repo-index', 'add-related-repos',
        'add-wip', 'add-vibe-coding', 'adding-to-awesome',
        'create-readme', 'generate-docs', 'add-watermark'
    ],
    'filesystem-organization': [
        'organize-', 'cleanup', 'dedupe', 'folder-', 'directory-',
        'file-', 'sort-files', 'archive', 'backup-structure'
    ],
    'ideation': [
        'idea', 'brainstorm', 'innovate', 'suggest-project',
        'creative', 'experiment'
    ],
    'learning': [
        'learn-', 'tutorial', 'lesson', 'course', 'skill',
        'training', 'guide'
    ],
    'misc': [
        'misc-', 'utility', 'helper', 'tool'
    ],
    'mixed-media': [
        'media-', 'image-', 'audio-video', 'convert-media'
    ],
    'photos': [
        'photo-', 'image-process', 'exif', 'thumbnail',
        'resize-image', 'compress-image'
    ],
    'security': [
        'security-', 'encrypt', 'decrypt', 'password', 'vault',
        '1password', 'gpg', 'ssh-key', 'firewall', 'audit'
    ],
    'seo': [
        'seo-', 'meta-tag', 'sitemap', 'robots.txt', 'schema'
    ],
    'video': [
        'video-', 'ffmpeg', 'encode', 'subtitle', 'trim-video',
        'compress-video', 'transcode'
    ],
    'writing-editing': [
        'proofread', 'edit-', 'grammar', 'spell', 'typo',
        'style-', 'tone-', 'rewrite', 'polish', 'headings',
        'reviewer', 'standardiser', 'flow-and', 'add-sources',
        'add-headings', 'add-punctuation', 'add-emotion',
        'add-metaphors', 'add-examples', 'add-technical-depth',
        'add-statistics', 'add-missing', 'uk-english', 'us-english',
        '24-hour-time'
    ],
    'system': [
        'system-', 'hardware-', 'boot-', 'service-', 'kernel-',
        'driver-', 'bluetooth', 'network-', 'wifi', 'ethernet',
        'usb', 'monitor-', 'display-', 'printer-', 'scanner-',
        'battery-', 'power-', 'thermal-', 'fan-', 'cpu-', 'gpu-',
        'memory-', 'disk-', 'storage-', 'mount-', 'partition-',
        'checkup', 'health-check', 'profiler', 'benchmark',
        'optimize-', 'cleanup-', 'maintenance', 'upgrade-',
        'analyze-firewall', 'wol-', 'wake-on-lan'
    ]
}

def categorize_command(filename):
    """Determine which plugin a command belongs to based on its filename."""
    filename_lower = filename.lower()

    # Check each plugin's patterns
    for plugin, patterns in PLUGIN_MAPPINGS.items():
        for pattern in patterns:
            if pattern in filename_lower:
                return plugin

    # Default to misc if no match
    return 'misc'

def find_all_commands(temp_clones_dir):
    """Find all .md files in temp-clones (excluding READMEs and doc files)."""
    # Files to skip (these are documentation, not slash commands)
    skip_files = {
        'readme.md', 'changelog.md', 'license.md', 'contributing.md',
        'architecture.md', 'usage.md', 'quickstart.md', 'claude.md',
        'privacy-model.md', 'skill.md', 'example-output.md',
        'personal-setup.md', 'map.md'
    }

    commands = []
    for root, dirs, files in os.walk(temp_clones_dir):
        for file in files:
            if file.endswith('.md') and file.lower() not in skip_files:
                full_path = os.path.join(root, file)
                commands.append((full_path, file))
    return commands

def organize_commands(temp_clones_dir, plugins_dir, dry_run=True):
    """Organize commands into plugin directories."""

    # Find all commands
    commands = find_all_commands(temp_clones_dir)
    print(f"Found {len(commands)} slash commands to organize\n")

    # Categorize commands
    categorized = defaultdict(list)
    for full_path, filename in commands:
        plugin = categorize_command(filename)
        categorized[plugin].append((full_path, filename))

    # Display categorization summary
    print("Categorization Summary:")
    print("=" * 60)
    for plugin in sorted(categorized.keys()):
        print(f"{plugin}: {len(categorized[plugin])} commands")
    print()

    # Move commands
    for plugin, command_list in categorized.items():
        plugin_commands_dir = os.path.join(plugins_dir, plugin, 'commands')

        # Create commands directory if it doesn't exist
        if not dry_run:
            os.makedirs(plugin_commands_dir, exist_ok=True)

        print(f"\n{plugin} ({len(command_list)} commands):")
        print("-" * 60)

        for full_path, filename in sorted(command_list, key=lambda x: x[1]):
            dest_path = os.path.join(plugin_commands_dir, filename)

            if dry_run:
                print(f"  Would move: {filename}")
            else:
                # Check if file already exists at destination
                if os.path.exists(dest_path):
                    print(f"  SKIP (exists): {filename}")
                else:
                    shutil.copy2(full_path, dest_path)
                    print(f"  Moved: {filename}")

    return categorized

if __name__ == '__main__':
    import sys

    base_dir = Path(__file__).parent
    temp_clones_dir = base_dir / 'temp-clones'
    plugins_dir = base_dir / 'plugins'

    # First run in dry-run mode to show what would happen
    dry_run = '--execute' not in sys.argv

    if dry_run:
        print("=" * 60)
        print("DRY RUN MODE - No files will be moved")
        print("Run with --execute to actually move files")
        print("=" * 60)
        print()

    categorized = organize_commands(temp_clones_dir, plugins_dir, dry_run=dry_run)

    if dry_run:
        print("\n" + "=" * 60)
        print("This was a DRY RUN - no files were moved")
        print("Run with --execute to actually move files")
        print("=" * 60)
