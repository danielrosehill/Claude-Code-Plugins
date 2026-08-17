# Daniel Rosehill Plugin Marketplace

This repo is a workspace for Daniel to manage his Claude Code plugins marketplace.

That's available on GH here: https://github.com/danielrosehill/Claude-Code-Plugins

You can help Daniel with:

- Grouping plugins into folders 
- Ensuring the manifest is kept up to date and compliant with Anthropic's standards, including as they change 
- Admin 

Out of scope: creating plugins. Daniel likes to do that in other repos and then migrate them into this marketplace when/if they may be "shareable" (useful to others).

Some general guidelines:

## Plugins Shouldn't Be "Daniel-Specific"

The idea of Claude Code plugin marketplaces is that other users can use them. Sometimes, Daniel will copy his own private plugins into this public repo and then run some "depersonalisation." 

At a minimum that means replacing any references to Daniel with "the user." And generally acting to ensure that the plugin contains agents and slashes that are adaptable to the needs of anyone who might wish to use them. 

## Conform To Standards

Plugins are a new feature that were likely added after your training.

Refer to the Anthropic's doc as your source of truth for ensuring conformity to syntax etc:

https://code.claude.com/docs/en/plugins

https://code.claude.com/docs/en/plugin-marketplaces

## Repo Structure: No Submodules

This marketplace repo **does not use git submodules**. It is a manifest-only marketplace: `.claude-plugin/marketplace.json` points at each plugin's standalone GitHub repo via its `source` block, which is all Claude Code needs to discover and install plugins.

Raw plugin source lives in a sibling working directory (not tracked here):

```
~/repos/github/ai-agents-and-prompts/ai-claude-plugins/<plugin-name>/
```

That's where you clone/edit/audit plugin repos locally. This marketplace repo itself should contain no `plugins/` directory.

## Procedure: Adding A New Plugin Or Skill

Every new plugin **or skill** is its own repository. The marketplace only references these repos — it never hosts the plugin source directly. Follow this order of operations:

1. **Create the plugin/skill in its own repo**, cloned under `~/repos/github/ai-agents-and-prompts/ai-claude-plugins/<plugin-name>/`. Build and test it there. Skills live inside a plugin repo as `skills/<skill-name>/` with a `SKILL.md`; a skill-only plugin is still a plugin repo.
2. **Depersonalise** — scrub Daniel-specific references, replace with "the user," ensure it's adaptable for others.
3. **Push to GitHub** as a standalone public repo under `danielrosehill/`.
4. **Register in `.claude-plugin/marketplace.json`** — append a new entry with `name`, `source` (github + repo), `description`, `version`, `author`, `license`, and `tags`. Validate the JSON and check for duplicate `name` values.
5. **Update `README.md`** — add it under the appropriate category section.
6. **Add a changelog entry** to `CHANGELOG.md`, under `## Unreleased` in a `### Added — <date>` block.
7. **Commit and push** the marketplace repo.

Use the `/new-plugin` local skill to walk through this procedure.