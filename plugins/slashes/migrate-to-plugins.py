#!/usr/bin/env python3
"""
Migrate slash commands from old category structure to new plugin structure
"""

import shutil
from pathlib import Path

# Define the mapping from old categories to new plugins
CATEGORY_TO_PLUGIN = {
    # Development plugin
    'development': 'development',
    'operations': 'development',

    # AI Tools plugin
    'ai-dev': 'ai-tools',
    'ai-engineering': 'ai-tools',
    'local-ai': 'ai-tools',

    # Claude Code plugin
    'claude-code': 'claude-code',

    # Documentation plugin
    'documentation': 'documentation',
    'tech-docs': 'documentation',

    # Writing & Editing plugin
    'writing-and-editing': 'writing-editing',
    'conv-mgmt': 'writing-editing',

    # Audio plugin (will need to split from media)
    'media': 'audio',  # Audio commands

    # Video plugin (will need to split from media)
    # 'media': 'video',  # Video commands - handled separately

    # Photos plugin (will need to split from media)
    # 'media': 'photos',  # Photo commands - handled separately

    # Mixed Media plugin
    # 'media': 'mixed-media',  # General media - handled separately

    # Filesystem Organization plugin
    'filesystem-ops': 'filesystem-organization',

    # SEO plugin
    'seo-web': 'seo',

    # Security plugin
    'cybersec': 'security',

    # Ideation plugin
    'ideation': 'ideation',
    'experiments': 'ideation',

    # Learning plugin
    'educational': 'learning',

    # Misc plugin
    'misc': 'misc',
    'common-tasks': 'misc',
    'for-fun': 'misc',
    'general-purpose': 'misc',
}

# Media commands need manual categorization
# List of command patterns for media categorization
AUDIO_COMMANDS = [
    'audio', 'voice', 'sound', 'noise', 'normalize', 'extract-audio',
    'convert-audio', 'split-audio', 'basic-voice'
]

VIDEO_COMMANDS = [
    'video', 'merge-videos', 'cut-video', 'transcode', 'downscale',
    'stock-vid', '4k'
]

PHOTO_COMMANDS = [
    'image', 'photo', 'resize', 'compress-image', 'crop', 'bg-removal',
    'convert-to-webp', 'batch-resize', 'watermark', 'process-stock'
]

def categorize_media_command(command_name: str) -> str:
    """Determine if a media command belongs to audio, video, photos, or mixed-media"""
    name_lower = command_name.lower()

    if any(pattern in name_lower for pattern in AUDIO_COMMANDS):
        return 'audio'
    elif any(pattern in name_lower for pattern in VIDEO_COMMANDS):
        return 'video'
    elif any(pattern in name_lower for pattern in PHOTO_COMMANDS):
        return 'photos'
    else:
        return 'mixed-media'

def migrate_commands():
    """Migrate commands from old structure to new plugin structure"""
    base_path = Path('/home/daniel/repos/github/CC-Plugin-Slashes/Claude-Slash-Commands')
    commands_path = base_path / 'commands'
    plugins_path = Path('/home/daniel/repos/github/CC-Plugin-Slashes/plugins')

    copied_count = 0
    media_count = {'audio': 0, 'video': 0, 'photos': 0, 'mixed-media': 0}

    # Process each category
    for category_dir in commands_path.iterdir():
        if not category_dir.is_dir():
            continue

        category_name = category_dir.name

        # Get target plugin
        if category_name in CATEGORY_TO_PLUGIN:
            plugin_name = CATEGORY_TO_PLUGIN[category_name]

            # Copy all .md files from this category
            for cmd_file in category_dir.glob('*.md'):
                target_dir = plugins_path / plugin_name / 'commands'
                target_file = target_dir / cmd_file.name

                # Copy the file
                shutil.copy2(cmd_file, target_file)
                copied_count += 1
                print(f"✓ {category_name}/{cmd_file.name} → {plugin_name}/commands/")

        # Special handling for media category
        elif category_name == 'media':
            for cmd_file in category_dir.glob('*.md'):
                # Determine subcategory
                media_plugin = categorize_media_command(cmd_file.stem)
                target_dir = plugins_path / media_plugin / 'commands'
                target_file = target_dir / cmd_file.name

                # Copy the file
                shutil.copy2(cmd_file, target_file)
                media_count[media_plugin] += 1
                copied_count += 1
                print(f"✓ media/{cmd_file.name} → {media_plugin}/commands/")
        else:
            print(f"⚠ Skipping unknown category: {category_name}")

    print(f"\n✅ Migration complete!")
    print(f"   Total commands copied: {copied_count}")
    if sum(media_count.values()) > 0:
        print(f"   Media breakdown:")
        for media_type, count in media_count.items():
            if count > 0:
                print(f"     - {media_type}: {count} commands")

if __name__ == '__main__':
    migrate_commands()
