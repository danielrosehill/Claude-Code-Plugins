# CLAUDE.md - Household Budget Workspace

## Purpose

This workspace is designed for comprehensive household budget management using Claude Code CLI. It provides a structured environment for tracking income, expenses, savings goals, and financial health with AI-assisted analysis and reporting.

## Repository Structure

```
.
├── .claude/
│   ├── agents/              # Specialized budget management agents
│   └── commands/            # Slash commands for budget operations
├── context/
│   ├── household/          # Household-specific context
│   ├── financial/          # Financial account details
│   └── goals/              # Financial goals documentation
├── prompts/                # Reusable prompts for budget tasks
├── outputs/
│   ├── budgets/           # Generated budget documents
│   ├── reports/           # Financial reports and analyses
│   ├── analyses/          # Deep-dive financial analyses
│   └── visualizations/    # Charts and graphs
├── transactions/
│   ├── import/            # Raw transaction data for import
│   └── processed/         # Processed and categorized transactions
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
│   └── archived/          # Completed or abandoned goals
├── context.md             # Main household context configuration
├── CLAUDE.md             # This file - workspace instructions
└── README.md             # User-facing documentation
```

## Workspace Philosophy

### Single Household Model
This workspace is designed for one household unit with:
- Multiple possible income sources
- Diverse expense categories
- Short, medium, and long-term financial goals
- Variable spending patterns
- Regular financial review cycles

### AI-Assisted Budget Management
Claude assists with:
- **Data Processing**: Importing and categorizing transactions
- **Budget Creation**: Generating realistic budgets based on history and goals
- **Analysis**: Identifying spending patterns and anomalies
- **Reporting**: Creating comprehensive financial reports
- **Goal Tracking**: Monitoring progress toward savings and debt payoff goals
- **Forecasting**: Projecting future financial scenarios
- **Optimization**: Suggesting budget improvements

### Privacy and Security
- All financial data remains local
- No cloud synchronization of sensitive data
- Version control for audit trail
- Sensitive files should be added to `.gitignore`

## Key Workflows

### 1. Initial Setup
Run `/setup-budget-workspace` to configure:
- Household profile and currency
- Income sources and amounts
- Expense categories and budgets
- Savings goals and investment accounts
- Bill due dates and recurring expenses
- Budget preferences and rules

### 2. Transaction Management
- **Import**: Place bank/credit card exports in `transactions/import/`
- **Process**: Use `/process-transactions` to categorize and analyze
- **Review**: Check categorization and make corrections
- **Archive**: Processed data moves to `transactions/processed/`

### 3. Budget Creation
- **Monthly**: Run `/create-monthly-budget` for upcoming month
- **Annual**: Run `/create-annual-budget` for yearly planning
- **Custom**: Use `/custom-budget` for specific timeframes or purposes

### 4. Expense Tracking
- **Add Expenses**: Use `/add-expense` for manual entry
- **Categorize**: Ensure proper category assignment
- **Track**: Monitor against budget throughout the month
- **Alert**: Receive warnings when approaching limits

### 5. Financial Reporting
- **Monthly Review**: `/monthly-report` for comprehensive monthly analysis
- **Spending Analysis**: `/analyze-spending` for category breakdowns
- **Trend Analysis**: `/analyze-trends` for multi-month patterns
- **Net Worth**: `/calculate-net-worth` for asset/liability summary
- **Goal Progress**: `/review-goals` for savings and debt tracking

### 6. Goal Management
- **Set Goals**: Use `/set-financial-goal` to define new objectives
- **Track Progress**: Regular updates via `/update-goal-progress`
- **Adjust**: Modify goals as circumstances change
- **Celebrate**: Archive completed goals with `/archive-goal`

### 7. Financial Planning
- **Scenario Planning**: Use `/financial-scenario` to model what-if situations
- **Debt Payoff**: `/plan-debt-payoff` for strategic debt reduction
- **Savings Optimization**: `/optimize-savings` to maximize savings rate
- **Large Purchase**: `/plan-purchase` for major expenditure planning

## Available Agents

### budget-architect
Creates comprehensive monthly and annual budgets based on income, historical spending, and financial goals. Balances realistic allocations with aspirational targets.

### expense-analyst
Analyzes spending patterns, identifies anomalies, and provides insights into where money is going. Suggests optimization opportunities.

### goal-tracker
Monitors progress toward financial goals (emergency fund, debt payoff, savings targets, etc.) and suggests adjustments to stay on track.

### transaction-processor
Imports and categorizes transaction data from bank/credit card exports. Learns categorization patterns and improves over time.

### report-generator
Creates comprehensive financial reports with visualizations, trend analysis, and actionable insights.

### financial-advisor
Provides strategic financial guidance based on household context, goals, and current financial position. Offers scenario planning and optimization suggestions.

## Available Slash Commands

### Setup and Configuration
- `/setup-budget-workspace` - Initial workspace configuration wizard
- `/update-context` - Update household context information
- `/add-income-source` - Add new income stream
- `/add-expense-category` - Create custom expense category

### Transaction Management
- `/import-transactions` - Import and process transaction files
- `/add-expense` - Manually add a single expense
- `/categorize-transactions` - Review and categorize uncategorized items
- `/reconcile-accounts` - Match transactions to bank statements

### Budget Creation
- `/create-monthly-budget` - Generate budget for upcoming month
- `/create-annual-budget` - Generate annual budget
- `/adjust-budget` - Modify existing budget allocations
- `/copy-budget` - Copy previous budget as starting point

### Analysis and Reporting
- `/monthly-report` - Comprehensive monthly financial report
- `/spending-report` - Detailed spending analysis by category
- `/trend-analysis` - Multi-month trend analysis
- `/budget-vs-actual` - Compare budget to actual spending
- `/identify-savings` - Find opportunities to reduce spending

### Goal Management
- `/set-financial-goal` - Define new financial goal
- `/review-goals` - Check progress on all active goals
- `/update-goal` - Modify existing goal
- `/archive-goal` - Move completed goal to archive

### Financial Planning
- `/calculate-net-worth` - Current assets vs liabilities
- `/debt-payoff-plan` - Strategic debt reduction planning
- `/savings-plan` - Optimize savings rate and allocation
- `/emergency-fund-check` - Assess emergency fund adequacy
- `/plan-large-purchase` - Budget for major expenditure
- `/financial-scenario` - Model what-if scenarios

### Utilities
- `/export-data` - Export data in various formats (CSV, JSON)
- `/visualize-spending` - Generate spending charts
- `/bill-reminder` - Check upcoming bill due dates
- `/annual-review` - Comprehensive year-end financial review

## Data Management

### Import Formats
The workspace supports importing transaction data from:
- CSV exports from banks
- OFX/QFX files
- JSON exports from financial apps
- Manual entry via slash commands

### File Naming Conventions
- **Budgets**: `monthly-budget-YYYY-MM.md` or `annual-budget-YYYY.md`
- **Reports**: `monthly-report-YYYY-MM.md`, `quarterly-report-YYYY-QN.md`
- **Transactions**: `transactions-YYYY-MM-source.csv`
- **Goals**: `goal-name-YYYY-MM-DD.md`

### Version Control Strategy
- **Commit budgets** when created or significantly modified
- **Commit reports** for permanent record
- **Add to .gitignore**: Raw transaction files with account numbers
- **Regular commits**: At least monthly for audit trail

## Best Practices

### Regular Review Cycle
1. **Weekly**: Quick check on spending vs budget
2. **Monthly**: Full reconciliation, report generation, goal review
3. **Quarterly**: Trend analysis, goal adjustment, budget optimization
4. **Annually**: Comprehensive review, tax preparation, goal setting

### Data Entry Discipline
- Import transactions regularly (weekly minimum)
- Categorize promptly to maintain accuracy
- Review automated categorization for errors
- Note unusual expenses for context

### Goal Management
- Set SMART goals (Specific, Measurable, Achievable, Relevant, Time-bound)
- Track both savings goals and debt reduction
- Adjust goals as life circumstances change
- Celebrate milestones

### Budget Realism
- Base budgets on actual historical spending
- Include buffer for unexpected expenses (5-10%)
- Don't create aspirational budgets that are impossible to follow
- Adjust budget as you learn actual patterns

### Privacy Protection
- Never commit files containing full account numbers
- Use masked account identifiers (last 4 digits)
- Keep sensitive credentials in 1Password
- Review .gitignore before pushing to remote

## Integration Opportunities

### External Tools
- **Spreadsheet sync**: Export to Google Sheets/Excel for additional analysis
- **Visualization tools**: Export data for Tableau, Power BI, etc.
- **Tax software**: Export categorized expenses for tax preparation
- **Financial apps**: Import data from Mint, YNAB, Personal Capital, etc.

### Automation
- Use MCP servers for bank data access (if available)
- Set up scheduled transaction imports
- Automate report generation on monthly schedule
- Create alerts for budget threshold breaches

## Troubleshooting

### Common Issues
- **Categorization errors**: Review and correct, agent learns from corrections
- **Budget too tight**: Increase allocations based on actual spending
- **Missing transactions**: Check import file format and data completeness
- **Goal not tracking**: Ensure proper account linkage in context.md

### Getting Help
- Review agent descriptions for capabilities
- Check slash command documentation
- Examine template files for format guidance
- Ask Claude directly for clarification on any process

## Extension and Customization

### Adding Custom Categories
1. Update `context.md` with new category
2. Use `/add-expense-category` command
3. Categorize past transactions to new category if needed

### Creating Custom Reports
1. Define report structure in `reports/templates/`
2. Create slash command in `.claude/commands/`
3. Update this file with command documentation

### Modifying Budget Methods
- Edit budget templates in `budgets/templates/`
- Adjust allocation rules in `context.md`
- Update budget-architect agent if needed

## Success Metrics

A well-functioning budget workspace should help you:
- [ ] Know exactly where money is going each month
- [ ] Spend within defined budget categories 90%+ of the time
- [ ] Make measurable progress toward financial goals
- [ ] Identify and reduce unnecessary expenses
- [ ] Build and maintain adequate emergency fund
- [ ] Reduce debt systematically
- [ ] Plan for irregular and large expenses
- [ ] Generate taxes-ready expense reports
- [ ] Feel in control of household finances

## Notes

- This workspace assumes local-only operation for privacy
- All financial data should be treated as highly sensitive
- Regular backups recommended (use encrypted storage)
- Review and update context.md as circumstances change
- Budgets are living documents - adjust as needed
