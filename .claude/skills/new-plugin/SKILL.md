---
name: new-plugin
description: Add a new Claude Code plugin or skill to Daniel's marketplace. Use when the user says "add a new plugin", "register a plugin", "add a skill to the marketplace", or similar. Walks through the repo → submodule → manifest → README → sources → changelog → commit flow.
---

# Add A New Plugin Or Skill To The Marketplace

Every plugin or skill in this marketplace is its own GitHub repository. Skills are not added directly — they live inside a plugin repo (either a dedicated skill-only plugin, or alongside other commands/agents in an existing plugin). This skill assumes the plugin repo **already exists and is pushed to GitHub**. If it doesn't, stop and ask the user to build/push it first (in a separate working directory).

## Inputs to gather from the user

1. **Plugin name** (kebab-case, as it will appear in the manifest — e.g. `my-new-plugin`).
2. **GitHub repo** (`danielrosehill/<repo-name>`).
3. **Short description** (one sentence, user-facing).
4. **Category** — which section of `README.md` it belongs under.
5. **Tags** — short list for the manifest.

## Pre-flight checks

- Confirm cwd is the marketplace repo root (`Claude-Code-Plugins`).
- `gh repo view danielrosehill/<repo-name>` to verify the repo exists and is public.
- Verify the plugin name is not already in `.claude-plugin/marketplace.json` (grep for `"name": "<plugin-name>"`).
- Remind the user: the source repo must be depersonalised (no Daniel-specific paths, secrets, client info) since the marketplace is public.

## Steps

1. **Add the submodule**
   ```bash
   git submodule add https://github.com/danielrosehill/<repo-name>.git plugins/<plugin-name>
   ```

2. **Register in `.claude-plugin/marketplace.json`** — append a new entry to the `plugins` array:
   ```json
   {
     "name": "<plugin-name>",
     "source": {
       "source": "github",
       "repo": "danielrosehill/<repo-name>"
     },
     "description": "<description>",
     "version": "1.0.0",
     "author": {
       "name": "Daniel Rosehill",
       "email": "public@danielrosehill.com",
       "url": "https://danielrosehill.com"
     },
     "license": "MIT",
     "tags": ["<tag1>", "<tag2>"]
   }
   ```
   Validate the JSON with `python3 -c "import json; json.load(open('.claude-plugin/marketplace.json'))"` and confirm no duplicate `name` values.

3. **Update `README.md`** — add a bullet/entry under the appropriate category section.

4. **Regenerate `planning/sources.md`**
   ```bash
   bash scripts/generate-submodule-list.sh
   ```

5. **Add a changelog entry** to `planning/changelog.md` — date (use `date +%Y-%m-%d`), plugin name, one-line summary.

6. **Commit and push**
   ```bash
   git add .gitmodules plugins/<plugin-name> .claude-plugin/marketplace.json README.md planning/sources.md planning/changelog.md
   git commit -m "Add <plugin-name> plugin to marketplace"
   git push
   ```

## Reference

- Anthropic plugin docs: https://code.claude.com/docs/en/plugins
- Marketplace docs: https://code.claude.com/docs/en/plugin-marketplaces
- Overall procedure is also documented in the repo's `CLAUDE.md`.
