# Agent Network Map

Visual guide to the agent network architecture and routing logic.

## Network Architecture Overview

```
┌─────────────────────────────────────────────────────────────┐
│                        MAIN AGENT                            │
│                 (Entry Point & Router)                       │
│                                                              │
│  Responsibilities:                                           │
│  - Analyze request type                                      │
│  - Route to appropriate manager or specialist                │
│  - Provide context and specifications                        │
│  - Collect and present final results                         │
└──────────────┬──────────────────────────────────────────────┘
               │
               ├── Simple Questions → Direct response with WebSearch/WebFetch
               │
               ├── Focused Tasks → Direct to specialist agent
               │
               └── Full Evaluations → Route to Research Lead Manager
                                       │
┌──────────────────────────────────────┴─────────────────────────────┐
│                                                                     │
│                        MANAGER LAYER                                │
│                  (Orchestration & Coordination)                     │
│                                                                     │
├─────────────────┬──────────────┬──────────────┬────────────────────┤
│                 │              │              │                    │
│  Research Lead  │   Output     │  Context     │   Prompt          │
│                 │   Manager    │  Organiser   │   Organiser       │
└────────┬────────┴──────┬───────┴──────┬───────┴──────┬─────────────┘
         │               │              │              │
         │               │              │              │
┌────────┴──────────────────────────────────────────────────────────┐
│                                                                    │
│                    SPECIALlocal time AGENT LAYER                          │
│                 (Execution & Research Tasks)                       │
│                                                                    │
└────────────────────────────────────────────────────────────────────┘
```

## Detailed Manager Breakdown

### Research Lead Manager
**Primary coordinator for evaluation workflows**

```
Research Lead
    │
    ├─→ Input Processing
    │   ├─ prompt-to-spec (create structured specs)
    │   ├─ context-saver (save background info)
    │   └─ transcript-cleaner (clean voice transcripts)
    │
    ├─→ Option Discovery
    │   ├─ saas-finder (find SaaS solutions)
    │   └─ open-source-finder (find OSS alternatives)
    │
    ├─→ Research & Analysis
    │   ├─ evaluator (evaluate against spec)
    │   ├─ reputation-checker (assess credibility)
    │   ├─ support-check (verify support quality)
    │   ├─ durability-probe (hardware longevity)
    │   ├─ oem-investigator (manufacturer research)
    │   ├─ pn-checker (part number verification)
    │   ├─ rrp-retrieval (pricing research)
    │   └─ deep-spec-probe (detailed specification analysis)
    │
    ├─→ Marketplace & Sourcing
    │   ├─ us-sources-finder (US marketplaces)
    │   ├─ israel-sources-finder (your countryi vendors)
    │   ├─ amazon-uk (Amazon UK)
    │   ├─ amazon-to-israel (US to your country shipping)
    │   └─ aliexpress (AliExpress sourcing)
    │
    ├─→ Compatibility Assessment
    │   ├─ linux/hardware-check (Linux hardware compatibility)
    │   ├─ linux/software-check (Linux software compatibility)
    │   └─ mobile (mobile platform compatibility)
    │
    ├─→ Synthesis & Reporting
    │   ├─ comparisons (side-by-side analysis)
    │   ├─ ranker (rank options by fit)
    │   └─ author (generate comprehensive report)
    │
    └─→ Specialists
        └─ deployment-process (deployment workflow analysis)
```

### Output Manager
**Formats and delivers final results**

```
Output Manager
    │
    ├─→ Report Formatting
    │   ├─ Markdown to PDF conversion
    │   ├─ Structured report generation
    │   └─ Quality assurance
    │
    ├─→ MCP Integration
    │   ├─ Google Drive (cloud storage)
    │   ├─ Resend (email delivery)
    │   └─ Other MCP servers (extensible)
    │
    └─→ Delivery
        ├─ Save to /outputs/ directory
        ├─ Upload to cloud storage
        └─ Send via email
```

### Context Organiser
**Manages evaluation context and background information**

```
Context Organiser
    │
    ├─→ Context Management
    │   ├─ Organize /context/ directory
    │   ├─ Remove duplicates
    │   ├─ Spell checking
    │   └─ Resolve conflicts
    │
    └─→ Folder Structure
        ├─ User background
        ├─ Requirements history
        ├─ Evaluation iterations
        └─ Reference materials
```

### Prompt Organiser
**Manages prompts and evaluation templates**

```
Prompt Organiser
    │
    ├─→ Prompt Management
    │   ├─ Organize incoming requests
    │   ├─ Categorize by type
    │   ├─ Archive completed evaluations
    │   └─ Version control iterations
    │
    └─→ Template Library
        ├─ SaaS evaluation templates
        ├─ OSS evaluation templates
        ├─ Hardware evaluation templates
        └─ Comparison templates
```

## Agent Categories & Specializations

### Input Processing Agents
| Agent | Purpose | When to Use |
|-------|---------|-------------|
| prompt-to-spec | Convert prompts to structured specs | Start of every evaluation |
| context-saver | Save background information | When user provides extensive context |
| transcript-cleaner | Clean voice transcripts | When user provides voice input |

### Option Discovery Agents
| Agent | Purpose | Focus Area |
|-------|---------|------------|
| saas-finder | Find SaaS solutions | Cloud-based software products |
| open-source-finder | Find OSS alternatives | Open-source projects |

### Research & Analysis Agents
| Agent | Purpose | Best For |
|-------|---------|----------|
| evaluator | Evaluate options against spec | All evaluations |
| reputation-checker | Assess vendor/project credibility | Trust and reliability assessment |
| support-check | Verify support quality | Mission-critical applications |
| durability-probe | Assess hardware longevity | Hardware purchases |
| oem-investigator | Research manufacturers | Hardware supply chain |
| pn-checker | Verify part numbers | Hardware specifications |
| rrp-retrieval | Find retail prices | Pricing baselines |
| deep-spec-probe | Detailed specification analysis | Complex technical requirements |

### Marketplace Agents (Hardware Focus)
| Agent | Purpose | Geographic Focus |
|-------|---------|-----------------|
| us-sources-finder | US marketplaces | United States |
| israel-sources-finder | your countryi vendors | your country |
| amazon-uk | Amazon UK | United Kingdom |
| amazon-to-israel | US to your country shipping | International shipping |
| aliexpress | AliExpress | International |

### Compatibility Agents
| Agent | Purpose | Platform |
|-------|---------|----------|
| linux/hardware-check | Linux hardware compatibility | Linux systems |
| linux/software-check | Linux software compatibility | Linux applications |
| mobile | Mobile compatibility | iOS/Android |

### Synthesis Agents
| Agent | Purpose | Stage |
|-------|---------|-------|
| comparisons | Side-by-side comparison | Mid-evaluation |
| ranker | Rank options by fit | Late-evaluation |
| author | Generate comprehensive report | Final stage |

### Specialist Agents
| Agent | Purpose | When Needed |
|-------|---------|-------------|
| deployment-process | Deployment workflow analysis | Complex deployments |

## Standard Workflows

### Software Evaluation (Full Flow)

```
User Request
    ↓
Main Agent (route to Research Lead)
    ↓
prompt-to-spec → Structured Specification
    ↓
Research Lead delegates to:
    ↓
┌───────────────────────┴────────────────────────┐
│                                                 │
saas-finder                             open-source-finder
    ↓                                           ↓
Options List                              Options List
    └─────────────────┬─────────────────────────┘
                      ↓
              (For each option)
                      ↓
    ┌─────────────────┴──────────────────┐
    │                                     │
evaluator                         reputation-checker
    │                                     │
    └──────────────┬──────────────────────┘
                   ↓
           support-check (optional)
                   ↓
     compatibility agents (if needed)
                   ↓
            comparisons
                   ↓
              ranker
                   ↓
              author
                   ↓
         Output Manager
                   ↓
         /outputs/report.md
```

### Hardware Evaluation (Full Flow)

```
User Request
    ↓
Main Agent (route to Research Lead)
    ↓
prompt-to-spec → Structured Specification
    ↓
Research Lead delegates to:
    ↓
┌────────────┬───────────┬─────────────┐
│            │           │             │
oem-         pn-         deep-spec-
investigator checker     probe
│            │           │
└────────────┴─────┬─────┴─────────────┘
                   ↓
      Marketplace Agents (parallel)
      ├─ us-sources-finder
      ├─ israel-sources-finder
      ├─ amazon-uk
      └─ aliexpress
                   ↓
           rrp-retrieval
                   ↓
      ┌────────────┴──────────────┐
      │                           │
durability-probe        reputation-checker
      └────────────┬──────────────┘
                   ↓
    Compatibility (if applicable)
    └─ linux/hardware-check
                   ↓
            comparisons
                   ↓
              ranker
                   ↓
              author
                   ↓
         Output Manager
                   ↓
         /outputs/report.md
```

### Quick Comparison (Streamlined)

```
User Request (with known options)
    ↓
Main Agent (direct route)
    ↓
comparisons agent
    ↓
┌───────────────────────────────────┐
│ Option A │ Option B │ Option C    │
│ analysis │ analysis │ analysis    │
└──────┬────┴─────┬────┴──────┬─────┘
       └──────────┴───────────┘
                  ↓
              ranker
                  ↓
              author
                  ↓
         /outputs/report.md
```

## Routing Decision Tree

```
Is this a simple question?
├─ YES → Main Agent answers directly (WebSearch/WebFetch)
└─ NO ↓

Is this a focused single-task?
├─ YES → Route to specific specialist directly
│        Examples:
│        - "Find Linux compatible options" → linux/hardware-check
│        - "Check reputation of [product]" → reputation-checker
│        - "Find open source alternatives" → open-source-finder
│
└─ NO → Full evaluation needed ↓

Route to Research Lead Manager
    ↓
Is this software or hardware?
├─ Software → Software Evaluation Workflow
├─ Hardware → Hardware Evaluation Workflow
└─ Mixed → Full-Stack Evaluation Workflow
    ↓
Research Lead orchestrates:
1. Spec creation (prompt-to-spec)
2. Option discovery (finders)
3. Deep research (evaluators, checkers)
4. Marketplace research (if hardware)
5. Synthesis (comparisons, ranker)
6. Report generation (author)
    ↓
Output Manager delivers final report
```

## Communication Flows

### Main Agent ↔ Research Lead

```
Main Agent sends:
├─ User's original request
├─ Evaluation type (software/hardware/full-stack)
├─ Constraints (budget, platform, geography)
└─ Deliverable expectations

Research Lead returns:
├─ Complete evaluation report
├─ Top recommendations with justification
├─ Key findings summary
└─ Any concerns or caveats
```

### Research Lead ↔ Specialists

```
Research Lead sends:
├─ Full specification from prompt-to-spec
├─ Specific task assignment
├─ Expected deliverable format
└─ Prior research findings (if sequential)

Specialist returns:
├─ Completed research for their domain
├─ Recommendations for additional research
└─ Handoff suggestions (if applicable)
```

### Author ↔ Output Manager

```
Author sends:
├─ Complete markdown report
├─ Metadata (evaluation type, date, etc.)
└─ Asset references (if any)

Output Manager returns:
├─ Formatted PDF (if requested)
├─ Upload confirmation (if cloud storage used)
└─ Delivery confirmation (if email sent)
```

## Extending the Network

### Adding New Agents

1. **Identify the category**: Input / Manager / Specialist
2. **Create agent file**: `.claude/agents/[category]/[name].md`
3. **Define scope clearly**: What this agent does and doesn't do
4. **Specify inputs/outputs**: What it receives and what it returns
5. **Update manager routing**: Add to Research Lead's delegation logic
6. **Update CLAUDE.md**: Add to main routing documentation
7. **Test workflow**: Verify integration with existing agents

### Example: Adding a "Price Comparison Agent"

```
1. Category: team-members/research/
2. File: price-comparison.md
3. Scope: Compare prices across vendors for same product
4. Inputs: Product identifiers, vendor list
5. Outputs: Price comparison table with recommendations
6. Update: Research Lead's marketplace section
7. Update: CLAUDE.md marketplace research logic
```

## Performance Optimization

### Parallel Execution Opportunities

Agents that can run in parallel:
- All marketplace finders (us-sources, israel-sources, amazon-uk, etc.)
- evaluator for different options
- reputation-checker + support-check + durability-probe
- Compatibility checkers (linux/hardware + linux/software + mobile)

### Sequential Dependencies

Agents that must run in order:
1. prompt-to-spec → (everything else)
2. Option finders → evaluators
3. All research → ranker
4. ranker → author
5. author → Output Manager

## Troubleshooting Routing Issues

| Problem | Check | Solution |
|---------|-------|----------|
| Agent not invoked | CLAUDE.md routing logic | Update decision tree |
| Wrong agent called | Request type classification | Clarify evaluation type first |
| Duplicate work | Agent handoff protocol | Review communication flows |
| Missing information | Input specifications | Ensure full spec provided |
| Inconsistent results | Agent coordination | Verify Research Lead workflow |

## Network Metrics

Current network composition:
- **Total Agents**: 30+
- **Manager Agents**: 5
- **Input Agents**: 3
- **Discovery Agents**: 2
- **Research Agents**: 8
- **Marketplace Agents**: 5
- **Compatibility Agents**: 3
- **Synthesis Agents**: 3
- **Specialist Agents**: 1+

Typical evaluation workflow:
- **Agents involved**: 8-15 (depending on complexity)
- **Parallel execution stages**: 2-3
- **Sequential stages**: 4-5
- **Total coordination points**: 3-4 (via Research Lead)
