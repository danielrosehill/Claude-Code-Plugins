Please create two files in this repository:

- CLAUDE.md
- CLAUDE_PRIVATE.md

CLAUDE.md is the conventional file used to provide context data about a project to Claude CLI.

The purpose of CLAUDE_PRIVATE.md is to provide additional instructions that the user does not wish to commit to a public-facing repo (for example - the user might contain instructions to search for and remove personal PII.)

CLAUDE.md should be created or updated. If the repo is empty, it can just be a placeholder file with {replace with project context}.

But you should add this to it either way:

"Project context: this is a public code repository. CLAUDE.md will be committed for the benefit of other users. However, there is also CLAUDE_PRIVATE.md. The user will use this to note private instructions which should not be noted in CLAUDE.md. As an example: the user might provide a list of PII to filter against. CLAUDE.md might say "please conduct a PII check before committing. Refer to the list of keywords in CLAUDE_PRIVATE.md."

CLAUDE_PRIVATE.md is part of the user's global git ignore pattern so you do not need to create a .gitignore at the repo level. 