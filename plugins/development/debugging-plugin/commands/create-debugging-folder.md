# Create Debugging Folder

You are helping the user set up a structured debugging workspace for investigating and resolving issues.

## Task

Create a well-organized debugging folder structure in the current directory that includes:

1. **Root debugging folder** with a descriptive name based on the issue being investigated
2. **Subdirectories** for:
   - `logs/` - For storing relevant log files and outputs
   - `reproduction/` - For minimal reproduction cases and test scripts
   - `analysis/` - For notes, findings, and analysis documents
   - `solutions/` - For attempted fixes and working solutions
   - `references/` - For relevant documentation, stack traces, and external resources

3. **Initial files**:
   - `README.md` in the root with:
     - Issue description
     - Environment details
     - Steps to reproduce
     - Current status
     - Timeline/log of investigation
   - `notes.md` in the analysis folder for ongoing observations

## Process

1. Ask the user for the issue/bug name or description to name the folder appropriately
2. Create the folder structure
3. Initialize the README.md with template sections
4. Confirm the structure has been created and guide the user on next steps

## Output

Provide the user with:
- Confirmation of the created structure
- Path to the new debugging folder
- Brief explanation of how to use each subdirectory
- Suggestion to start documenting the issue in the README.md
