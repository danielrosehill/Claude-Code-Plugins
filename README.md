# Claude Code Plugins Marketplace

![Claude Code](https://img.shields.io/badge/Claude_Code-Project-8A2BE2?style=for-the-badge&logo=anthropic)
[![Claude Code Repos Index](https://img.shields.io/badge/Claude_Code-Repos_Index-blue?style=for-the-badge)](https://github.com/danielrosehill/Claude-Code-Repos-Index)
[![GitHub Master Index](https://img.shields.io/badge/GitHub-Master_Index-green?style=for-the-badge&logo=github)](https://github.com/danielrosehill/Github-Master-Index)

A comprehensive marketplace of Claude Code plugins for developers, system administrators, content creators, and productivity enthusiasts. These plugins extend Claude Code with specialized slash commands and agents for various workflows.

## Available Plugins

| Plugin Name | Description | Installation Command |
|------------|-------------|---------------------|
| **AI Tools** | AI development, local AI, Ollama, MCP servers, Hugging Face, speech-to-text | `/plugin install ai-tools@danielrosehill-plugins` |
| **Audio Editing** | Audio editing and processing tools | `/plugin install audio-editing@danielrosehill-plugins` |
| **Career Planner** | Career planning, job search, and professional development | `/plugin install career-planner@danielrosehill-plugins` |
| **Claude Code** | Claude Code project setup, agents, context management, slash commands | `/plugin install claude-code@danielrosehill-plugins` |
| **Conda Management** | Conda environment management, backup, validation, cleanup | `/plugin install conda-management@danielrosehill-plugins` |
| **Context Toolkit** | Context management and organization tools | `/plugin install context-toolkit@danielrosehill-plugins` |
| **Debugging** | Debugging tools, log analysis, crash diagnosis, boot troubleshooting | `/plugin install debugging@danielrosehill-plugins` |
| **Development** | Development tools, IDEs, CI/CD, package management, project setup | `/plugin install development@danielrosehill-plugins` |
| **Diary Planner** | Personal diary and planning workflows | `/plugin install diary-planner@danielrosehill-plugins` |
| **Docker Assist** | Docker assistance and container management | `/plugin install docker-assist@danielrosehill-plugins` |
| **Documentation** | README creation, markdown editing, changelog generation, badges | `/plugin install documentation@danielrosehill-plugins` |
| **Files & Folder Org** | File and folder organization utilities | `/plugin install files-and-folder-org@danielrosehill-plugins` |
| **Git & GitHub** | Git configuration, LFS, GitHub CLI, repository management | `/plugin install git-github@danielrosehill-plugins` |
| **Home Assistant Manager** | Home Assistant management and automation | `/plugin install home-assistant-manager@danielrosehill-plugins` |
| **Home Budget Helper** | Personal budgeting and financial management | `/plugin install home-budget-helper@danielrosehill-plugins` |
| **Ideation** | Brainstorming, design ideas, innovation, AI chat experiments | `/plugin install ideation@danielrosehill-plugins` |
| **Image Editing** | Image editing and processing tools | `/plugin install image-editing@danielrosehill-plugins` |
| **LAN Manager** | Local network management | `/plugin install lan-manager@danielrosehill-plugins` |
| **Learning** | Code analysis, commit analysis, learning resources, tutorials | `/plugin install learning@danielrosehill-plugins` |
| **Linux Desktop** | KDE settings, display management, system health, hardware profiling | `/plugin install linux-desktop@danielrosehill-plugins` |
| **Linux Server** | Server management and administration tools | `/plugin install linux-server@danielrosehill-plugins` |
| **Security Checkup** | Security audits and checkups | `/plugin install security-checkup@danielrosehill-plugins` |
| **SEO** | SEO optimization, audits, and reviews | `/plugin install seo@danielrosehill-plugins` |
| **Server Management** | Server administration, deployment, monitoring, backups | `/plugin install server-management@danielrosehill-plugins` |
| **System** | System configuration, monitoring, and maintenance | `/plugin install system@danielrosehill-plugins` |
| **Tech Research** | Technology research and documentation tools | `/plugin install tech-research@danielrosehill-plugins` |
| **Video Editing** | Video editing and processing tools | `/plugin install video-editing@danielrosehill-plugins` |
| **Writing & Editing** | Proofreading, formatting, style standardization, content enhancement | `/plugin install writing-editing@danielrosehill-plugins` |

## Installation

### Add This Marketplace

First, add this marketplace to your Claude Code installation:

```bash
/plugin marketplace add https://github.com/danielrosehill/Claude-Code-Plugins
```

### Install Individual Plugins

After adding the marketplace, install any plugin:

```bash
/plugin install {plugin-name}@danielrosehill-plugins
```

**Examples:**
```bash
/plugin install ai-tools@danielrosehill-plugins
/plugin install development@danielrosehill-plugins
/plugin install writing-editing@danielrosehill-plugins
```

### Install Multiple Plugins

You can install multiple plugins by repeating the installation command for each one you need.

## Plugin Categories

### Development & Tools
- **Development** - Comprehensive development workflow tools
- **Docker Assist** - Container management
- **Git & GitHub** - Version control utilities
- **Debugging** - Troubleshooting and diagnostics

### AI & Machine Learning
- **AI Tools** - Complete AI development toolkit
- **Conda Management** - Python environment management

### System Administration
- **Linux Desktop** - Desktop environment management
- **Linux Server** - Server administration
- **System** - System configuration and monitoring
- **Server Management** - Server deployment and operations
- **LAN Manager** - Local network management

### Content & Documentation
- **Documentation** - Technical writing and README generation
- **Writing & Editing** - Content editing and proofreading
- **SEO** - Search engine optimization

### Media & Creative
- **Audio Editing** - Audio processing and editing
- **Video Editing** - Video editing and processing
- **Image Editing** - Image processing and editing

### Productivity & Organization
- **Files & Folder Org** - File and folder management
- **Context Toolkit** - Context management and organization
- **Ideation** - Creative brainstorming
- **Tech Research** - Research utilities

### Personal & Lifestyle
- **Career Planner** - Career planning and job search
- **Diary Planner** - Personal diary and planning
- **Home Budget Helper** - Personal budgeting and finance

### Security & Home Automation
- **Security Checkup** - Security audits and vulnerability scanning
- **Home Assistant Manager** - Home Assistant management

### Specialized
- **Claude Code** - Claude Code workflow optimization
- **Learning** - Educational tools and code analysis

## Popular Plugin Combinations

### Full Stack Developer Setup
```bash
/plugin install development@danielrosehill-plugins
/plugin install docker-assist@danielrosehill-plugins
/plugin install git-github@danielrosehill-plugins
/plugin install debugging@danielrosehill-plugins
```

### AI/ML Developer Setup
```bash
/plugin install ai-tools@danielrosehill-plugins
/plugin install conda-management@danielrosehill-plugins
/plugin install development@danielrosehill-plugins
```

### System Administrator Setup
```bash
/plugin install linux-desktop@danielrosehill-plugins
/plugin install system@danielrosehill-plugins
/plugin install server-management@danielrosehill-plugins
/plugin install security-checkup@danielrosehill-plugins
/plugin install lan-manager@danielrosehill-plugins
```

### Content Creator Setup
```bash
/plugin install writing-editing@danielrosehill-plugins
/plugin install documentation@danielrosehill-plugins
/plugin install audio-editing@danielrosehill-plugins
/plugin install video-editing@danielrosehill-plugins
/plugin install image-editing@danielrosehill-plugins
```

### Personal Productivity Setup
```bash
/plugin install files-and-folder-org@danielrosehill-plugins
/plugin install context-toolkit@danielrosehill-plugins
/plugin install diary-planner@danielrosehill-plugins
/plugin install career-planner@danielrosehill-plugins
/plugin install home-budget-helper@danielrosehill-plugins
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
 
