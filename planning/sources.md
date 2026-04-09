# Plugin Source Repositories

This document lists all plugin repositories included as git submodules in this marketplace.

## All Plugins

| Plugin Name | Repository URL | Local Path |
|------------|----------------|------------|
| repo-retrofitter-plugin | [https://github.com/danielrosehill/Claude-Repo-Retrofitter.git](https://github.com/danielrosehill/Claude-Repo-Retrofitter.git) | `plugins/repo-retrofitter-plugin` |
| Claude-Handover | [https://github.com/danielrosehill/Claude-Handover.git](https://github.com/danielrosehill/Claude-Handover.git) | `plugins/Claude-Handover` |

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
