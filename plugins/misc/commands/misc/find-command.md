Launch an interactive fuzzy finder to search through all available slash commands.

Execute: ccslash-finder

This will:
1. Scan all slash commands in ~/.claude/commands
2. Present them in an interactive fzf picker with search
3. Show live preview of command content as you navigate
4. Display the selected command's details when you press Enter

The script will output the selected command's:
- Command name (to use with /)
- File location
- Full command content

Then inform me which command was selected so I understand the context and can help you use it.
