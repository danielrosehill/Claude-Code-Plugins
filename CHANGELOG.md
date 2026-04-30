# Marketplace Changelog

A record of how the `danielrosehill` Claude Code plugin marketplace has evolved over time. Follows [Keep a Changelog](https://keepachangelog.com/en/1.1.0/) conventions loosely — entries are grouped by date and marketplace version.

---

## Unreleased

### Added — 2026-04-30

- **`background-removal`** — remove image backgrounds via `rembg`. Wraps the upstream `quick-rmbg` CLI ([Quick-RMBG](https://github.com/danielrosehill/Quick-RMBG)) and ships its KDE Dolphin service-menu `.desktop` for right-click "Remove background". Nine skills: `remove-background`, `remove-background-two-pass`, `remove-background-batch`, `refine-mask-interactive`, `install-dolphin-action`, `uninstall-dolphin-action`, `configure-rmbg`, `install-rembg`, `list-rmbg-models`. Listed under Media Editing.

- **`nfc-ops`** — NFC tag operations using libnfc. Six skills: `write-tag`, `bulk-write` (CSV-driven, resumable progress sidecar), `read-tag`, `inspect-tag`, `password-protect`, and `bulk-password-update`. Human-in-the-loop workflow — user presents one tag at a time. Targets NTAG21x and MIFARE Classic via any libnfc-compatible USB reader (ACR122U, PN532). Plugin state/logs live under `$CLAUDE_USER_DATA/nfc-ops/`; user-owned batch CSVs stay user-managed with only a pointer stored in config.

- **`os-sync-agent`** — hardware-aware desktop-to-laptop environment sync for Ubuntu/Debian. Snapshots packages (apt/snap/flatpak/pip/conda/ollama) and dotfiles from a base machine and a remote machine reached over SSH, then produces an incremental install/remove/sync plan rather than a clone. Ships `/sync-os` command, `sync-environments` skill, and a `scripts/sync-agent.sh` gatherer that writes profiles to `$CLAUDE_USER_DATA/os-sync-agent/profiles/{base,remote}` and honours `SYNC_REMOTE_HOST` for non-default SSH aliases.

### Added — 2026-04-28

- **`opnsense-mgmt`** — manage an OPNsense router/firewall via SSH and OPNsense API. Onboard skill writes per-host config to `$CLAUDE_USER_DATA/opnsense-mgmt/config.json`; `opnsense-maintenance` skill reads from it. Generic, multi-environment-friendly.
- **`synology-mgmt`** — manage a Synology NAS via SSH and (optional) DSM HTTP API. Onboard skill writes per-host config to `$CLAUDE_USER_DATA/synology-mgmt/config.json`; `synology-operations` skill reads from it. Generic, multi-NAS-friendly.
- **`proxmox-mgmt`** — manage a Proxmox VE host via SSH and Proxmox API. Onboard skill writes per-host config to `$CLAUDE_USER_DATA/proxmox-mgmt/config.json`; `proxmox-maintenance` skill reads from it. Generic, multi-host-friendly.
- **`home-assistant-mgmt`** — manage a Home Assistant instance via REST API + (optional) SSH. Onboard skill captures install type, API URL, long-lived token reference, and default TTS target into `$CLAUDE_USER_DATA/home-assistant-mgmt/config.json`; `home-assistant-ops` skill reads from it. Generic across HAOS / Container / Core / Supervised installs.

### Changed — 2026-04-28

- Replaced the stale `synology-manager` README entry (pointing at a non-registered repo) with the new `synology-mgmt` plugin.
- Replaced the older `proxmox-manager` README entry with the new generic `proxmox-mgmt` plugin (same pattern as opnsense-mgmt / synology-mgmt).
- Replaced the older `home-assistant-manager` README entry with the new generic `home-assistant-mgmt` plugin.

---

## [2.0.0] — 2026-04-19

### The Great Reshape

Replaced the earlier 21-plugin + 111-scaffold-manifest marketplace with **29 focused cluster plugins** following a new pattern: **primitives ship globally via plugins, scaffolds are provisioned as data by each plugin's `new-workspace` skill**. No more workspace-scoped `.claude/` trees hiding primitives behind a `cd`.

See the full reshape plan at [Claude-Workspace-Reshaping-190426](https://github.com/danielrosehill/Claude-Workspace-Reshaping-190426).

### Added

New cluster plugins (24 new + 3 stable carry-overs renamed for convention consistency + 1 standalone + 1 audio transcription pipeline = 29 total):

**Media & audio**
- `audio-production` — normalize, VAD, transcribe, diarize, podcast assembly; variants: engineering/podcast/transcript
- `video-production` — transcode, organise, dedupe, ComfyUI generation, cover art; variants: editing/generative/cover-art
- `media-library` — catalog, tag, search, sort, dedupe
- `claude-transcription` — end-to-end transcription pipeline (Gemini / AssemblyAI / Whisper backends)

**Knowledge & writing**
- `content-writing` — draft, proofread, version, publish; variants: writing/blog/opinion/document
- `technical-docs` — READMEs, reference docs, changelogs, environment docs; variants: api-reference/code-docs/environment-docs/dev-notebook
- `knowledge-documentation` — wikis, resource libraries, process docs, SOPs; 4 variants
- `ai-engineering` — prompt craft, eval, catalog, version; variants: prompt-library/prompt-factory

**Research & investigation**
- `research-space` — source log, summarize, deep-dive; 7 variants (deep-research/technical/osint/georeaction/stack/ecosystem/competitor)
- `legal-investigative` — evidence, redaction, briefs; 4 variants, Israel as jurisdiction overlay

**Personal & planning**
- `personal-planning` — diary/health/family/house-search/preparedness/therapy/personal-dev/inbox (8 variants)
- `career` — log roles, compare offers, track applications, salary benchmark; 3 variants
- `budgeting` — transactions, forecasting, goals
- `purchasing` — generic procurement; 3 variants
- `shopping` — region-specific consumer shopping; Israel + generic variants
- `ideation-planning` — capture, evaluate, rank, simulate; 7 variants

**System & infrastructure**
- `desktop-manager` — local Linux desktop management
- `sysadmin-homelab` — remote/server admin; 9 variants (linux/docker/conda/proxmox/nas/adb/sbc/remote-admin/lan)
- `smart-home` — Home Assistant, multi-room audio, media server
- `filesystem-organiser` — local + gdrive filesystem ops
- `debugging` — logs, diagnosis, bug tracking

**Dev & workflow tooling**
- `dev-tools` — repo scaffolding, retrofitting, code review, templatization, session continuity; 7 variants
- `workspace-foundational` — generic workspace patterns, context management, template discovery; 6 variants
- `pr-media-work` — work-focused PR/media monitoring and comms strategy

**Meta & utility**
- `meta-tools` — tools about Claude Code itself (context, MCP, feedback, primitive selection)

**Kept stable** (renamed for convention consistency to `Claude-*-Plugin`):
- `security-checkup` — vulnerability scanning, hardening, audit
- `claude-user-memory` — persistent user facts across sessions
- `ai-attribution` — human vs AI contribution documentation

**Standalone** (unchanged):
- `hp5200-printer` — HP DeskJet 5200 operations

### Removed

Retired from the marketplace and the underlying repos deleted (~127 GitHub repos total, including 100+ workspace template repos that were folded into cluster plugins' `template/` directories):

- `claude-janitor` → now `/dev-tools:janitor-*`
- `tech-docs` → now `/technical-docs:*` (README, reference, changelog commands)
- `fix-documentation` → now `/technical-docs:save-fix-note`
- `repo-retrofitter` → now `/dev-tools:retrofit-*`
- `make-agent-friendly` → now `/dev-tools:make-agent-friendly`
- `qa-team` → now `/dev-tools:qa-*`
- `claude-templatizer` → now `/dev-tools:templatize-workspace`
- `session-transfer` → now `/dev-tools:session-*`
- `new-repo-from-template` → replaced by per-cluster `new-workspace` skills; template discovery at `/workspace-foundational:find-template`
- `workspace-setup` → now `/workspace-foundational:setup-workspaces`
- `bug-catcher` → now `/debugging:*` and `/sysadmin-homelab:diagnose*`
- `bash-alias-manager` → now `/sysadmin-homelab:manage-aliases` etc.
- `new-turn-hook`, `claudemd-chunker`, `mcp-command-generator`, `what-thing`, `claude-code-feedback` → all now under `/meta-tools:*`

### Changed

- Marketplace metadata version bumped from 1.0.0 → 2.0.0.
- Repo naming convention: all plugin repos now `Claude-Title-Case-Plugin` (previously mixed: some lowercase-kebab, some Title-Case).
- Repo description format: all repos now use `Claude Code plugin: <domain> workflow — <primitives summary>, with <variants> variants.` for marketplace-scannable consistency.

### Pattern notes

The target pattern for every workspace-oriented plugin:

```
<plugin>/
  .claude-plugin/plugin.json
  commands/               # globally available domain primitives
  agents/
  skills/new-workspace/   # provisions a scaffold from template/
  template/               # data scaffold (no .claude/ tree)
    <variant>/
```

Workspace data lives where the user provisions it. Plugin updates never touch user data.

---

## [1.0.0] — 2026 (pre-reshape)

Initial marketplace with 21 individual plugins (claude-janitor, tech-docs, fix-documentation, security-checkup, repo-retrofitter, make-agent-friendly, qa-team, claude-templatizer, session-transfer, new-repo-from-template, bug-catcher, mcp-command-generator, claudemd-chunker, bash-alias-manager, workspace-setup, ai-attribution, new-turn-hook, hp5200-printer, what-thing, claude-user-memory, claude-code-feedback) and a parallel collection of 111 workspace templates surfaced via the `new-repo-from-template` plugin.
