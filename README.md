# Claude Code Plugins Marketplace

![Claude Code](https://img.shields.io/badge/Claude_Code-Project-8A2BE2?style=for-the-badge&logo=anthropic)
[![Claude Code Repos Index](https://img.shields.io/badge/Claude_Code-Repos_Index-blue?style=for-the-badge)](https://github.com/danielrosehill/Claude-Code-Repos-Index)
[![GitHub Master Index](https://img.shields.io/badge/GitHub-Master_Index-green?style=for-the-badge&logo=github)](https://github.com/danielrosehill/Github-Master-Index)

A comprehensive marketplace of Claude Code plugins for developers, system administrators, content creators, and productivity enthusiasts. These plugins extend Claude Code with specialized slash commands and agents for various workflows.

📋 **[View Plugin Source Repositories](sources.md)** - Complete list of all plugin repositories with links

## Available Plugins

## AI Tools

AI development, documentation, and context management tools.

| Plugin Name | Description | Installation Command |
|------------|-------------|---------------------|
| **AI Tools** | AI development, local AI, Ollama, MCP servers, Hugging Face, speech-to-text | `/plugin install ai-tools@danielrosehill` |
| **Context Toolkit** | Context management and organization tools | `/plugin install context-toolkit@danielrosehill` |
| **Fix Documentation** | Automated technical documentation generation and code documentation workflows | `/plugin install fix-documentation@danielrosehill` |

---

## Development Utilities

Version control and development tools.

| Plugin Name | Description | Installation Command |
|------------|-------------|---------------------|
| **Git & GitHub** | Git configuration, LFS, GitHub CLI, repository management | `/plugin install git-github@danielrosehill` |

---

## Documentation

Plugins for creating and editing documentation.

| Plugin Name | Description | Installation Command |
|------------|-------------|---------------------|
| **Tech Docs** | README creation, markdown editing, changelog generation, badges | `/plugin install tech-docs@danielrosehill` |
| **Writing & Editing** | Proofreading, formatting, style standardization, content enhancement | `/plugin install writing-editing@danielrosehill` |

---

## Media Management Plugins

Audio, video, and images: plugins for performing media operations using Claude Code.

| Plugin Name | Description | Installation Command |
|------------|-------------|---------------------|
| **Audio Editing** | Audio editing and processing tools | `/plugin install audio-editing@danielrosehill` |
| **Image Editing** | Image editing and processing tools | `/plugin install image-editing@danielrosehill` |
| **Video Editing** | Video editing and processing tools | `/plugin install video-editing@danielrosehill` |

---

## Miscellaneous

All other plugins.

| Plugin Name | Description | Installation Command |
|------------|-------------|---------------------|
| **Diary Planner** | Personal diary and planning workflows | `/plugin install diary-planner@danielrosehill` |
| **Home Budget Helper** | Personal budgeting and financial management | `/plugin install home-budget-helper@danielrosehill` |
| **Ideation** | Brainstorming, design ideas, innovation, AI chat experiments | `/plugin install ideation@danielrosehill` |
| **SEO** | SEO optimization, audits, and reviews | `/plugin install seo@danielrosehill` |

---

## OS Management / System Administration

Plugins for managing specific filesystems, whether the local environment (Linux desktop) or a Linux server. Also includes specific OS types: Home Assistant OS, OPNsense (work in progress).

| Plugin Name | Description | Installation Command |
|------------|-------------|---------------------|
| **Filesystem Organisation** | File system organization, folder structure optimization, and file management automation | `/plugin install filesystem-organisation@danielrosehill` |
| **Home Assistant Manager** | Home Assistant management and automation | `/plugin install home-assistant-manager@danielrosehill` |
| **LAN Manager** | Local network management | `/plugin install lan-manager@danielrosehill` |
| **Linux Desktop** | KDE settings, display management, system health, hardware profiling | `/plugin install linux-desktop-mgmt@danielrosehill` |
| **Linux Server** | Server management and administration tools | `/plugin install linux-server-mgmt@danielrosehill` |
| **Security Checkup** | Security audits and checkups | `/plugin install security-checkup@danielrosehill` |

---

## Research

Plugins for deep research and specific types of research.

| Plugin Name | Description | Installation Command |
|------------|-------------|---------------------|
| **Learning** | Code analysis, commit analysis, learning resources, tutorials | `/plugin install learning@danielrosehill` |
| **Tech Research** | Technology research and documentation tools | `/plugin install tech-research@danielrosehill` |

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
/plugin install system@danielrosehill
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
 
