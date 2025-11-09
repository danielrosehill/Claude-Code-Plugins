#!/bin/bash

# Script to set up plugin structure and push to GitHub repositories

PLUGINS_DIR="/home/daniel/repos/github/CC-Plugin-Slashes/plugins"
REPOS_DIR="/home/daniel/repos/github"

# Array of all plugins
plugins=(
    "ai-tools"
    "audio"
    "claude-code"
    "conda-management"
    "debugging"
    "development"
    "docker"
    "documentation"
    "filesystem-organization"
    "git-github"
    "ideation"
    "learning"
    "linux-desktop"
    "linux-server"
    "misc"
    "photos"
    "security"
    "seo"
    "server-management"
    "system"
    "tech-research"
    "video"
    "writing-editing"
)

for plugin in "${plugins[@]}"; do
    echo "======================================"
    echo "Processing: $plugin"
    echo "======================================"

    plugin_dir="$PLUGINS_DIR/$plugin"
    repo_name="CC-Plugin-$plugin"
    repo_dir="$REPOS_DIR/$repo_name"

    # Clone the repository
    echo "Cloning repository..."
    cd "$REPOS_DIR"
    gh repo clone "danielrosehill/$repo_name" || { echo "Failed to clone $repo_name"; continue; }

    # Create .claude-plugin directory
    mkdir -p "$repo_dir/.claude-plugin"

    # Create plugin.json with proper formatting
    cat > "$repo_dir/.claude-plugin/plugin.json" << EOF
{
  "name": "$plugin",
  "description": "Claude Code plugin for $plugin slash commands and agents",
  "version": "1.0.0",
  "author": {
    "name": "Daniel Rosehill",
    "email": "public@danielrosehill.com",
    "url": "https://danielrosehill.com"
  }
}
EOF

    # Copy commands directory if it exists
    if [ -d "$plugin_dir/commands" ]; then
        echo "Copying commands..."
        cp -r "$plugin_dir/commands" "$repo_dir/"
    fi

    # Copy agents directory if it exists
    if [ -d "$plugin_dir/agents" ]; then
        echo "Copying agents..."
        cp -r "$plugin_dir/agents" "$repo_dir/"
    fi

    # Copy skills directory if it exists
    if [ -d "$plugin_dir/skills" ]; then
        echo "Copying skills..."
        cp -r "$plugin_dir/skills" "$repo_dir/"
    fi

    # Copy hooks if they exist
    if [ -f "$plugin_dir/hooks/hooks.json" ]; then
        echo "Copying hooks..."
        mkdir -p "$repo_dir/hooks"
        cp "$plugin_dir/hooks/hooks.json" "$repo_dir/hooks/"
    fi

    # Create a basic README
    cat > "$repo_dir/README.md" << EOF
# CC-Plugin-$plugin

Claude Code plugin for $plugin slash commands and agents.

## Installation

\`\`\`bash
/plugin marketplace add danielrosehill/CC-Plugin-$plugin
/plugin install $plugin@danielrosehill
\`\`\`

## Author

**Daniel Rosehill**
- Website: [danielrosehill.com](https://danielrosehill.com)
- Email: public@danielrosehill.com
- GitHub: [@danielrosehill](https://github.com/danielrosehill)

## License

This plugin is licensed under the MIT License.
EOF

    # Add MIT License
    cat > "$repo_dir/LICENSE" << 'EOF'
MIT License

Copyright (c) 2025 Daniel Rosehill

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
EOF

    # Initialize git and push
    cd "$repo_dir"
    git add .
    git commit -m "Initial plugin setup with commands, agents, and configuration"
    git push origin main || git push origin master

    echo "✓ Completed: $plugin"
    echo ""
done

echo "======================================"
echo "All plugins have been set up and pushed!"
echo "======================================"
