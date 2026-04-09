The user has taken one of the following actions:

- Renamed a plugin 
- Removed a plugin 
- Added a new plugin 

You have two tasks:

# Update the marketplace manifest

The marketplace manifest needs to remain an accurate reflection of the marketplace contents:

.claude-plugin/marketplace.json

Make the necessary edits to update the manifest. 

You may also wish to run a quick cross-reference: compare the manifest contents with the plugin repos cloned at `~/repos/github/my-repos/claude-code/cc-plugins/plugins/`. Note that this marketplace repo does **not** use submodules — plugin source is not vendored here. The manifest is the source of truth. Validate after your update.

After updating the manifest, also run `/sync-readme` to regenerate the README plugin inventory.

# Add Changelog Entry 

To ensure robust version control, Daniel maintains a changelog at planning/changelog.md. You should write out a new entry using the time MCP to ensure that you are using the correct time and date. If that fails, ask Daniel for today's date or retrieve via bash. Your innate date knowledge is not correct as this conversation is taking place after your  training. 