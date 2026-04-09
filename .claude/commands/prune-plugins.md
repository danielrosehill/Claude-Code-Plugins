---
description: Identify redundant, overlapping, or low-value plugins in the marketplace and remove them with user confirmation.
---

# Prune Plugins

Review the marketplace and find plugins that should be removed — duplicates, heavy overlap, stale/abandoned, or just not pulling their weight. Nothing is deleted without Daniel's explicit confirmation.

## Steps

1. **Load the marketplace.** Parse `.claude-plugin/marketplace.json` and list every plugin with its `name`, `description`, `tags`, and `source.repo`. Also list the `plugins/` submodule directories.

2. **Gather lightweight context for each plugin.** For overlap detection, skim each plugin's purpose — read the description, and if two plugins sound similar, actually look at their repo READMEs (`gh api repos/<owner>/<repo>/contents/README.md --jq .content | base64 -d`) or the submodule contents to compare what slash commands / agents they ship.

3. **Flag candidates for removal in these buckets:**
   - **Duplicates** — same repo listed twice, or two plugins that wrap essentially the same functionality
   - **Heavy overlap** — plugins whose commands/agents substantially duplicate another plugin; recommend which one to keep and why
   - **Stale / abandoned** — source repo archived, empty, or hasn't been touched in a long time relative to the rest
   - **Too niche / Daniel-specific** — plugins that slipped through depersonalisation and aren't useful to others (reference `CLAUDE.md`: "Plugins Shouldn't Be Daniel-Specific")
   - **Broken** — submodule points at a repo that no longer exists or is private

4. **Present the findings** as a table or bulleted list. For each candidate include:
   - Plugin name
   - Bucket (duplicate / overlap / stale / niche / broken)
   - One-line reason
   - Recommended action (remove / keep / merge into X)

5. **Ask for confirmation before touching anything.** Use a single clear prompt listing exactly which plugins will be removed. Do NOT proceed on vague approval — Daniel must name the plugins or say "remove all flagged."

6. **For each confirmed removal, perform the full cleanup:**
   ```bash
   # Remove submodule
   git submodule deinit -f plugins/<plugin-name>
   git rm -f plugins/<plugin-name>
   rm -rf .git/modules/plugins/<plugin-name>
   ```
   Then:
   - Remove the entry from `.claude-plugin/marketplace.json` (validate JSON after)
   - Remove the entry from `README.md`
   - Regenerate `planning/sources.md` via `bash scripts/generate-submodule-list.sh`
   - Add a changelog entry to `planning/changelog.md` noting what was removed and why

7. **Commit** with a clear message listing the removed plugins. Do not push unless asked.

## Guardrails

- Never remove a plugin without Daniel naming it in the confirmation.
- The source GitHub repositories are **not** your concern — only remove from this marketplace. Don't `gh repo delete` anything.
- If in doubt, flag it and let Daniel decide rather than silently dropping it.
