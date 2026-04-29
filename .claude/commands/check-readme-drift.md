Cross-check `README.md` against `.claude-plugin/marketplace.json` and report drift. **Read-only — do not edit either file.**

Your task:

1. Read `.claude-plugin/marketplace.json` — source of truth for plugin inventory.
2. Read `README.md` and parse its plugin sections (typically `#### <Display Name>` headings under `## Available Plugins`).
3. For each plugin in the manifest, verify the README has a matching section. For each section in the README, verify there's a matching manifest entry.
4. For plugins present in both, compare:
   - **Description** — manifest `description` vs README section body. Flag substantive divergence (more than whitespace/punctuation differences).
   - **Repo link** — manifest `source.repo` vs the GitHub URL in the README's "View Repo" badge.
   - **Install slug** — manifest `name` vs the slug used in the README's `/plugin install <slug>@danielrosehill` block.

5. Produce a report with these sections (omit a section if it has no entries):

   - **Missing from README** — in manifest, not in README.
   - **Orphaned in README** — in README, not in manifest.
   - **Description drift** — present in both but descriptions diverge. Show manifest text vs README text side-by-side, truncated to ~120 chars each.
   - **Link drift** — repo URL or install slug doesn't match.
   - **Category guesses** — plugins whose README category seems mismatched against the first manifest `tag` (informational, low-confidence — flag for review, don't claim it's wrong).

6. End with a summary line: `<n> plugins clean / <n> with drift / <n> missing / <n> orphaned`.

7. If everything is clean, say so plainly in one line and stop.

8. Do **not** offer to auto-fix unless the user asks. If they do, point them at `/sync-readme`.

Notes:

- Manifest plugin count: `jq '.plugins | length' .claude-plugin/marketplace.json`.
- README plugin count: `grep -c '^#### ' README.md` (approximate — some `####` may be category sub-headers; sanity-check before reporting).
- Be precise about what "drift" means. Reordering is not drift. Whitespace is not drift. A manifest description ending with a period and the README version not is not drift. Substantive content difference is.
