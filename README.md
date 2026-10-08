![Daniel's Claude plugin library](banner.png)

![Claude Code](https://img.shields.io/badge/Claude_Code-Project-8A2BE2?style=for-the-badge&logo=anthropic)
[![Claude Code Projects Index](https://img.shields.io/badge/Claude_Code-Projects_Index-orange?style=for-the-badge)](https://claude.danielrosehill.com/)
[![Claude Code Repos Index](https://img.shields.io/badge/Claude_Code-Repos_Index-blue?style=for-the-badge)](https://github.com/danielrosehill/Claude-Code-Repos-Index)
[![GitHub Master Index](https://img.shields.io/badge/GitHub-Master_Index-green?style=for-the-badge&logo=github)](https://github.com/danielrosehill/Github-Master-Index)

🌐 **Browse the full Claude Code Projects Index at [claude.danielrosehill.com](https://claude.danielrosehill.com/)** — searchable catalog of all plugins, skills, and Claude Code projects.

A comprehensive marketplace of Claude Code plugins for developers, system administrators, content creators, and productivity enthusiasts. These plugins extend Claude Code with specialized slash commands and agents for various workflows.

📋 **[Browse plugins by category](docs/categories/README.md)** — every plugin with its description, source repository and install command

## Available Plugins

**172 plugins across 18 categories.** Browse a category below, then install any plugin with:

```bash
/plugin install <plugin-name>@danielrosehill
```

| Category | Plugins | Contents |
| --- | ---: | --- |
| **[Linux Sysadmin](docs/categories/linux-sysadmin.md)** | 28 | `backup-planner`, `batch-optical-archivist`, `claude-pipewire-skills`, `conda-manager`, `copyq-scripting`, `debugging`, `desktop-manager`, … (21 more) |
| **[Personal Productivity](docs/categories/personal-productivity.md)** | 17 | `aliexpress-israel-skills`, `brainstorm-solutions`, `budgeting`, `business-idea-eval`, `contact-support`, `Daniel-Rosehill`, … (11 more) |
| **[Media Editing](docs/categories/media-editing.md)** | 16 | `ai-video-producer`, `audio-production`, `audio-voice-id`, `background-removal`, `claude-transcription`, `gimp`, `hardware-id-annotation`, … (9 more) |
| **[Research & Learning](docs/categories/research-learning.md)** | 15 | `air-quality-toolkit`, `geopol-sim`, `jewish-texts-reference`, `jewish-utilities`, `knowledge-documentation`, `learning`, … (9 more) |
| **[Documentation & Writing](docs/categories/documentation-writing.md)** | 14 | `ai-attribution`, `claude-document-nudge`, `content-writing`, `digital-printing`, `document-to-markdown`, `eml-toolkit`, `html-email-designer`, … (7 more) |
| **[AI & Context](docs/categories/ai-context.md)** | 12 | `ai-engineering`, `ai-model-research`, `chatgpt-importer`, `claude-md-tester`, `claude-sops`, `claude-user-memory`, `context-toolkit`, … (5 more) |
| **[Repo Scaffolding & Retrofitting](docs/categories/repo-scaffolding-retrofitting.md)** | 12 | `dev-debugger`, `dev-tools`, `favorite-plugins-installers`, `kaizen`, `license-populator`, `repo-mgmt`, `spec-starter`, `stack-evaluator`, … (4 more) |
| **[Privacy & Security](docs/categories/privacy-security.md)** | 8 | `anonymisation-assistant`, `claude-vault`, `digital-evidence`, `gpg-ops`, `linux-av-manager`, `pii-scanner`, `security-auditor`, `spamhole` |
| **[Data & Datasets](docs/categories/data-datasets.md)** | 7 | `claude-data-analyst`, `Claude-Data-Wrangler`, `data-annotation`, `data-visualisation-and-publishing`, `synthetic-data`, `taxonomy-creation`, … (1 more) |
| **[Marketing & Shopping](docs/categories/marketing-shopping.md)** | 7 | `aliexpress-shopper`, `amazon`, `freight-vol-calculator`, `grainger`, `pr-media-work`, `procurement-tools`, `shopping` |
| **[Network & Smart Home](docs/categories/network-smart-home.md)** | 7 | `adb-ops`, `agent-relay`, `home-assistant-mgmt`, `media-assistant-ops`, `mqtt-observability`, `network-cups`, `zigbee-home-maintenance` |
| **[Regional](docs/categories/regional.md)** | 6 | `hebrew-correspondence`, `ikea-israel`, `israel-agent-skills`, `israel-opening-hours`, `netek-disconnect`, `rtl-email` |
| **[QA & Agent Sessions](docs/categories/qa-agent-sessions.md)** | 5 | `breakout-claude`, `claude-hopper`, `claude-pa`, `claude-rudder`, `eval-runner` |
| **[Git & GitHub](docs/categories/git-github.md)** | 4 | `claude-code-feedback`, `gist-writer`, `github-explorer`, `github-research` |
| **[Hardware & Maker](docs/categories/hardware-maker.md)** | 4 | `hardware-spec-assembly`, `label-printer`, `nfc-ops`, `obd-diagnostics` |
| **[Staging](docs/categories/staging.md)** | 4 | `career`, `loose-tasks`, `resource-list-builder`, `smart-home` |
| **[Data Discovery](docs/categories/data-discovery.md)** | 3 | `browser-data-capture`, `Local-Web-Capture`, `site-skill-builder` |
| **[Publishing & CMS](docs/categories/publishing-cms.md)** | 3 | `book-writing`, `buttondown-mgmt`, `kdp-publishing` |

Full descriptions and per-plugin install commands live on each category page — see the [category index](docs/categories/README.md).

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
/plugin install ai-engineering@danielrosehill
/plugin install repo-mgmt@danielrosehill
/plugin install content-writing@danielrosehill
```

### Install Multiple Plugins

You can install multiple plugins by repeating the installation command for each one you need.

## Popular Plugin Combinations

### Full Stack Developer Setup
```bash
/plugin install repo-mgmt@danielrosehill
/plugin install dev-tools@danielrosehill
/plugin install technical-docs@danielrosehill
/plugin install debugging@danielrosehill
```

### AI/ML Developer Setup
```bash
/plugin install ai-engineering@danielrosehill
/plugin install repo-mgmt@danielrosehill
/plugin install ai-model-research@danielrosehill
```

### System Administrator Setup
```bash
/plugin install desktop-manager@danielrosehill
/plugin install sysadmin-homelab@danielrosehill
/plugin install security-checkup@danielrosehill
/plugin install linux-debugging@danielrosehill
```

### Content Creator Setup
```bash
/plugin install content-writing@danielrosehill
/plugin install technical-docs@danielrosehill
/plugin install audio-production@danielrosehill
/plugin install video-editing@danielrosehill
/plugin install image-production@danielrosehill
```

### Personal Productivity Setup
```bash
/plugin install filesystem-organiser@danielrosehill
/plugin install personal-planning@danielrosehill
/plugin install schedule-manager@danielrosehill
/plugin install budgeting@danielrosehill
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

## Contributing

Each plugin lives in its own repository — this repo is the marketplace manifest only.

1. For a change to a **plugin**, open an issue or pull request on that plugin's own repository (linked from its category page)
2. For a problem with the **catalogue** itself — a wrong description, a broken link, a miscategorised plugin — open an issue here
3. Submit a pull request with a clear description of your improvements

## License

All plugins are licensed under the MIT License. See individual plugin repositories for details.

## Author

**Daniel Rosehill**
- Website: [danielrosehill.com](https://danielrosehill.com)
- Email: public@danielrosehill.com
- GitHub: [@danielrosehill](https://github.com/danielrosehill)
 
