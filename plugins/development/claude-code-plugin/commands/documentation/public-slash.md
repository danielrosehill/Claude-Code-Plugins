The project level slash commands in this repo (at ./claude/commands) can and should be shared publicly.

However, .claude is git-ignored.

Here's how I'd like you to work around this:

- Create a sync script to sync ./.claude/commands to ./slash-commands

Add as a pre-commit hook