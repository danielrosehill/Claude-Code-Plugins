#!/bin/bash

# Update Submodules and Push Script
# Updates all git submodules and pushes changes to remote

set -e

echo "Updating git submodules..."
git submodule update --remote --merge

echo ""
echo "Checking for changes..."
if git diff --quiet && git diff --staged --quiet; then
    echo "No changes to commit."
else
    echo "Changes detected. Staging submodule updates..."
    git add .

    echo ""
    echo "Creating commit..."
    git commit -m "$(cat <<'EOF'
Update submodules to latest versions
EOF
)"

    echo ""
    echo "Pushing to remote..."
    git push

    echo ""
    echo "✓ Submodules updated and pushed successfully"
fi
