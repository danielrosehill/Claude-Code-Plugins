# Plugin Source Repositories

This document lists all plugin repositories included as git submodules in this marketplace.

## All Plugins

| Plugin Name | Repository URL | Local Path |
|------------|----------------|------------|
| ai-tools-plugin | [https://github.com/danielrosehill/ai-tools-plugin](https://github.com/danielrosehill/ai-tools-plugin) | `plugins/ai-tools-plugin` |
| context-toolkit-plugin | [https://github.com/danielrosehill/context-toolkit-plugin](https://github.com/danielrosehill/context-toolkit-plugin) | `plugins/context-toolkit-plugin` |
| git-github-plugin | [https://github.com/danielrosehill/git-github-plugin](https://github.com/danielrosehill/git-github-plugin) | `plugins/git-github-plugin` |
| home-budget-helper-plugin | [https://github.com/danielrosehill/home-budget-helper-plugin](https://github.com/danielrosehill/home-budget-helper-plugin) | `plugins/home-budget-helper-plugin` |
| audio-editing-plugin | [https://github.com/danielrosehill/audio-editing-plugin](https://github.com/danielrosehill/audio-editing-plugin) | `plugins/audio-editing-plugin` |
| image-editing-plugin | [https://github.com/danielrosehill/image-editing-plugin](https://github.com/danielrosehill/image-editing-plugin) | `plugins/image-editing-plugin` |
| video-editing-plugin | [https://github.com/danielrosehill/video-editing-plugin](https://github.com/danielrosehill/video-editing-plugin) | `plugins/video-editing-plugin` |
| diary-planner-plugin | [https://github.com/danielrosehill/diary-planner-plugin](https://github.com/danielrosehill/diary-planner-plugin) | `plugins/diary-planner-plugin` |
| documentation-plugin | [https://github.com/danielrosehill/documentation-plugin](https://github.com/danielrosehill/documentation-plugin) | `plugins/documentation-plugin` |
| Claude-Document-This | [https://github.com/danielrosehill/Claude-Document-This](https://github.com/danielrosehill/Claude-Document-This) | `plugins/Claude-Document-This` |
| ideation-plugin | [https://github.com/danielrosehill/ideation-plugin](https://github.com/danielrosehill/ideation-plugin) | `plugins/ideation-plugin` |
| learning-plugin | [https://github.com/danielrosehill/learning-plugin](https://github.com/danielrosehill/learning-plugin) | `plugins/learning-plugin` |
| seo-plugin | [https://github.com/danielrosehill/seo-plugin](https://github.com/danielrosehill/seo-plugin) | `plugins/seo-plugin` |
| tech-research-plugin | [https://github.com/danielrosehill/tech-research-plugin](https://github.com/danielrosehill/tech-research-plugin) | `plugins/tech-research-plugin` |
| home-assistant-manager-plugin | [https://github.com/danielrosehill/home-assistant-manager-plugin](https://github.com/danielrosehill/home-assistant-manager-plugin) | `plugins/home-assistant-manager-plugin` |
| filesystem-org-plugin | [https://github.com/danielrosehill/filesystem-org-plugin](https://github.com/danielrosehill/filesystem-org-plugin) | `plugins/filesystem-org-plugin` |
| lan-manager-plugin | [https://github.com/danielrosehill/lan-manager-plugin](https://github.com/danielrosehill/lan-manager-plugin) | `plugins/lan-manager-plugin` |
| linux-desktop-plugin | [https://github.com/danielrosehill/linux-desktop-plugin](https://github.com/danielrosehill/linux-desktop-plugin) | `plugins/linux-desktop-plugin` |
| linux-server-plugin | [https://github.com/danielrosehill/linux-server-plugin](https://github.com/danielrosehill/linux-server-plugin) | `plugins/linux-server-plugin` |
| security-checkup-plugin | [https://github.com/danielrosehill/security-checkup-plugin](https://github.com/danielrosehill/security-checkup-plugin) | `plugins/security-checkup-plugin` |
| writing-editing-plugin | [https://github.com/danielrosehill/writing-editing-plugin](https://github.com/danielrosehill/writing-editing-plugin) | `plugins/writing-editing-plugin` |

## About Git Submodules

This marketplace uses git submodules to include each plugin repository. This approach:

- Maintains plugins in separate repositories for independent development
- Allows the marketplace to reference specific versions of each plugin
- Keeps the marketplace repository lightweight while providing access to all plugins

## Updating Submodules

To update all submodules to their latest versions:

```bash
git submodule update --remote --recursive
```

To initialize submodules after cloning this repository:

```bash
git submodule update --init --recursive
```

## Plugin Development

Each plugin is developed and maintained in its own repository. To contribute to a specific plugin:

1. Navigate to the plugin's repository (linked in the table above)
2. Fork the repository
3. Make your changes
4. Submit a pull request to the plugin's repository

Changes to individual plugins will be reflected in this marketplace when the submodule references are updated.
