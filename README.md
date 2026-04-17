# Claude Code Plugins Marketplace

![Claude Code](https://img.shields.io/badge/Claude_Code-Project-8A2BE2?style=for-the-badge&logo=anthropic)
[![Claude Code Repos Index](https://img.shields.io/badge/Claude_Code-Repos_Index-blue?style=for-the-badge)](https://github.com/danielrosehill/Claude-Code-Repos-Index)
[![GitHub Master Index](https://img.shields.io/badge/GitHub-Master_Index-green?style=for-the-badge&logo=github)](https://github.com/danielrosehill/Github-Master-Index)

A comprehensive marketplace of Claude Code plugins for developers, system administrators, content creators, and productivity enthusiasts. These plugins extend Claude Code with specialized slash commands and agents for various workflows.

📋 **[View Plugin Source Repositories](planning/sources.md)** - Complete list of all plugin repositories with links

## Available Plugins

### AI & Context

#### AI Tools

AI development, local AI, Ollama, MCP servers, Hugging Face, speech-to-text

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/ai-tools-plugin)

```
/plugin install ai-tools@danielrosehill
```

---

#### Context Toolkit

Context management and organization tools

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/context-toolkit-plugin)

```
/plugin install context-toolkit@danielrosehill
```

---

#### Claude User Memory

Persistent cross-session memory about the user, backed by Mem0. Two isolated contexts (personal and work) with three skills for recall, save, and end-of-session commit

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/Claude-User-Memory-plugin)

```
/plugin install claude-user-memory@danielrosehill
```

---

#### MCP Command Generator

Natural language MCP server installation assistant — generate valid `claude mcp add` commands from plain English, with a curated catalog of 30+ servers

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/mcp-command-generator-plugin)

```
/plugin install mcp-command-generator@danielrosehill
```

---

#### CLAUDE.md Chunker

Prune bloated CLAUDE.md files to their essentials and offload supplementary context into an agent-context/ folder

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/claudemd-chunker-plugin)

```
/plugin install claudemd-chunker@danielrosehill
```

---

#### Model Identifier

Injects a model self-identification instruction block into CLAUDE.md so Claude announces its model name and API identifier at the start of every conversation — a quick sanity check to confirm which model version you are actually running

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/model-identifier-plugin)

```
/plugin install model-identifier@danielrosehill
```

---

#### New Turn Hook

Evaluates whether the current conversation context is still useful or whether the user should start a fresh conversation to avoid context bloat and degraded performance

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/new-turn-hook-plugin)

```
/plugin install new-turn-hook@danielrosehill
```

---

#### Open-Router Model Research

Research, filter, compare, and evaluate AI models on OpenRouter — discover models by capability (tool use, vision, audio), get cost/context-aware recommendations, run head-to-head comparisons, and conduct deep research that goes beyond the OpenRouter catalog

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/Open-Router-Model-Research-Plugin)

```
/plugin install open-router-model-research@danielrosehill
```

### Git & GitHub

#### Git & GitHub

Git configuration, LFS, GitHub CLI, repository management

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/git-github-plugin)

```
/plugin install git-github@danielrosehill
```

---

#### New Repo From Template

Create a new GitHub repo from any template in Repo-Starters-And-Templates-Index

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/New-Repo-From-Template-Plugin)

```
/plugin install new-repo-from-template@danielrosehill
```

---

#### Claude Code Feedback

Self-healing helper for filing well-formed bug reports, feature requests, model-behavior reports, and documentation issues against anthropics/claude-code. Fetches the live GitHub issue-form templates on every run so submissions always match Anthropic's current required fields.

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/Claude-Code-Feedback-Plugin)

```
/plugin install claude-code-feedback@danielrosehill
```

### Repo Scaffolding & Retrofitting

#### Spec Starter

Spec-driven development workflow — transform free-form project descriptions into structured specifications, context files, and decision records

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/spec-starter-plugin)

```
/plugin install spec-starter@danielrosehill
```

---

#### Claude Janitor

Repository cleanup: remove clutter, organize structure, polish docs

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/Claude-Janitor)

```
/plugin install claude-janitor@danielrosehill
```

---

#### Claude Templatizer

Turn existing Claude Code workspace repos into a reusable GitHub template

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/Claude-Templatizer)

```
/plugin install claude-templatizer@danielrosehill
```

---

#### Make Agent Friendly

Prepare human-developed codebases for agentic development with structured refactoring

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/Make-Agent-Friendly)

```
/plugin install make-agent-friendly@danielrosehill
```

---

#### Repo Retrofitter

Bulk-retrofit repos with AI agent scaffolding (CLAUDE.md, commands, agents, MCP recs)

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/Claude-Repo-Retrofitter)

```
/plugin install repo-retrofitter@danielrosehill
```

---

#### Workspace Setup

Interactive assistant for discovering and cloning Claude Code workspace templates — describe your objectives, get recommendations, and clone matching workspaces in one command

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/workspace-setup-plugin)

```
/plugin install workspace-setup@danielrosehill
```

### QA & Agent Sessions

#### Session Transfer

Transfer a Claude Code session to a fresh instance — full context transfer via a structured HANDOVER.md, or quick-jump skills for spawning a sibling Konsole/Claude window at the current directory.

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/Claude-Session-Transfer)

```
/plugin install session-transfer@danielrosehill
```

---

#### QA Team

Multi-agent QA system for code review, cleanup, docs, API, performance, deployment

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/Claude-QA-Team)

```
/plugin install qa-team@danielrosehill
```

### Documentation & Writing

#### AI Attribution

Add a transparent human-AI attribution section to a project README, documenting which parts were human-authored and which were AI-assisted or AI-generated

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/ai-attribution-plugin)

```
/plugin install ai-attribution@danielrosehill
```

---

#### Fix Documentation

Automated technical documentation generation and code documentation workflows

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/Claude-Document-This)

```
/plugin install fix-documentation@danielrosehill
```

---

#### Tech Docs

README creation, markdown editing, changelog generation, badges

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/documentation-plugin)

```
/plugin install tech-docs@danielrosehill
```

---

#### Writing & Editing

Proofreading, formatting, style standardization, content enhancement

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/writing-editing-plugin)

```
/plugin install writing-editing@danielrosehill
```

### Media Editing

#### Audio Editing

Audio editing and processing tools

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/audio-editing-plugin)

```
/plugin install audio-editing@danielrosehill
```

---

#### Image Editing

Image editing and processing tools

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/image-editing-plugin)

```
/plugin install image-editing@danielrosehill
```

---

#### Video Editing

Video editing and processing tools

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/video-editing-plugin)

```
/plugin install video-editing@danielrosehill
```

### Linux Sysadmin

#### Bug Catcher

Rapid Linux system bug capture — pull fresh logs for GPU freezes, audio issues, crashes, USB faults, and more the moment they occur

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/bug-catcher-plugin)

```
/plugin install bug-catcher@danielrosehill
```

---

#### Filesystem Organisation

File system organization, folder structure optimization, file management automation

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/filesystem-org-plugin)

```
/plugin install filesystem-organisation@danielrosehill
```

---

#### Linux Desktop

KDE settings, display management, system health, hardware profiling

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/linux-desktop-plugin)

```
/plugin install linux-desktop-mgmt@danielrosehill
```

---

#### Linux Server

Server management and administration tools

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/linux-server-plugin)

```
/plugin install linux-server-mgmt@danielrosehill
```

---

#### Security Checkup

Security audits and checkups

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/security-checkup-plugin)

```
/plugin install security-checkup@danielrosehill
```

---

#### Docker Manager

Manage Docker containers, Compose stacks, volumes, networks, and multi-environment deployments

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/docker-manager-plugin)

```
/plugin install docker-manager@danielrosehill
```

---

#### Conda Manager

Manage, audit, and optimise Conda environments — list, validate, compare, backup, and clean up environments with AI assistance

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/conda-manager-plugin)

```
/plugin install conda-manager@danielrosehill
```

---

#### Bash Alias Manager

Add, edit, delete, prune, list, document, and back up `~/.bash_aliases` using a guided, convention-aware workflow

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/bash-alias-manager-plugin)

```
/plugin install bash-alias-manager@danielrosehill
```

---

#### Proxmox Manager

Manage Ubuntu VMs hosted on Proxmox — host inspection, VM lifecycle, Docker deployments, XFS storage, Cloudflare Tunnels, backups, and system health with a setup wizard

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/proxmox-manager-plugin)

```
/plugin install proxmox-manager@danielrosehill
```

---

#### Synology Manager

Manage a Synology NAS via SSH — guided first-run setup, persistent NAS context, and commands for shared folders, volumes, mounts, and storage monitoring

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/synology-manager-plugin)

```
/plugin install synology-manager@danielrosehill
```

---

#### Linux Crash Forensics

Installs crash diagnostic tooling (kdump, persistent journald, sysstat) and provides skills for investigating Linux crashes, kernel panics, and unexpected reboots — structured post-mortem workflow plus netconsole and pstore helpers

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/Linux-Crash-Forensics-Plugin)

```
/plugin install linux-crash-forensics@danielrosehill
```

### Privacy & Security

#### Redaction

Human-guided document redaction, identity obfuscation, alias management, and metadata scrubbing — for whistleblowing, source protection, anonymous publishing, and research anonymization

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/redaction-plugin)

```
/plugin install redaction@danielrosehill
```

---

### Network & Smart Home

#### Home Assistant Manager

Home Assistant management and automation

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/home-assistant-manager-plugin)

```
/plugin install home-assistant-manager@danielrosehill
```

---

#### LAN Manager

Local network management

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/lan-manager-plugin)

```
/plugin install lan-manager@danielrosehill
```

### Research & Learning

#### Learning

Code analysis, commit analysis, learning resources, tutorials

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/learning-plugin)

```
/plugin install learning@danielrosehill
```

---

#### Tech Research

Technology research and documentation tools

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/tech-research-plugin)

```
/plugin install tech-research@danielrosehill
```

#### Brainstorm Solutions

When you hit a wall, spin up a research workspace to brainstorm solutions — captures the blocker, seeds context, and kicks off deep research.

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/brainstorm-solutions-plugin)

```
/plugin install brainstorm-solutions@danielrosehill
```

---

#### GitHub Research

Research existing GitHub repositories before building something yourself — search, rank, and evaluate candidate tools via `gh` CLI with careful attention to stars, recency, and maintenance quality. Five skills for finding, comparing, and documenting tooling options.

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/github-research-plugin)

```
/plugin install github-research@danielrosehill
```

---

### Personal Productivity

#### Diary Planner

Personal diary and planning workflows

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/diary-planner-plugin)

```
/plugin install diary-planner@danielrosehill
```

---

#### Home Budget Helper

Personal budgeting and financial management

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/home-budget-helper-plugin)

```
/plugin install home-budget-helper@danielrosehill
```

---

#### Ideation

Brainstorming, design ideas, innovation, AI chat experiments

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/ideation-plugin)

```
/plugin install ideation@danielrosehill
```

### Marketing & Shopping

#### Israeli Tech Shopping

Comparison shop Israeli tech retailers (KSP, Ivory, Bug, TMS) via BrowserMCP

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/Israeli-Tech-Shopping-MCP)

```
/plugin install israeli-tech-shopping@danielrosehill
```

---

#### SEO

SEO optimization, audits, and reviews

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/seo-plugin)

```
/plugin install seo@danielrosehill
```

## Installation

### Add This Marketplace

First, add this marketplace to your Claude Code installation:

```bash
/plugin marketplace add https://github.com/danielrosehill/Claude-Code-Plugins
```

### Install Individual Plugins

After adding the marketplace, install any plugin:

```bash
/plugin install {plugin-name}@danielrosehill
```

**Examples:**
```bash
/plugin install ai-tools@danielrosehill
/plugin install git-github@danielrosehill
/plugin install writing-editing@danielrosehill
```

### Install Multiple Plugins

You can install multiple plugins by repeating the installation command for each one you need.

## Popular Plugin Combinations

### Full Stack Developer Setup
```bash
/plugin install git-github@danielrosehill
/plugin install tech-docs@danielrosehill
/plugin install fix-documentation@danielrosehill
```

### AI/ML Developer Setup
```bash
/plugin install ai-tools@danielrosehill
/plugin install git-github@danielrosehill
```

### System Administrator Setup
```bash
/plugin install linux-desktop-mgmt@danielrosehill
/plugin install linux-server-mgmt@danielrosehill
/plugin install security-checkup@danielrosehill
/plugin install lan-manager@danielrosehill
```

### Content Creator Setup
```bash
/plugin install writing-editing@danielrosehill
/plugin install tech-docs@danielrosehill
/plugin install audio-editing@danielrosehill
/plugin install video-editing@danielrosehill
/plugin install image-editing@danielrosehill
```

### Personal Productivity Setup
```bash
/plugin install filesystem-organisation@danielrosehill
/plugin install context-toolkit@danielrosehill
/plugin install diary-planner@danielrosehill
/plugin install home-budget-helper@danielrosehill
```

## Plugin Structure

Each plugin follows the standard Claude Code plugin structure:

```
CC-Plugin-{name}/
├── .claude-plugin/
│   └── plugin.json          # Plugin metadata
├── commands/                 # Slash commands
│   └── {category}/
│       └── command.md
├── agents/                   # Custom agents (if applicable)
├── skills/                   # Agent skills (if applicable)
└── README.md
```

## Usage

After installing a plugin, you can:

1. **View available commands**: Run `/help` to see all installed commands
2. **Use slash commands**: Type `/` followed by the command name
3. **Explore plugin features**: Check the plugin's repository README for detailed documentation


3. Submit a pull request with a clear description of your improvements

## License

All plugins are licensed under the MIT License. See individual plugin repositories for details.

## Author

**Daniel Rosehill**
- Website: [danielrosehill.com](https://danielrosehill.com)
- Email: public@danielrosehill.com
- GitHub: [@danielrosehill](https://github.com/danielrosehill)
 
