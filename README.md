# Claude Code Plugins Marketplace

![Claude Code](https://img.shields.io/badge/Claude_Code-Project-8A2BE2?style=for-the-badge&logo=anthropic)
[![Claude Code Projects Index](https://img.shields.io/badge/Claude_Code-Projects_Index-orange?style=for-the-badge)](https://claude.danielrosehill.com/)
[![Claude Code Repos Index](https://img.shields.io/badge/Claude_Code-Repos_Index-blue?style=for-the-badge)](https://github.com/danielrosehill/Claude-Code-Repos-Index)
[![GitHub Master Index](https://img.shields.io/badge/GitHub-Master_Index-green?style=for-the-badge&logo=github)](https://github.com/danielrosehill/Github-Master-Index)

🌐 **Browse the full Claude Code Projects Index at [claude.danielrosehill.com](https://claude.danielrosehill.com/)** — searchable catalog of all plugins, skills, and Claude Code projects.

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

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/Claude-Open-Router-Model-Research-Plugin)

```
/plugin install open-router-model-research@danielrosehill
```

---

#### User-Claude-MD

Manage the user-level `~/.claude/CLAUDE.md` and its chunked `~/.claude/context/` directory — audit, chunk, list, and edit global Claude Code user context for token efficiency

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/User-Claude-MD-Plugin)

```
/plugin install user-claude-md@danielrosehill
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

---

#### Github Explorer

Semantic GitHub repo discovery for reusable open-source components — keyword search, ranked shortlists, quick overviews, deep evaluations, and stack-aware project recommendations. Claude parses `gh api search/repositories` results.

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/Claude-Github-Explorer-Plugin)

```
/plugin install github-explorer@danielrosehill
```

### Repo Scaffolding & Retrofitting

#### Development Tasks

Task definitions for common development workflows — bug capture, remediation, and other agent-driven dev tasks

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/development-tasks-plugin)

```
/plugin install development-tasks@danielrosehill
```

---

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

---

#### Task Queuer

Repo-based task queueing system with categorisation and prioritisation — scaffolds a `planning/` folder, logs tasks, buckets them by category, and hands prioritised work off to the repo's orchestration agent.

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/Claude-Task-Queuer-Plugin)

```
/plugin install task-queuer@danielrosehill
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

#### Programmatic Doc Generation

Build programmatic document generation pipelines — Typst templates for local batch rendering, plus integration scaffolding for n8n and cloud rendering services (Carbone, PDFMonkey, APITemplate, DocRaptor, Docmosis, Adobe Doc Gen)

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/Claude-Programmatic-Doc-Generation-Plugin)

```
/plugin install programmatic-doc-generation@danielrosehill
```

---

#### Repo To Docs

Convert GitHub repos into polished documents (PDF, blog post, white paper, internal doc) via Typst, with optional AI banner generation and multi-target publishing

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/Repo-To-Docs-plugin)

```
/plugin install repo-to-docs@danielrosehill
```

---

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

---

#### HTML Email Designer

Design and build responsive HTML email templates using Foundation for Emails, Maizzle, or MJML. Framework-agnostic authoring with email-client compatibility baked in.

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/Claude-HTML-Email-Designer-Plugin)

```
/plugin install html-email-designer@danielrosehill
```

---

#### Resume Typesetter

Manage a resume as JSON Resume schema data and render it with custom Typst templates. Onboard, iterate, fork variants, and version.

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/Claude-Resume-Typesetter-Plugin)

```
/plugin install resume-typesetter@danielrosehill
```

---

#### Digital Printing

Prepare PDFs for digital printing — page resize, grayscale, font embedding, transparency flattening, image downsampling, color profile normalization, watermarks and footer burn-ins, cover pages, bleed-safety verification, and a job-folder/print-order workflow with email/Drive sharing. Includes an orchestrator agent that profiles a PDF and chains the right fixes.

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/Claude-Digital-Printing-Plugin)

```
/plugin install digital-printing@danielrosehill
```

### Media Editing

#### Audio Editing

Audio editing and processing tools

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/audio-editing-plugin)

```
/plugin install audio-editing@danielrosehill
```

---

#### Claude Transcription

End-to-end audio transcription pipeline: preprocess (denoise, VAD, format normalization, speaker sampling), transcribe (Gemini, AssemblyAI, local Whisper), post-process (clean fillers, structure, blog/summary/notes), combine versions, and export.

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/Claude-Transcription-plugin)

```
/plugin install claude-transcription@danielrosehill
```

---

#### Image Editing

Image editing and processing tools

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/image-editing-plugin)

```
/plugin install image-editing@danielrosehill
```

---

#### Image Annotation

Capture screenshots and apply annotations (arrows, text callouts, boxes, highlights, blur/redaction) on Linux via ImageMagick, Pillow, spectacle, grim+slurp, and flameshot.

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/Claude-Image-Annotation-Plugin)

```
/plugin install image-annotation@danielrosehill
```

---

#### Video Editing

Video editing and processing tools

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/video-editing-plugin)

```
/plugin install video-editing@danielrosehill
```

---

#### AI Video Producer

Drive an AI-generated video project end-to-end: creative brief, model selection, character sheets, script, storyboard, generation pipelines (text-to-image-to-video, voice-to-lip-sync, text-to-video, upscale), clip assembly, and final export. Ships fal.ai/Replicate/MiniMax MCP servers and fal-js + WaveSpeed Python SDK runners.

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/Claude-AI-Video-Producer-Plugin)

```
/plugin install ai-video-producer@danielrosehill
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

#### Linux Packaging

Linux packaging and release workflows — Debian/.deb builds, npm publishing, GitHub release creation, agent deploy scripts, and local debugging

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/Linux-Packaging-Plugin)

```
/plugin install linux-packaging@danielrosehill
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

#### Proxmox Mgmt

Manage a Proxmox VE host via SSH and the Proxmox API — guided first-run onboarding, VM/CT lifecycle, storage and ZFS inspection, log review, and update workflows. Per-host config is stored outside the plugin so the same install works across multiple Proxmox environments.

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/Proxmox-Mgmt-Plugin)

```
/plugin install proxmox-mgmt@danielrosehill
```

---

#### Synology Mgmt

Manage a Synology NAS via SSH — guided first-run onboarding, share/volume inspection, storage health, and file operations. Per-host config is stored outside the plugin so the same install works across multiple NAS environments.

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/Synology-Mgmt-Plugin)

```
/plugin install synology-mgmt@danielrosehill
```

---

#### OPNsense Mgmt

Manage an OPNsense router/firewall via SSH and the OPNsense API — guided first-run onboarding, firewall rule inspection, network debugging, and host/log diagnostics. Per-host config is stored outside the plugin so the same install works across multiple environments.

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/Opnsense-Mgmt-Plugin)

```
/plugin install opnsense-mgmt@danielrosehill
```

---

#### Linux Debugging

Linux desktop debugging toolkit — targeted journal/boot/log inspection skills plus proactive logging instrumentation (persistent journald, kdump, sysstat, OOM protection) so AI agents can analyze hard crashes, freezes, and runtime issues. Targets Ubuntu + Wayland; forkable for other distros.

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/Linux-Debugging-Plugin)

```
/plugin install linux-debugging@danielrosehill
```

---

#### Backup Planner

Plan, document, and implement a backup and data-protection strategy for the current project — architecture discovery, data inventory, infra memory, option evaluation, strategy doc, script generation, and restore drills

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/Claude-Backup-Planner-Plugin)

```
/plugin install backup-planner@danielrosehill
```

---

#### KDE Plasmoid Dev

Skill for developing KDE Plasma plasmoids (QML/Plasma 6 desktop and panel widgets) — scaffold, debug, package, install, and migrate Plasma 5 → 6

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/Claude-KDE-Plasmoid-Dev-Plugin)

```
/plugin install kde-plasmoid-dev@danielrosehill
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

#### ADB Ops

ADB (Android Debug Bridge) operations — onboard a phone, map folders to local paths, import media on demand, capture screenshots, and manage bloatware with an auditable log

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/Claude-ADB-Ops-Plugin)

```
/plugin install adb-ops@danielrosehill
```

#### Home Assistant Mgmt

Manage a Home Assistant instance via SSH and the HA REST API — guided first-run onboarding, automation/entity authoring, service calls, TTS testing, and log review. Per-host config is stored outside the plugin so the same install works across multiple Home Assistant environments.

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/Home-Assistant-Mgmt-Plugin)

```
/plugin install home-assistant-mgmt@danielrosehill
```

---

#### LAN Manager

Local network management

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/lan-manager-plugin)

```
/plugin install lan-manager@danielrosehill
```

---

#### MQTT Observability

Monitor and publish MQTT broker payloads — all topics, a specific topic/space, or send a message. Credentials are collected once on first setup.

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/mqtt-observability-plugin)

```
/plugin install mqtt-observability@danielrosehill
```

---

#### Media Assistant Ops

Interface with a Music Assistant server via its local API — onboard a deployment, control players, snapshot speaker rosters, save/update per-player DSP presets, and apply a curated podcast EQ preset.

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/Claude-Media-Assistant-Ops-Plugin)

```
/plugin install media-assistant-ops@danielrosehill
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

#### Social Feedback

Check what people are actually saying about a topic, product, or provider by searching curated social-discourse sources (Reddit, Hacker News, Stack Exchange, Trustpilot, YouTube, Lobsters).

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/Social-Feedback-Plugin)

```
/plugin install social-feedback@danielrosehill
```

---

#### GitHub Research

Research existing GitHub repositories before building something yourself — search, rank, and evaluate candidate tools via `gh` CLI with careful attention to stars, recency, and maintenance quality. Five skills for finding, comparing, and documenting tooling options.

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/github-research-plugin)

```
/plugin install github-research@danielrosehill
```

---

#### Test Project Ideator

Generates specifications for practice/dummy development projects tailored to the user's learning objectives, technology stack, and proficiency level in each language or tool.

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/Claude-Test-Project-Ideator-Plugin)

```
/plugin install test-project-ideator@danielrosehill
```

---

#### Teach This Repo

Uses a code repository in reverse for developer education: assesses the learner's profile, builds a teaching plan grounded in the repo, writes lessons with real code excerpts, and supports an interactive Q&A mode.

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/Claude-Teach-This-Repo-Plugin)

```
/plugin install teach-this-repo@danielrosehill
```

#### Geopol Sim

Thin orchestrator for geopolitical forecasting simulations. Scaffolds, runs, bundles, and grades simulations from multiple decoupled upstream templates (lean LLM-council and snowglobe-style actor-simulation variants).

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/Geopol-Sim-Plugin)

```
/plugin install geopol-sim@danielrosehill
```

---

#### Jewish Texts Reference

Look up Jewish texts and references via the Sefaria MCP server — Tanakh, Talmud, Mishnah, Halakha, Kabbalah, commentary, dictionaries, and topics. Four skills: `find-text`, `find-reference`, `strip-nikkud` (offline regex + Dicta API), `add-nikkud` (Dicta nakdan + offline unikud). Sefaria SSE MCP endpoint bundled in.

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/Jewish-Texts-Reference-Plugin)

```
/plugin install jewish-texts-reference@danielrosehill
```

---

#### Jewish Utilities

Misc Jewish utility skills: shabbat candle-lighting/havdalah, zmanim (GR"A + MG"A), parsha-of-the-week, Hebrew/Gregorian date conversion (sunset-aware), upcoming holidays (IL/diaspora), and daf yomi. Wraps zmanim-mcp-server and hebcal MCP. Onboarding captures location for halachic-time skills. Companion to jewish-texts-reference.

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/Claude-Jewish-Utilities-Plugin)

```
/plugin install jewish-utilities@danielrosehill
```

---

### Personal Productivity

#### Greeninvoice Ops

Operational commands and a skill for working with the Green Invoice MCP server — invoices, clients, expenses, and monthly summaries.

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/Claude-Green-Invoice-Ops-Plugin)

```
/plugin install greeninvoice-ops@danielrosehill
```

---

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

---

#### Decision Evaluation Framework

Apply 20+ classical decision-making frameworks (cost-benefit, pre-mortem, MCDA, decision tree, reversibility, regret minimization, OODA, Eisenhower, SWOT, second-order, opportunity cost, 10/10/10, inversion, base rates, Kepner-Tregoe, six hats, Cynefin, red-team, stakeholder map, time-horizon) to any major decision — parallel multi-lens analysis, synthesis, and Typst PDF export.

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/Claude-Decision-Evaluation-Framework-Plugin)

```
/plugin install decision-evaluation-framework@danielrosehill
```

---

#### Israel Shopping

Israeli shopping workflows — tech retailers, Zap, Hebrew term resolution, ILS conversion, RRP checks, grocery/pharmacy search

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/Claude-Israel-Shopping-Plugin)

```
/plugin install israel-shopping@danielrosehill
```

#### Daniel-Rosehill

Personal-use skills and slash commands for Daniel Rosehill — released publicly for convenience. Not intended as a general-purpose plugin.

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/Daniel-Rosehill-Claude-Plugin)

```
/plugin install Daniel-Rosehill@danielrosehill
```

---

#### Schedule-Manager

Personal schedule, task, and meeting management. Routes mixed brain-dumps into Google Calendar (events) and Todoist (tasks); manages agenda/minutes Google Docs linked to events; produces wrapup logs and morning briefs. 22 skills covering Calendar/Todoist CRUD, firehose routing, task↔event migration, priority/date hygiene, and agenda/minutes lifecycle.

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/Claude-Schedule-Manager-Plugin)

```
/plugin install schedule-manager@danielrosehill
```

---

### Regional

#### Israel Agent Skills

Claude Code agent skills for Israel and Hebrew-specific workflows: Hebrew translation, Hebrew typography, emergency readiness utilities, and regional lookups. (Shopping skills live in the separate `israeli-tech-shopping` plugin.)

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/Claude-Israel-Agent-Skills-Plugin)

```
/plugin install israel-agent-skills@danielrosehill
```

---

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

---

### Data & Datasets

#### Claude Data Wrangler

Data cleaning, enrichment, restructuring, and packaging skills for tabular and JSON datasets (visualisation out of scope). 27 skills — ISO standardisation (3166/4217/639/8601/LEI/ISIN), PII detection and synthetic overlay, data dictionaries with Typst PDF export, SQL / graph / vector / Hugging Face / GeoJSON / API loaders, date and Unicode hygiene, and an upstream → divergent-downstream incremental sync. Every destructive edit is gated by a backup-first policy.

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/Claude-Data-Wrangler-plugin)

```
/plugin install Claude-Data-Wrangler@danielrosehill
```

#### Data Visualisation And Publishing

Create static and interactive data visualisations for reports, repos, and data storytelling — prioritising a curated inventory of open-source tools (Matplotlib, Bokeh, Chart.js, ECharts, D3, visx, Vizzu, VChart, Plotly Dash, Lightweight Charts, fl_chart, Constellation, DataWarrior, Iris, react-globe.gl, and more).

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/Claude-Data-Visualisation-And-Publishing-Plugin)

```
/plugin install data-visualisation-and-publishing@danielrosehill
```

#### Claude Data Analyst

First-pass data analysis toolkit for a dataset in a folder — six skills covering correlation analysis, PII flagging, anomaly detection, hypothesis testing, data dictionary generation, and trend analysis. Leans on lightweight CLI tooling (duckdb, csvkit, miller, uv-run pandas/scipy/statsmodels) so reports are reproducible without a persistent venv.

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/Claude-Data-Analyst-plugin)

```
/plugin install claude-data-analyst@danielrosehill
```

#### Claude Data Annotation

End-to-end data annotation toolkit. Three orchestrator skills (`shape-dataset`, `annotate-with-claude`, `scaffold-annotation-env`, `hf-setup`) backed by six subagents (`data-profiler`, `pii-scanner`, `column-curator`, `schema-designer`, `format-normalizer`, `review-annotations`). Covers ingest → profile → PII/column/format prep → schema design → annotation (Claude in-session for small jobs, Gemini batch inference for larger ones) → review → publish to Hugging Face.

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/Claude-Data-Annotation-Plugin)

```
/plugin install data-annotation@danielrosehill
```

#### Text Corpus Analysis

Skills for large-corpus text and topic analysis — 14 skills covering topic modeling (BERTopic with temporal evolution), NER, categorization into fixed taxonomies, bottom-up category derivation, multi-level taxonomy design, word frequency, synonym clustering for voice-note/STT corpora, parametric stats, and metadata↔content correlation. Three execution lanes (classical NLP, local LLM via Ollama, cloud LLM via OpenRouter) with explicit cost-awareness for runs over thousands of documents.

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/Claude-Text-Corpus-Analysis-Plugin)

```
/plugin install text-corpus-analysis@danielrosehill
```

### Data Discovery

#### Browser Data Capture

Streamline programmatic data ingestion against sites and apps that don't ship a documented API. Three independent capture paths (HAR via DevTools, mitmproxy for any client, optional live tab via claude-in-chrome) feed a normalized endpoint inventory; downstream skills generate a draft OpenAPI 3.1 spec, build versioned per-domain map documents, provision a private GitHub repo for version-controlled storage, and draft good-faith vulnerability disclosure emails if a finding turns up incidentally. Secret redaction is enforced by default. White-hat use only.

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/Claude-Browser-Data-Capture-Plugin)

```
/plugin install browser-data-capture@danielrosehill
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
 
