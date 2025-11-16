#!/bin/bash

# Generate human-readable submodule list from .gitmodules

OUTPUT_FILE="sources.md"

cat > "$OUTPUT_FILE" << 'EOF'
# Plugin Source Repositories

This document lists all plugin repositories included as git submodules in this marketplace.

## All Plugins

| Plugin Name | Repository URL | Local Path |
|------------|----------------|------------|
EOF

# Parse .gitmodules and extract information
while IFS= read -r line; do
    if [[ $line =~ ^\[submodule ]]; then
        # Start of a new submodule entry
        submodule_name=""
        submodule_path=""
        submodule_url=""
    elif [[ $line =~ ^[[:space:]]*path[[:space:]]*=[[:space:]]*(.*) ]]; then
        submodule_path="${BASH_REMATCH[1]}"
        # Extract plugin name from path (remove plugins/ prefix)
        submodule_name="${submodule_path#plugins/}"
    elif [[ $line =~ ^[[:space:]]*url[[:space:]]*=[[:space:]]*(.*) ]]; then
        submodule_url="${BASH_REMATCH[1]}"
        # Write the table row when we have all three pieces of info
        if [[ -n "$submodule_name" && -n "$submodule_path" && -n "$submodule_url" ]]; then
            echo "| $submodule_name | [$submodule_url]($submodule_url) | \`$submodule_path\` |" >> "$OUTPUT_FILE"
        fi
    fi
done < .gitmodules

cat >> "$OUTPUT_FILE" << 'EOF'

## About Git Submodules

This marketplace uses git submodules to include each plugin repository. This approach:

- Maintains plugins in separate repositories for independent development
- Allows the marketplace to reference specific versions of each plugin
- Keeps the marketplace repository lightweight while providing access to all plugins

## Updating Submodules

To update all submodules to their latest versions:

```bash
git submodule update --remote --recursive
```

To initialize submodules after cloning this repository:

```bash
git submodule update --init --recursive
```

## Plugin Development

Each plugin is developed and maintained in its own repository. To contribute to a specific plugin:

1. Navigate to the plugin's repository (linked in the table above)
2. Fork the repository
3. Make your changes
4. Submit a pull request to the plugin's repository

Changes to individual plugins will be reflected in this marketplace when the submodule references are updated.
EOF

echo "✓ Generated $OUTPUT_FILE"
