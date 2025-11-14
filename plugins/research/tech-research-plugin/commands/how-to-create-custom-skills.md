# How to Create Custom Skills for Claude

Source: https://support.claude.com/en/articles/12512198-how-to-create-custom-skills

## Overview
Custom Skills enhance Claude with specialized knowledge and workflows. They range from simple markdown instructions to complex multi-file packages with executable code.

## Key Characteristics of Quality Skills
The best Skills should: "Solve a specific, repeatable task" and "Have clear instructions that Claude can follow." They work best when focused on one workflow rather than attempting multiple functions.

## Core Structure: Skill.md File

Every Skill requires a `Skill.md` file with YAML frontmatter containing:

**Required Fields:**
- **name**: Human-friendly identifier (max 64 characters)
- **description**: "A clear description of what the Skill does and when to use it" (max 200 characters). This is critical as Claude uses it to determine activation.

**Optional Fields:**
- version (e.g., 1.0.0)
- dependencies (e.g., python>=3.8, pandas>=1.5.0)

The markdown body provides detailed instructions after Claude reads the metadata.

## Adding Resources and Scripts

For extensive information, include supplementary files like REFERENCE.md. Advanced Skills can attach executable code in Python (pandas, numpy, matplotlib) or JavaScript/Node.js. Note: "all dependencies must be pre-installed in the container" for API Skills.

## Packaging Requirements

Correct ZIP structure places the Skill folder at the root:
```
my-Skill.zip
└── my-Skill/
    ├── Skill.md
    └── resources/
```

## Testing Process

Before uploading: verify Skill.md clarity, validate file references, and test with example prompts. After uploading: enable in Settings > Capabilities, try varied prompts, and review Claude's thinking to confirm proper invocation.

## Best Practices

"Create separate Skills for different workflows. Multiple focused Skills compose better than one large Skill." Include examples in documentation, version iterations, and test incrementally. "Skills can't explicitly reference other Skills," but Claude uses multiple Skills automatically.

## Security Considerations

Avoid hardcoding sensitive information like API keys. Review downloaded Skills before enabling, and use appropriate MCP connections for external services.

**Resources:** Example Skills are available at https://github.com/anthropics/skills
