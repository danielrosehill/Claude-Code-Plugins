---
description: Manually edit and synchronize CONTEXT.md and CLAUDE.md
---

I would like to make manual updates to the context files in this repository.

This command provides a guided workflow for making coordinated changes to both CONTEXT.md (human context) and CLAUDE.md (agent briefing).

Execute these tasks interactively:

## Task 1: Determine Update Type

Ask the user which type of update they want to make:

1. **Update CONTEXT.md only** - Add/edit human-friendly context without changing agent briefing
2. **Update CLAUDE.md only** - Refine agent instructions without changing source context
3. **Update both files** - Make coordinated changes to both files
4. **Restructure context** - Reorganize how context is stored (single file vs. chunked)

## Task 2: Execute Updates Based on Type

### For CONTEXT.md updates:
- Make the requested changes while preserving narrative style
- Ensure proper formatting and organization
- Maintain conversational tone

### For CLAUDE.md updates:
- Make the requested changes while keeping it structured and actionable
- Ensure clarity and precision
- Maintain agent-optimized format

### For coordinated updates:
- Update CONTEXT.md first with detailed information
- Then update CLAUDE.md to reflect new/changed requirements
- Ensure consistency between files

### For restructuring:
- If converting to chunked context: create context-data/ directory, split content logically
- If consolidating: merge context-data/ files back into single CONTEXT.md
- Update CLAUDE.md to reference new structure

## Task 3: Validate Consistency

After making changes:
1. Verify CLAUDE.md accurately reflects current CONTEXT.md
2. Check that no conflicting information exists between files
3. Ensure all cross-references remain valid
4. Confirm proper formatting and organization

## Task 4: Summarize Changes

Provide a summary of:
- What was changed in each file
- Why the changes were made
- Any impacts on project structure or workflow

## User Input Required

Please describe what updates you'd like to make to the context files.
