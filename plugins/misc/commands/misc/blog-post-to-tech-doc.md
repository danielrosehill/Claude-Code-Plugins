# Blog Post to Technical Documentation Converter

Convert informal, narrative blog posts into structured, professional technical documentation. This command transforms conversational content into precise, reference-quality documentation.

## Your Task

Take the user's blog post content and convert it into technical documentation with these characteristics:

### Structure Transformation

- **Remove narrative elements**: Strip out personal anecdotes, casual introductions, and storytelling
- **Create clear hierarchy**: Use proper heading levels (H1, H2, H3) for logical organization
- **Add standardized sections**: Include Overview, Prerequisites, Installation, Configuration, Usage, Examples, Troubleshooting, etc.
- **Extract actionable content**: Convert prose into step-by-step instructions where applicable
- **Organize information**: Group related concepts into logical sections

### Style Changes

- **Imperative voice for instructions**: "Run the command" not "You can run the command"
- **Remove conversational tone**: Eliminate phrases like "Let's dive in," "Pretty cool, right?", "So here's the thing"
- **Technical precision**: Replace casual explanations with accurate technical terms
- **Objective language**: Remove opinions and subjective statements unless factual
- **Concise writing**: Eliminate fluff and redundancy
- **Consistent terminology**: Use the same terms throughout (no synonyms for key concepts)

### Content Enhancement

- **Add code blocks**: Format any code examples with proper syntax highlighting
- **Create tables**: Convert lists of options/parameters into structured tables
- **Include warnings/notes**: Use callouts for important information
- **Add cross-references**: Link related sections together
- **Specify prerequisites**: Clearly state requirements upfront
- **Version information**: Include version numbers and compatibility details if mentioned

### Documentation Elements to Add

1. **Synopsis/Overview**: Brief description of what this documents
2. **Table of Contents**: If the document is substantial
3. **Installation/Setup**: Step-by-step setup instructions
4. **Configuration**: Available options and parameters
5. **Examples**: Practical usage examples with expected output
6. **API Reference**: If applicable, document functions/methods
7. **Troubleshooting**: Common issues and solutions
8. **Additional Resources**: Links to related documentation

## Example Transformation

**Blog Post Style**:
```
Hey everyone! Today I want to share this awesome trick I discovered for speeding up your Docker builds. So basically, you know how Docker builds can be super slow sometimes? Well, I found that if you use multi-stage builds, you can cut down the time significantly. Let me show you how I do it...
```

**Technical Documentation Style**:
```
# Multi-Stage Docker Builds

## Overview
Multi-stage builds reduce Docker image build time and final image size by separating the build environment from the runtime environment.

## Prerequisites
- Docker Engine 17.05 or later
- Basic understanding of Dockerfiles

## Implementation

### Syntax
Multi-stage builds use multiple `FROM` statements in a single Dockerfile:

```dockerfile
FROM node:16 AS builder
WORKDIR /app
COPY package*.json ./
RUN npm ci

FROM node:16-alpine
WORKDIR /app
COPY --from=builder /app/node_modules ./node_modules
```

### Benefits
- Reduced build time through layer caching
- Smaller final images (runtime-only dependencies)
- Cleaner separation of build and runtime concerns
```

## Output Format

Provide the converted technical documentation in clean markdown format, ready for inclusion in a documentation repository or wiki.

Paste the blog post content you'd like to convert to technical documentation.
