# Marketplace vs Master Index — Delta Review

**Date:** 2026-04-09
**Sources:** `danielrosehill/Claude-Code-Projects-Index` (master index, ~128 repos) vs `.claude-plugin/marketplace.json` (28 plugins).

## Key architectural consideration: Spaces vs Plugins

A core rationale behind Daniel's Claude **"space"** design is that **a space is a folder** — it provides persistent local storage for the workflow (notes, outputs, research artefacts, journal entries, tracked data, generated reports, etc.). Plugins, by contrast, are portable code — they ship slashes/agents/skills but have **no inherent storage location**.

This means not every space maps cleanly onto a plugin. When evaluating candidates, classify them:

1. **Pure tooling** (no storage needed) → straightforward plugin refactor. E.g. bug catcher, docker manager, MCP command generator, redaction tool.
2. **Storage-dependent workflows** (the space *is* the data) → need one of:
   - **Plugin + user-linked space**: plugin ships the agents/slashes; user points them at a local folder they own (configurable path, or a convention like `~/claude-spaces/<name>/`). Plugin reads/writes there.
   - **Plugin bootstraps a space**: a `/init` slash that scaffolds the expected folder structure on first run.
   - **Stay as a space template**: if the storage layout and personal content are inseparable from the workflow, leave it as a forkable workspace template in the index and *don't* force it into plugin form.
3. **Hybrid**: ship the reusable logic as a plugin, keep the storage-heavy parts as a companion space template linked from the plugin README.

**Rule of thumb for refactoring:** if the answer to *"where does the output go?"* is "a folder the user owns," it's a storage-dependent workflow and needs one of the patterns above. If the answer is "stdout / a PR / a generated file in CWD," it's pure tooling and refactors cleanly.

## Marketplace already covers (28)

ai-tools, context-toolkit, git-github, Claude-Janitor, home-budget-helper, audio-editing, image-editing, video-editing, diary-planner, documentation, Claude-Document-This, ideation, learning, seo, tech-research, home-assistant-manager, filesystem-org, lan-manager, linux-desktop, linux-server, security-checkup, Claude-Repo-Retrofitter, writing-editing, Make-Agent-Friendly, Claude-QA-Team, Israeli-Tech-Shopping-MCP, Claude-Templatizer, Claude-Handover.

## Strong candidates (pure tooling — clean plugin refactor)

| Repo | Why | Depersonalisation | Suggested name |
|---|---|---|---|
| Claude-Bug-Catcher | Reusable debugging/bug-triage agents | Low | `bug-catcher-plugin` |
| Claude-Docker-Manager | Docker admin slashes/agents | Low | `docker-manager-plugin` |
| Claude-Conda-Manager | Python/conda env management | Low | `conda-manager-plugin` |
| Claude-Code-MCP-Command-Generator | Generates MCP install commands | Low | `mcp-command-generator-plugin` |
| Claude-MD-Chunk | Splits oversized CLAUDE.md files | Low | `claudemd-chunker-plugin` |
| Claude-Spec-Starter | Spec-writing scaffolder | Low | `spec-starter-plugin` |
| Claude-Redaction-And-Obfuscation | PII redaction | Low | `redaction-plugin` |
| Bash-Alias-Manager-Claude | Manage shell aliases | Low | `bash-alias-manager-plugin` |
| Claude-Proxmox-Manager-Template | Proxmox admin | Low | `proxmox-manager-plugin` |
| Claude-Synology-Manager | Synology NAS admin | Low | `synology-manager-plugin` |
| Claude-Workspace-Setup-Helper | Scaffolds new Claude workspaces | Low | `workspace-setup-plugin` |
| AI-Human-Attribution-Adder | Inserts AI/human attribution blocks | Low | `ai-attribution-plugin` |
| Claude-Model-Identifier | Detects active Claude model | Low | `model-identifier-plugin` |
| New-Turn-Claude-Hook | Hook demo | Low | `new-turn-hook-plugin` |

## Storage-dependent — plugin-with-linked-space candidates

These are worthwhile but need the plugin to expect a user-configured folder.

| Repo | Storage need | Suggested approach |
|---|---|---|
| Claude-Task-Manager | Task list files | Plugin + `/init` scaffolds `tasks/` in a user-chosen dir |
| Claude-Blog-Manager | Draft storage | Plugin + linked space |
| Claude-Media-Monitor / Claude-PR-And-Media-Monitoring-Workspace | Monitoring logs | `media-monitoring-plugin` + linked archive folder |
| Claude-Job-Search-Strategist / Claude-Salary-Research-Agent | Research outputs | `career-research-plugin` + linked folder |
| Claude-Competitor-Research-Agent | Research outputs | Bundle into `career-research-plugin` or sibling |
| Claude-Therapy-Tracker / Claude-Health-Helper / Claude-ADHD-Research-Workspace | Personal logs | Plugin + linked *private* space (sensitive — keep storage out of plugin repo entirely) |
| Claude-Legal-Aid-Clinic / Claude-Evidence-Assistant / Claude-Case-File / Claude-Code-Lawyer | Case files | `legal-assistant-plugin` + linked case folder; exclude `Claude-Lawyer-ISR` (Israel-specific) |
| Claude-OSINT-Investigator | Investigation notes | Plugin + linked folder |
| Claude-Purchasing-Assistant | Decision logs | Plugin + linked folder |
| Claude-Business-Continuity-Planner / Claude-Preparedness-Planner / Claude-Business-Idea-Evaluator | Plan documents | Bundle `business-planning-plugin` + linked folder |

## Worth considering (bundles / overlap review)

- **Claude-Code-Security-Auditor** — diff against existing `security-checkup-plugin` before merging.
- **Claude-Deep-Research-Template / -Model** — overlaps `tech-research-plugin`; distinct "deep research" methodology plugin possible.
- **Claude-Think-Tank / Panel-Of-Claude / Claude-Decision-Evaluation-Framework / Claude-Change-My-View** — bundle → `decision-frameworks-plugin` (pure tooling, no storage).
- **Claude-Rig-Planner / Claude-Ivory-PC-Builder** — merge → `pc-builder-plugin`.
- **Claude-Stack-Research-Workspace / Claude-Local-AI-Agent-Research / Ecosystem-Mapper** — fold into `tech-research-plugin`.
- **Agent-Junction / Claude-Sub-Agent-Network / Claude-Agent-Picker-Pattern** — bundle → `agent-orchestration-plugin`.
- **Claude-Agent-Workspace-Generator / Batch-ClaudeMD-Repo-Creator / Linux-Desktop-ClaudeMD-Seeder / Split-Context-Setup / ClaudeMD-Turnstile** — meta-tooling bundle → `claudemd-tools-plugin`.
- **Claude-Repo-Jumper / Claude-Github-Shortlister** — fold into `git-github-plugin`.
- **Claude-App-Optimiser / Claude-Rescue / Claude-System-Recovery-Mode** — bundle → `system-recovery-plugin`.
- **Claude-Dolphin-Konsole-Actions** — niche KDE integration.
- **Claude-Gdrive-Organiser** — overlaps `filesystem-org-plugin`.
- **Claude-Visual-Communications-Space / Claude-Comms-Strategist-Template** — comms strategy; medium depersonalisation.
- **Proofmode-Unpacker** — better as a skill inside another plugin.
- **Declaude** — inspect before deciding.

## Skipped (one-line reasons)

- `Claude-Agent-Blueprints`, `Claude-Agent-Workspace-Model`, `Claude-Code-Projects-Index`, `Claude-Code-Workspace-Templates-Index`, `Claude-Code-Sysadmin-Workspaces-Index`, `Cool-Claude-Code-Stuff`, `Claude-Is-Awesome`, `Non-Code-Claude-Code` — indexes/resource lists.
- `Claude-Code-MCP-List`, `How-To-MCP`, `MCPM-Claude-Code-Docs`, `Smithery-Claude-Code-MCP-Jumpstarter`, `Claude-MCP-Guidelines` — MCP docs/collections, not plugins.
- `Claude-Code-Context-Feature-Requests`, `Claude-Code-Linux-Notes`, `CONTEXT.md`, `No-Wheel-Inventions`, `Private-And-Public-Claude-MD`, `Home-Folder-Claude-MD` — notes/docs.
- `Claude-Code-Bash-Aliases`, `Claude-Slash-Commands`, `Claude-Code-Repo-Managers-ClaudeMD` — static collections, superseded by manager-style plugins.
- `Claude-LAN-Manager-0126` — superseded by `lan-manager-plugin`.
- `Claude-Code-Linux-Desktop-Slash-Commands`, `Claude-Code-Writing-Squad` — likely folded into existing plugins.
- `Claude-Interview-062325`, `Claude-AI-Conference`, `Claude-MVT-Workspace`, `Claude-Personal-Development-Workspace`, `Claude-Dork` — personal/one-off workspaces.
- `Claude-Lawyer-ISR` — Israel-specific.
- `Claude-OS-Sync-Agent`, `Claude-Georeaction-Researcher`, `Claude-User-Manual`, `Claude-Web-Analytics-Space`, `Claude-Report-Parsing-Space-Template`, `Claude-Resource-List-Builder`, `Claude-Space-Self-ideator`, `Claude-Debugging-Workspace`, `Claude-Development-Agents`, `Claude-ADB-Workspace-Template`, `Claude-Budget-Workspace-Template`, `Claude-Diary-Planner-Template`, `Claude-Home-Assistant-Manager-Template`, `Claude-Server-Manager-Template`, `Claude-Server-Mgmt-Template-SBCs`, `Claude-Writing-Space-Template` — either space templates meant to stay as templates, or already mirrored by existing plugins.
- `claude-code-marketplace`, `claude-code-plugin` — infra repos.
- `Claude-Remote-Machine-Admin-Space`, `Claude-Linux-Desktop-Manager`, `Claude-Linux-Server-Manager` — superseded by existing plugins.

## Summary

- **128** repos in the master index (approx).
- **28** already in the marketplace.
- **14 strong candidates** (pure tooling, low-effort refactor).
- **~11 storage-dependent candidates** that need the plugin+linked-space pattern.
- **~20 bundling/overlap reviews** worth doing before adding more.
- Remainder are indexes, notes, personal workspaces, or space templates best left in place.

## Next step

Before building new plugins, decide on a **convention for linked spaces** (e.g. a `space_path` config setting or a `~/claude-spaces/<plugin-name>/` default with a `/init` bootstrap). Once that pattern exists, the storage-dependent candidates all become tractable in one consistent way.
