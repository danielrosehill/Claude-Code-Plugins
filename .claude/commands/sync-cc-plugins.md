Ensure every plugin referenced in `.claude-plugin/marketplace.json` has its repo cloned into `~/repos/github/my-repos/claude-code/cc-plugins/plugins/`.

This is the working directory where Daniel edits plugin source locally. This marketplace repo does **not** vendor plugin source (no submodules), so the `cc-plugins/plugins/` tree is the single source of truth for local plugin working copies.

Your task:

1. Parse `.claude-plugin/marketplace.json` and extract every plugin's `source.repo` (format: `owner/reponame`). The bare repo name is what gets used as the directory name under `cc-plugins/plugins/`.
2. List the existing directories in `~/repos/github/my-repos/claude-code/cc-plugins/plugins/`.
3. Compute the diff:
   - **Missing**: in manifest but not on disk → clone.
   - **Extra**: on disk but not in manifest → report to the user. Do **not** auto-delete. Ask whether to keep, rename, or remove.
4. For each missing repo, `git clone https://github.com/<owner>/<reponame>.git` into `cc-plugins/plugins/`. Clone in a loop; report any failures clearly (e.g. repo doesn't exist, permission denied).
5. After cloning, print a summary: how many were already present, how many cloned, how many extras flagged for review.
6. Do not modify anything in this marketplace repo. Do not commit.
