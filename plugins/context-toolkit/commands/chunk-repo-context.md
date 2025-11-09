---
description: Split CONTEXT.md into organized chunks in context-data/ directory
---

This repository currently uses a single CONTEXT.md file for storing project context.

As projects grow, a single context file can become unwieldy. This command will help split CONTEXT.md into organized, topic-based chunks stored in a context-data/ directory.

Execute these tasks in sequence:

## Task 1: Analyze Current Context

Read and analyze the current CONTEXT.md to identify:
- Distinct topics and themes
- Natural section boundaries
- Logical groupings of information
- Information that could be categorized

## Task 2: Propose Chunking Structure

Based on the analysis, propose a chunking structure with:
- Suggested topic-based filenames (e.g., `project-vision.md`, `technical-requirements.md`, `user-stories.md`)
- What content would go in each file
- Rationale for the proposed organization

Present this structure to the user for approval before proceeding.

## Task 3: Create context-data/ Directory Structure

After user approval:
1. Create `context-data/` directory in repository root
2. Create individual markdown files based on approved structure
3. Distribute content from CONTEXT.md into appropriate files
4. Ensure each file has:
   - Clear descriptive filename
   - Appropriate section headers
   - Consistent formatting
   - Preserved narrative style

## Task 4: Create Context Index

Create `context-data/README.md` that serves as an index:
- List all context files with brief descriptions
- Explain the organization structure
- Provide guidance on where to add new context
- Include cross-references between related files

## Task 5: Update CLAUDE.md

Update CLAUDE.md to reference the new chunked structure:
- Note that context is now organized in context-data/ directory
- Reference the index file (context-data/README.md)
- Provide guidance on which context files are most relevant for specific tasks
- Update any existing references to CONTEXT.md

## Task 6: Archive Original CONTEXT.md

- Rename CONTEXT.md to CONTEXT.md.backup
- Add a note in the backup explaining it has been chunked
- Keep the backup for reference

## Best Practices for Chunking

**Good chunk topics:**
- Project vision and goals
- User requirements and stories
- Technical specifications
- Architecture decisions
- Development workflow
- Domain knowledge
- Historical context and decisions
- Integration requirements

**Chunking guidelines:**
- Each file should cover a cohesive topic
- Aim for 200-500 lines per file (adjust based on content)
- Use descriptive, consistent naming (kebab-case recommended)
- Avoid over-chunking (don't create files with only a few lines)
- Ensure chunks can be understood somewhat independently
