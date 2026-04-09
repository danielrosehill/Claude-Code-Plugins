Sync `README.md` with the current plugin inventory from `.claude-plugin/marketplace.json`.

Your task:

1. Read `.claude-plugin/marketplace.json` — this is the source of truth for what plugins exist in the marketplace.
2. Read the current `README.md` to understand its structure (category headings, table formats, link style, etc.).
3. Update `README.md` so its plugin listings exactly match the manifest:
   - Every manifest plugin must appear in the README.
   - Any plugin in the README but not in the manifest must be removed.
   - Names, descriptions, and GitHub repo links should match the manifest.
   - Preserve the existing category grouping (derived from the first `tag` on each plugin, or from existing README sections — use your judgment).
4. Do **not** restructure the README or add new sections unless necessary to fit a plugin that has no matching category. Ask before introducing a new category.
5. After editing, do a quick diff-in-your-head: manifest plugin count should equal README plugin count.
6. Do not commit — leave changes staged for the user to review.

Note: this marketplace does not use submodules. Do not reference `plugins/` as a local directory. Plugin source lives at `~/repos/github/my-repos/claude-code/cc-plugins/plugins/` but the README should link to the GitHub repos, not local paths.
