- 2026-04-09: Added new-turn-hook plugin (danielrosehill/new-turn-hook-plugin) — evaluates whether the current conversation context is still useful or whether the user should start a fresh conversation to avoid context bloat and degraded performance.
- 2026-04-09: Added model-identifier plugin (danielrosehill/model-identifier-plugin) — injects a model self-identification instruction block into CLAUDE.md so Claude announces its model name and API identifier at the start of every conversation.
- 2026-04-09: Added workspace-setup plugin (danielrosehill/workspace-setup-plugin) — interactive assistant for discovering and cloning Claude Code workspace templates, with curated catalog and objective-based recommendations.
- 2026-04-09: Added redaction plugin (danielrosehill/redaction-plugin) — human-guided document redaction, identity obfuscation, alias management, and metadata scrubbing for source protection and anonymous publishing workflows.
- 2026-04-09: Added spec-starter plugin (danielrosehill/spec-starter-plugin) — spec-driven development workflow that transforms free-form project descriptions into structured specifications, context files, and decision records.
- 2026-04-09: Added claudemd-chunker plugin (danielrosehill/claudemd-chunker-plugin) — slash command that prunes bloated CLAUDE.md files to their essentials and offloads supplementary context into an agent-context/ folder.
- 2026-04-09: Added mcp-command-generator plugin (danielrosehill/mcp-command-generator-plugin) — natural language MCP server installation assistant for Claude Code, with curated server catalog and syntax reference.
- 2026-04-09: Added conda-manager plugin (danielrosehill/conda-manager-plugin) — Claude Code plugin for managing, auditing, and optimising Conda environments.
- 2026-04-09: Added bug-catcher plugin (danielrosehill/bug-catcher-plugin) — slash commands for rapid Linux system bug capture and diagnosis.
- 2026-04-09: Added docker-manager plugin (danielrosehill/docker-manager-plugin) — slash commands and subagents for managing Docker containers, Compose stacks, volumes, networks, and multi-environment deployments.
- 2026-04-09: Added bash-alias-manager plugin (danielrosehill/bash-alias-manager-plugin) — Claude Code plugin for managing bash aliases, including add, edit, delete, prune, list, document, and back up ~/.bash_aliases with a guided workflow.
- 2026-04-09: Added proxmox-manager plugin (danielrosehill/proxmox-manager-plugin) — Claude Code plugin for managing Ubuntu VMs hosted on Proxmox, covering host inspection, VM lifecycle, Docker deployments, XFS storage, Cloudflare Tunnels, backups, and system health with a setup wizard.
- 2026-04-09: Added synology-manager plugin (danielrosehill/synology-manager-plugin) — Claude Code plugin for managing a Synology NAS via SSH, with guided first-run setup, persistent NAS context, and commands for shared folders, volumes, mounts, and storage monitoring.
- 2026-04-09: Added ai-attribution plugin (danielrosehill/ai-attribution-plugin) — adds a transparent human-AI attribution section to a project README, documenting which parts were human-authored and which were AI-assisted or AI-generated.

- **2026-04-10** — Added `brainstorm-solutions` plugin: spin up research workspaces when hitting blockers

- **2026-04-16** — Added `open-router-model-research` plugin: 8 skills for researching, filtering, comparing, and evaluating AI models on OpenRouter — includes capability filters (tool use, vision, audio), interactive recommendations, head-to-head comparison, and deep evaluation that goes beyond the OR catalog (model card, paper, license).

- **2026-04-16** — Added `github-research` plugin: 5 skills for exploring existing GitHub repositories before building — general repo search, AI-tool-focused search with strict recency filtering, deep candidate evaluation, finding alternatives to a known project, and documenting findings into a date-stamped `planning/github-research/` folder.

- **2026-04-16** — Briefly added then removed `typst-document-generator` — moved to the new private marketplace at `danielrosehill/Claude-Code-Plugins-Private` because the plugin encodes Daniel-specific document conventions and DSR Holdings branding that isn't useful public surface area.

- **2026-04-16** — Added `claude-user-memory` plugin: persistent cross-session memory about the user, backed by Mem0. Ships two isolated MCP instances (personal and work) with three skills — `recall-user-memory`, `remember-user-fact`, `commit-learnings` — plus a shared deduction rule for routing facts to the right context.

- **2026-04-16** — Added `claude-code-feedback` plugin: self-healing helper for filing bugs, feature requests, model-behavior reports, and documentation issues against anthropics/claude-code. Five skills (`bug`, `feature-request`, `model-behavior`, `docs`, `refresh-templates`); fetches live issue-form YAML from upstream on every run, caches fallback copies, and detects newly-added issue-template types. First real plugin in the space — one abandoned 0-star prior attempt, no official Anthropic equivalent.
