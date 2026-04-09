Edit the `description` field of one plugin in `.claude-plugin/marketplace.json`.

Your task:

1. Ask the user which plugin to edit (by `name`) if they haven't already said. List the current plugin names from the manifest if helpful.
2. Show the user the current description.
3. Ask for the new description, or accept it if they've already provided one in their prompt.
4. Update the `description` field for that plugin in `.claude-plugin/marketplace.json`. Do not touch anything else.
5. Validate the JSON still parses.
6. Run `/sync-readme` to propagate the new description to `README.md`.
7. Add a one-line entry to `planning/changelog.md` noting the description update (use today's date from bash `date` if needed).
8. Leave changes staged; do not commit unless the user asks.
