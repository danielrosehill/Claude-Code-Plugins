---
name: "source-command-review-index-delta"
description: "Compare Daniel's Codex-Projects-Index against this marketplace and suggest repos worth refactoring as plugins."
---

# source-command-review-index-delta

Use this skill when the user asks to run the migrated source command `review-index-delta`.

## Command Template

# Review Index Delta

Daniel maintains a master index of all his Codex projects at:
https://github.com/danielrosehill/Codex-Projects-Index

This marketplace (`.Codex-plugin/marketplace.json`) is a curated subset — only projects that make sense as *shareable* Codex plugins. Your job is to find the delta and recommend candidates for refactoring into plugins.

## Steps

1. **Fetch the master index.** Try in order:
   - `gh repo view danielrosehill/Codex-Projects-Index --json ...` to confirm it exists
   - Read `README.md` from the index repo via `gh api repos/danielrosehill/Codex-Projects-Index/contents/README.md --jq .content | base64 -d`
   - Fall back to WebFetch on the GitHub URL if gh fails
   - Extract the list of referenced repos (look for `github.com/danielrosehill/<repo>` links or a structured table)

2. **Load the marketplace side.** Parse `.Codex-plugin/marketplace.json` and collect every `source.repo` value (e.g. `danielrosehill/ai-tools-plugin`). Also note the local `plugins/` submodule directories as a sanity check.

3. **Compute the delta.** For each repo in the master index that is NOT already in the marketplace, evaluate it as a plugin candidate. Skip obvious non-candidates without belabouring them (one-line note is fine):
   - Personal/private workspaces (anything Daniel-specific that can't be depersonalised)
   - Pure data/content repos (indexes, resource lists, note dumps)
   - One-off experiments or archived repos
   - Repos that are already MCP servers, libraries, or standalone apps rather than Codex extensions

4. **For each viable candidate, assess:**
   - **What it does** (one sentence, inferred from the index entry or a quick `gh repo view`)
   - **Why it could be a plugin** — does it contain reusable slash commands, agents, or skills?
   - **Depersonalisation effort** — low / medium / high (per the repo's `AGENTS.md` guideline that plugins must not be Daniel-specific)
   - **Suggested plugin name** (kebab-case)
   - **Recommendation**: strong candidate / worth considering / probably skip

5. **Output a markdown report** with three sections:
   - **Strong candidates** — repos that clearly should become plugins
   - **Worth considering** — plausible but would need real work or judgement
   - **Skipped (with one-line reason each)** — so Daniel can see you considered them

   End with a short summary: `X repos in index, Y already in marketplace, Z new candidates identified`.

6. **Do not modify anything.** This is a review command — no file writes, no submodule adds, no commits. If Daniel wants to act on a candidate, he'll invoke the `new-plugin` skill separately.

## Notes

- If the master index structure is unclear, read it yourself and adapt — don't guess at repo names.
- Prefer batching: a single `gh repo list danielrosehill --limit 200 --json name,description,isArchived` can give quick context for many repos at once.
- Be decisive. Daniel prefers a crisp "strong candidate / skip" call over hedged maybes.
