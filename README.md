# Claude Code Plugins Collection

Collection of Claude Code plugins for developers, system administrators, and content creators. These plugins extend Claude Code with specialized slash commands and agents for various workflows.

## Available Plugins

| Plugin Name | Description | Commands | Repository |
|------------|-------------|----------|------------|
| **AI Tools** | AI development, local AI, Ollama, MCP servers, Hugging Face, speech-to-text | 46 | [CC-Plugin-ai-tools](https://github.com/danielrosehill/CC-Plugin-ai-tools) |
| **Audio** | Audio editing, conversion, microphone settings, PipeWire optimization | 8 | [CC-Plugin-audio](https://github.com/danielrosehill/CC-Plugin-audio) |
| **Claude Code** | Claude Code project setup, agents, context management, slash commands | 20 | [CC-Plugin-claude-code](https://github.com/danielrosehill/CC-Plugin-claude-code) |
| **Conda Management** | Conda environment management, backup, validation, cleanup | 10 | [CC-Plugin-conda-management](https://github.com/danielrosehill/CC-Plugin-conda-management) |
| **Debugging** | Debugging tools, log analysis, crash diagnosis, boot troubleshooting | 14 | [CC-Plugin-debugging](https://github.com/danielrosehill/CC-Plugin-debugging) |
| **Development** | Development tools, IDEs, CI/CD, package management, project setup | 91 | [CC-Plugin-development](https://github.com/danielrosehill/CC-Plugin-development) |
| **Docker** | Docker management, troubleshooting, cleanup, health checks | 9 | [CC-Plugin-docker](https://github.com/danielrosehill/CC-Plugin-docker) |
| **Documentation** | README creation, markdown editing, changelog generation, badges | 34 | [CC-Plugin-documentation](https://github.com/danielrosehill/CC-Plugin-documentation) |
| **Filesystem Organization** | File organization, cleanup, hardware profiling, folder structure | 19 | [CC-Plugin-filesystem-organization](https://github.com/danielrosehill/CC-Plugin-filesystem-organization) |
| **Git & GitHub** | Git configuration, LFS, GitHub CLI, repository management | 14 | [CC-Plugin-git-github](https://github.com/danielrosehill/CC-Plugin-git-github) |
| **Ideation** | Brainstorming, design ideas, innovation, AI chat experiments | 7 | [CC-Plugin-ideation](https://github.com/danielrosehill/CC-Plugin-ideation) |
| **Learning** | Code analysis, commit analysis, learning resources, tutorials | 5 | [CC-Plugin-learning](https://github.com/danielrosehill/CC-Plugin-learning) |
| **Linux Desktop** | KDE settings, display management, system health, hardware profiling | 253 | [CC-Plugin-linux-desktop](https://github.com/danielrosehill/CC-Plugin-linux-desktop) |
| **Linux Server** | Server management and administration tools | 2 | [CC-Plugin-linux-server](https://github.com/danielrosehill/CC-Plugin-linux-server) |
| **Misc** | Miscellaneous utilities and general-purpose commands | 334 | [CC-Plugin-misc](https://github.com/danielrosehill/CC-Plugin-misc) |
| **Photos** | Image processing and photo management | 1 | [CC-Plugin-photos](https://github.com/danielrosehill/CC-Plugin-photos) |
| **Security** | Security audits, firewall management, vulnerability scanning | 23 | [CC-Plugin-security](https://github.com/danielrosehill/CC-Plugin-security) |
| **SEO** | SEO optimization, audits, and reviews | 4 | [CC-Plugin-seo](https://github.com/danielrosehill/CC-Plugin-seo) |
| **Server Management** | Server administration, deployment, monitoring, backups | 52 | [CC-Plugin-server-management](https://github.com/danielrosehill/CC-Plugin-server-management) |
| **System** | System configuration, monitoring, and maintenance | 66 | [CC-Plugin-system](https://github.com/danielrosehill/CC-Plugin-system) |
| **Tech Research** | Technology research and documentation tools | 37 | [CC-Plugin-tech-research](https://github.com/danielrosehill/CC-Plugin-tech-research) |
| **Video** | Video processing and editing | 1 | [CC-Plugin-video](https://github.com/danielrosehill/CC-Plugin-video) |
| **Writing & Editing** | Proofreading, formatting, style standardization, content enhancement | 43 | [CC-Plugin-writing-editing](https://github.com/danielrosehill/CC-Plugin-writing-editing) |

## Installation

### Install Individual Plugins

To install a specific plugin:

```bash
# Add the marketplace (first time only)
/plugin marketplace add danielrosehill/CC-Plugin-{name}

# Install the plugin
/plugin install {name}@danielrosehill
```

**Example:**
```bash
/plugin marketplace add danielrosehill/CC-Plugin-development
/plugin install development@danielrosehill
```

### Install Multiple Plugins

You can install multiple plugins by repeating the process for each one you need.

## Plugin Categories

### Development & Tools
- **Development** (91 commands) - Comprehensive development workflow tools
- **Docker** (9 commands) - Container management
- **Git & GitHub** (14 commands) - Version control utilities
- **Debugging** (14 commands) - Troubleshooting and diagnostics

### AI & Machine Learning
- **AI Tools** (46 commands) - Complete AI development toolkit
- **Conda Management** (10 commands) - Python environment management

### System Administration
- **Linux Desktop** (253 commands) - Desktop environment management
- **Linux Server** (2 commands) - Server administration
- **System** (66 commands) - System configuration and monitoring
- **Server Management** (52 commands) - Server deployment and operations

### Content & Documentation
- **Documentation** (34 commands) - Technical writing and README generation
- **Writing & Editing** (43 commands) - Content editing and proofreading
- **SEO** (4 commands) - Search engine optimization

### Media & Creative
- **Audio** (8 commands) - Audio processing
- **Video** (1 command) - Video editing
- **Photos** (1 command) - Image management

### Productivity
- **Filesystem Organization** (19 commands) - File and folder management
- **Ideation** (7 commands) - Creative brainstorming
- **Learning** (5 commands) - Educational tools
- **Tech Research** (37 commands) - Research utilities

### Security
- **Security** (23 commands) - Security audits and vulnerability scanning

### Specialized
- **Claude Code** (20 commands) - Claude Code workflow optimization
- **Misc** (334 commands) - General utilities

## Popular Plugin Combinations

### Full Stack Developer Setup
```bash
/plugin install development@danielrosehill
/plugin install docker@danielrosehill
/plugin install git-github@danielrosehill
/plugin install debugging@danielrosehill
```

### AI/ML Developer Setup
```bash
/plugin install ai-tools@danielrosehill
/plugin install conda-management@danielrosehill
/plugin install development@danielrosehill
```

### System Administrator Setup
```bash
/plugin install linux-desktop@danielrosehill
/plugin install system@danielrosehill
/plugin install server-management@danielrosehill
/plugin install security@danielrosehill
```

### Content Creator Setup
```bash
/plugin install writing-editing@danielrosehill
/plugin install documentation@danielrosehill
/plugin install audio@danielrosehill
/plugin install video@danielrosehill
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
 
