# CONTEXT.md Toolkit Examples

This directory contains example CONTEXT.md and CLAUDE.md files for different project types.

## Available Examples

### Web Application (`web-app/`)
Example context files for a web application project (reading tracker).
- Shows conversational CONTEXT.md with voice transcription style
- Demonstrates structured CLAUDE.md extraction
- Illustrates requirements and technical decisions

### CLI Tool (`cli-tool/`)
Example context files for a command-line tool project.
- Shows technical context with implementation details
- Demonstrates chunked context structure (context-data/)
- Illustrates agent briefing for developer tool

### Data Analysis (`data-analysis/`)
Example context files for a data analysis project.
- Shows research-oriented context
- Demonstrates domain knowledge capture
- Illustrates scientific/analytical project structure

## Using These Examples

1. **Browse examples** to see different CONTEXT.md styles
2. **Copy templates** as starting points for your projects
3. **Study conversions** to understand CONTEXT.md → CLAUDE.md transformation
4. **Adapt patterns** to your specific use case

## Example Structure

Each example includes:
- `CONTEXT.md` - Human-friendly context (as it might be captured)
- `CLAUDE.md` - Agent-ready briefing (generated via `/context-to-claude`)
- `README.md` - Notes about the example and key takeaways

Some examples also include:
- `context-data/` - Chunked context structure for larger projects
- `voice-transcript.txt` - Raw voice transcription before editing (where applicable)
