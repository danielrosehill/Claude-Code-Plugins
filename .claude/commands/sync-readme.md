Regenerate `README.md` and `docs/categories/` from `.claude-plugin/marketplace.json`.

The catalogue is **generated, not hand-edited**. Run:

```bash
python3 scripts/generate-catalogue.py
```

That rewrites the `## Available Plugins` block of `README.md` (everything between
that heading and `## Installation`) and regenerates every page under
`docs/categories/`. Everything else in `README.md` is hand-maintained and the
script leaves it alone.

The script requires every plugin entry to carry `displayName` and `category`. It
exits with an error naming any entry that is missing either — fix the manifest,
don't edit the generated output.

Your task:

1. Confirm the manifest is valid: `claude plugin validate .claude-plugin/marketplace.json`
2. Run the generator.
3. Review `git diff` — the only changes should be the `## Available Plugins` table
   and files under `docs/categories/`.
4. Do not commit; leave the changes for the user to review.

If a plugin needs a category that doesn't exist yet, add it to the manifest entry
and ask the user before introducing the new category name — categories are derived
from the manifest, so a typo silently creates a new one-plugin category page.

Note: this marketplace does not use submodules. The README links to each plugin's
GitHub repo, never to a local path.
