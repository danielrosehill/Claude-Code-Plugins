# Claude Workflow Planning Template

[![Claude Code](https://img.shields.io/badge/Claude%20Code-Project-8A2BE2?logo=anthropic)](https://github.com/anthropics/claude-code)
[![Claude Code Projects](https://img.shields.io/badge/My%20Claude%20Code-Projects-blue?logo=github)](https://github.com/danielrosehill/Claude-Code-Repos-Index)
[![Master Index](https://img.shields.io/badge/Master-Index-green?logo=github)](https://github.com/danielrosehill/Github-Master-Index)

A structured repository template for implementing workflow planning and time management using Claude Code CLI.

## Overview

This template provides a file structure, agent definitions, and slash command implementations for managing schedules and goals through Claude Code. The system operates at three temporal levels (daily, weekly, monthly) and maintains connections between immediate tasks and longer-term objectives.

## Implementation

### Initial Setup

1. Clone or fork this repository to create a workflow planning workspace
2. Execute `/setup-workspace` to configure user-specific preferences
3. Use `/weekly-plan` or `/daily-plan` to generate initial schedules

### Components

#### Agents

The template includes three specialized agents defined in `.claude/agents/`:

- **workflow-planner**: Generates time-blocked schedules with task allocation
- **goal-architect**: Creates and tracks objectives across temporal horizons
- **time-triage-specialist**: Implements task prioritization algorithms

#### Slash Commands

Commands defined in `.claude/commands/` provide specific operations:

- `/setup-workspace` - Configuration wizard for workspace initialization
- `/daily-plan` - Daily schedule generation
- `/weekly-plan` - Weekly schedule generation
- `/monthly-plan` - Monthly planning framework
- `/review-week` - Retrospective analysis of completed timeframes
- `/triage-tasks` - Task sorting and prioritization interface
- `/set-goals` - Goal definition and documentation workflow

#### Directory Structure

```
.
├── .claude/
│   ├── agents/           # Agent definitions
│   └── commands/         # Slash command implementations
├── context.md            # User configuration and preferences
├── CLAUDE.md            # Repository operation instructions
├── workplans/           # Generated schedule outputs
│   └── templates/       # Schedule format templates
├── goals/               # Goal documentation
│   └── templates/       # Goal format templates
└── education/           # Time management reference materials
```

## Usage

### Configuration

Execute `/setup-workspace` to configure:
- Timezone and work schedule parameters
- Context and planning methodology preferences
- Energy patterns and productivity data
- Temporal constraints and boundaries
- Goal tracking frameworks (SMART, OKR, etc.)

Configuration data is written to `context.md` and used to contextualize all subsequent operations.

### Schedule Generation

**Daily**:
```
/daily-plan
```
Produces time-blocked daily schedule with task allocation and priority assignment.

**Weekly**:
```
/weekly-plan
```
Generates 7-day schedule with balanced workload distribution and goal alignment.

**Monthly**:
```
/monthly-plan
```
Creates monthly planning framework organized by weeks with milestone tracking.

### Goal Management

Define and track objectives:

```
/set-goals
```

Supports multiple goal frameworks (SMART, OKR, freeform) across temporal horizons (short, medium, long-term). Goals are stored in the `goals/` directory and referenced during schedule generation.

### Task Prioritization

Process unorganized task lists:

```
/triage-tasks
```

Implements sorting and prioritization algorithms to organize task input into actionable schedules.

### Retrospective Analysis

Review completed time periods:

```
/review-week
```

Analyzes execution against plan, identifies variances, and extracts lessons for future planning iterations.

## Design Principles

1. **Single-user model**: 24-hour daily constraint with professional, personal, and leisure allocation
2. **Goal-driven planning**: Short-term activities map to longer-term objectives
3. **Adaptive scheduling**: Plans serve as frameworks, not rigid constraints
4. **Buffer allocation**: Include slack time for unexpected requirements
5. **Iterative improvement**: Retrospective analysis informs future planning

## Extension

### Modifying Configuration

Edit `context.md` to update user preferences, constraints, or patterns. Configuration changes affect all subsequent planning operations.

### Template Modification

Templates in `workplans/templates/` and `goals/templates/` define output formatting. These can be modified to change schedule and goal documentation structure.

### Custom Commands

Additional slash commands can be implemented in `.claude/commands/`. Refer to [Claude Code documentation](https://docs.claude.com/en/docs/claude-code) for command syntax and implementation details.

## Operation Examples

### Weekly Schedule Generation

```
User input: Project deadline Wednesday, three client meetings, Python learning objective

Output: 7-day schedule with:
- Deep work blocks for project completion
- Scheduled meeting times
- Allocated learning sessions
- Break intervals
```

### Task Triage

```
User input: Q4 report, 50 emails, presentation prep, dentist appointment Tuesday, assist friend with move, networking event Thursday

Output: Prioritized task list categorized as:
- Critical/immediate
- Scheduled/date-bound
- Deferrable
With conflict identification and resolution suggestions
```

### Goal Definition

```
User input: Improve public speaking, eventual conference presentation

Output: SMART goal structure with:
- Specific target: Conference presentation
- Measurable milestones: Toastmasters attendance, internal presentations
- Time-bound deadline
- Action steps
Saved to goals/ directory
```

## Implementation Notes

1. Execute `/setup-workspace` before first use for proper initialization
2. Use `/review-week` regularly to maintain iterative improvement cycle
3. Keep `context.md` synchronized with current constraints and preferences
4. Allocate buffer time (recommend 20% of total) for unexpected requirements
5. Verify weekly plans align with documented longer-term goals

## Repository Information

This is a template repository. Fork or clone to create instances. Modifications and extensions can be contributed back to the template repository.

## License

MIT License

## References

- [Claude Code Documentation](https://docs.claude.com/en/docs/claude-code)
- [Issue Reporting](https://github.com/anthropics/claude-code/issues)
