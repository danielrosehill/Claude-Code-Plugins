# Claude Household Budget Management Workspace

[![Claude Code](https://img.shields.io/badge/Claude%20Code-Project-8A2BE2?logo=anthropic)](https://github.com/anthropics/claude-code)
[![Claude Code Projects](https://img.shields.io/badge/Claude%20Code-Projects%20Index-blue?logo=github)](https://github.com/danielrosehill/Claude-Code-Repos-Index)
[![Master Index](https://img.shields.io/badge/GitHub-Master%20Index-green?logo=github)](https://github.com/danielrosehill/Github-Master-Index)

A workspace template for household budget management using Claude Code CLI.

## Overview

This template provides a structured file system and configuration for managing household budgets through Claude Code. It includes predefined agents, slash commands, and directory structures for transaction processing, budget creation, expense analysis, goal tracking, and report generation.

## Technical Components

- **Agents**: Six specialized agents for budget creation, expense analysis, goal tracking, transaction processing, report generation, and financial planning
- **Slash Commands**: Pre-configured commands for common budget management operations
- **Transaction Processing**: Import and categorize transaction data from CSV/OFX/QFX/JSON formats
- **Report Generation**: Templated monthly, quarterly, and annual financial reports
- **Goal Tracking**: Structured tracking for savings targets and debt payoff plans
- **Local Data Storage**: All financial data stored locally in structured directories

## Installation

### 1. Clone Repository

```bash
cd ~/repos/github
git clone [repository-url] my-household-budget
cd my-household-budget
```

### 2. Initialize Workspace

Open Claude Code in the directory and execute the setup command:

```bash
/setup-workspace
```

This configures:
- Household profile (currency, members, location)
- Income sources and amounts
- Expense categories and initial budget allocations
- Financial goals and target dates
- Recurring bill schedules

### 3. Create Initial Budget

```bash
/create-monthly-budget
```

### 4. Import Transaction Data (Optional)

Place transaction export files in `transactions/import/`:

```bash
/process-transactions
```

Supported formats: CSV, OFX, QFX, JSON

### 5. Generate First Report

```bash
/monthly-report
```

## Directory Structure

```
.
├── .claude/
│   ├── agents/              # Specialized AI agents for budget tasks
│   │   ├── budget-architect.md
│   │   ├── expense-analyst.md
│   │   ├── goal-tracker.md
│   │   ├── transaction-processor.md
│   │   ├── report-generator.md
│   │   └── financial-advisor.md
│   └── commands/            # Slash commands for common operations
│       ├── setup-workspace.md
│       ├── create-monthly-budget.md
│       ├── process-transactions.md
│       ├── monthly-report.md
│       ├── analyze-spending.md
│       ├── set-financial-goal.md
│       └── review-goals.md
├── context/
│   ├── household/          # Household-specific context
│   ├── financial/          # Financial account details
│   └── goals/              # Detailed goal documentation
├── prompts/                # Reusable prompts for budget tasks
├── outputs/
│   ├── budgets/           # Generated budget documents
│   ├── reports/           # Financial reports and analyses
│   ├── analyses/          # Deep-dive spending analyses
│   └── visualizations/    # Charts and graphs (if generated)
├── transactions/
│   ├── import/            # Place bank/CC exports here
│   └── processed/         # Categorized transaction data
├── budgets/
│   ├── templates/         # Budget templates
│   ├── monthly/           # Monthly budgets
│   └── annual/            # Annual budgets
├── reports/
│   ├── templates/         # Report templates
│   ├── monthly/           # Monthly financial reports
│   ├── quarterly/         # Quarterly reports
│   └── annual/            # Annual reports
├── financial-goals/
│   ├── templates/         # Goal tracking templates
│   ├── active/            # Active financial goals
│   └── archived/          # Completed goals
├── context.md             # Main household configuration
├── CLAUDE.md             # Workspace operation instructions
├── mcp.md                # MCP integration guidance
└── README.md             # This file
```

## Agents

Six specialized agents are configured in `.claude/agents/`:

### budget-architect
Generates monthly and annual budgets using income data, historical spending patterns, and defined financial goals.

**Primary function:** Budget creation and modification

### expense-analyst
Analyzes transaction data to identify spending patterns, trends, and optimization opportunities.

**Primary function:** Spending pattern analysis

### goal-tracker
Manages savings targets, debt payoff schedules, and tracks progress toward defined financial objectives.

**Primary function:** Financial goal management

### transaction-processor
Imports transaction files and applies categorization rules. Learns from manual corrections to improve categorization accuracy.

**Primary function:** Transaction import and categorization

### report-generator
Generates financial reports using predefined templates. Outputs include monthly summaries, quarterly reviews, and annual analyses.

**Primary function:** Report generation

### financial-advisor
Provides strategic financial analysis and scenario modeling for major financial decisions.

**Primary function:** Financial planning and scenario analysis

## Available Slash Commands

### Setup & Configuration
- `/setup-workspace` - Initial workspace configuration wizard
- `/update-context` - Update household information

### Budget Management
- `/create-monthly-budget` - Generate monthly budget
- `/create-annual-budget` - Generate annual budget
- `/adjust-budget` - Modify existing budget

### Transaction Processing
- `/process-transactions` - Import and categorize transactions
- `/reconcile-accounts` - Match transactions to statements

### Analysis & Reporting
- `/monthly-report` - Comprehensive monthly report
- `/analyze-spending` - Deep spending analysis
- `/budget-vs-actual` - Compare budget to actuals

### Goal Management
- `/set-financial-goal` - Define new financial goal
- `/review-goals` - Check progress on all goals
- `/update-goal` - Modify existing goal

### Financial Planning
- `/debt-payoff-plan` - Strategic debt reduction
- `/savings-plan` - Optimize savings allocation
- `/financial-scenario` - Model what-if scenarios

## Workflows

### Monthly Budget Cycle

1. Create budget for upcoming month:
   ```bash
   /create-monthly-budget
   ```

2. Import and process transactions (weekly recommended):
   ```bash
   /process-transactions
   ```

3. Generate end-of-month report:
   ```bash
   /monthly-report
   ```

4. Analyze spending variances:
   ```bash
   /analyze-spending
   ```

### Financial Goal Setup

1. Define goal parameters:
   ```bash
   /set-financial-goal
   ```

2. Allocate budget toward goal:
   ```bash
   /create-monthly-budget
   ```

3. Monitor progress:
   ```bash
   /review-goals
   ```

### Financial Decision Analysis

1. Generate current financial state:
   ```bash
   /monthly-report
   /review-goals
   ```

2. Model scenario using financial-advisor agent

3. Execute decision based on analysis output

## Usage Guidelines

### Maintenance Schedule

**Weekly**:
- Import transaction data
- Verify budget compliance
- Document anomalous expenses

**Monthly**:
- Execute report generation
- Review goal progress metrics
- Generate next month's budget
- Analyze variance between budget and actual spending

**Quarterly**:
- Perform comprehensive financial review
- Adjust goal parameters if necessary
- Optimize budget allocations based on trends

**Annually**:
- Execute year-end financial analysis
- Prepare tax-related expense reports
- Define annual financial objectives
- Create annual budget framework

### Data Management

**Transaction Processing**:
- Import frequency: Weekly minimum
- Categorize transactions promptly after import
- Review automated categorization for accuracy
- Retain raw import files for reference

**Version Control**:
- Commit budgets upon creation or significant modification
- Commit generated reports for audit trail
- Configure .gitignore to exclude sensitive transaction files
- Maintain regular commit schedule for tracking changes

**Privacy Considerations**:
- Exclude files containing full account numbers from commits
- Store credentials in password manager (e.g., 1Password)
- Review .gitignore configuration before remote push operations
- Use private repository for workspace containing actual financial data

### Budget Configuration

**Budget Construction**:
- Base allocations on historical spending data
- Include buffer allocation (5-10%) for unplanned expenses
- Adjust allocations iteratively based on actual patterns
- Avoid overly restrictive allocations that reduce compliance

**Goal Configuration**:
- Use SMART criteria (Specific, Measurable, Achievable, Relevant, Time-bound)
- Prioritize goals appropriately (emergency fund before discretionary savings)
- Track progress consistently
- Review and adjust goals quarterly

**Transaction Review**:
- Review imported transactions regularly
- Identify spending pattern triggers
- Plan budget allocations for irregular but predictable expenses
- Create sinking funds for known future expenses

## Customization

### Adding Custom Categories

1. Modify `context.md` to include new category definition
2. Update budget templates in `budgets/templates/` if necessary
3. Recategorize historical transactions if required

### Creating Custom Reports

1. Define report structure in `reports/templates/`
2. Create corresponding slash command in `.claude/commands/`
3. Update README.md with command documentation

### Modifying Agent Behavior

Edit agent configuration files in `.claude/agents/` to modify:
- Analysis algorithms
- Output formatting
- Recommendation criteria
- Processing rules and categorization logic

## MCP Integration

MCP (Model Context Protocol) servers can extend workspace functionality:
- Bank/credit card data access APIs
- Spreadsheet integration (Google Sheets, Excel)
- Calendar systems for bill reminders
- Visualization libraries for chart generation
- Tax preparation software export interfaces

See `mcp.md` for integration implementation details.

## Troubleshooting

### Transaction Categorization Errors
**Issue**: Transactions assigned to incorrect categories
**Resolution**: Manually correct categorization. The transaction-processor agent learns from manual corrections to improve future categorization accuracy.

### Budget Allocation Insufficient
**Issue**: Consistent budget overruns in specific categories
**Resolution**: Increase budget allocations based on historical spending patterns. Budget allocations should reflect actual spending behavior rather than aspirational targets.

### Goal Progress Tracking Failure
**Issue**: Goal progress not updating correctly
**Resolution**: Verify goal-to-account linkage in `context.md`. Ensure account identifiers match configured goal tracking parameters.

### Incomplete Transaction Import
**Issue**: Transaction import missing expected transactions
**Resolution**: Verify export settings in source financial institution. Ensure export includes all accounts and complete date range.

## Privacy & Security

**Local Data Storage**:
- All financial data stored locally on the filesystem
- No automatic cloud synchronization
- User maintains complete control over data access and retention

**Version Control**:
- Configure repository as private if pushing to remote hosting
- Sensitive files must be included in .gitignore
- Never commit files containing full account numbers or credentials

**Credential Management**:
- Store API keys and credentials in password manager (e.g., 1Password)
- Use environment variables for sensitive configuration data
- Review MCP server configurations for credential exposure

**Security Development Status**:
This is an active area of development. Future versions may include:
- Encrypted local storage for sensitive financial data
- Integration with system keyring services
- Encrypted credential storage patterns

Note: Encrypted secrets storage is a work in progress and may be integrated into this template/pattern in future releases.

## License

MIT License

## Support

- **Issues**: Report bugs or request features via GitHub issues
- **Documentation**: Claude Code documentation available at [docs.claude.com](https://docs.claude.com)

## Technical Details

Built for Claude Code CLI by Anthropic. Implements structured workspace organization for budget management with AI-assisted analysis and reporting.
