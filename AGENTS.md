# Daniel Rosehill Plugin Marketplace

This repo is a workspace for Daniel to manage his Codex plugins marketplace.

That's available on GH here: https://github.com/danielrosehill/Codex-Plugins

You can help Daniel with:

- Grouping plugins into folders 
- Ensuring the manifest is kept up to date and compliant with Anthropic's standards, including as they change 
- Admin 

Out of scope: creating plugins. Daniel likes to do that in other repos and then migrate them into this marketplace when/if they may be "shareable" (useful to others).

Some general guidelines:

## Plugins Shouldn't Be "Daniel-Specific"

The idea of Codex plugin marketplaces is that other users can use them. Sometimes, Daniel will copy his own private plugins into this public repo and then run some "depersonalisation." 

At a minimum that means replacing any references to Daniel with "the user." And generally acting to ensure that the plugin contains agents and slashes that are adaptable to the needs of anyone who might wish to use them. 

## Write Descriptions For A 59-Character Window

The `/plugin` browser truncates each description to **59 characters** plus an
ellipsis in its list view (`Yi(entry.description, 60)` in the Codex bundle,
verified against v2.1.236 on 2026-08-19). The full text appears only after the user
opens the plugin's detail pane.

Search in that browser matches `name`, `displayName`, `description` and
`marketplaceName` — **not** `tags`, `category` or `keywords`. `tags` is read for
exactly one thing: `tags.includes("community-managed")`, which renders a
`[Community Managed]` badge.

Consequences for anything written into the manifest:

- Front-load the distinguishing words. The first 59 characters are the whole pitch.
- Never open with "Codex plugin" — 20 characters of a phrase every entry in a
  Codex plugin browser would share. Removed from all entries 2026-08-19.
- Avoid filler like "workflow —", "a collection of", "skills for".
- `category` is accepted and validates, but Codex **never reads it**. It
  exists here purely as the input to `scripts/generate-catalogue.py`. Do not add
  manifest metadata expecting the CLI to surface it — check the bundle first.
- The browser reads the **marketplace entry**, not the plugin's own `plugin.json`
  and not the GitHub repo description. At browse time nothing has been cloned, so
  this manifest is the only text Codex has.

## Conform To Standards

Plugins are a new feature that were likely added after your training.

Refer to the Anthropic's doc as your source of truth for ensuring conformity to syntax etc:

https://code.Codex.com/docs/en/plugins

https://code.Codex.com/docs/en/plugin-marketplaces

## Repo Structure: No Submodules

This marketplace repo **does not use git submodules**. It is a manifest-only marketplace: `.Codex-plugin/marketplace.json` points at each plugin's standalone GitHub repo via its `source` block, which is all Codex needs to discover and install plugins.

Raw plugin source lives in a sibling working directory (not tracked here):

```
~/repos/github/ai-agents-and-prompts/ai-Codex-plugins/<plugin-name>/
```

That's where you clone/edit/audit plugin repos locally. This marketplace repo itself should contain no `plugins/` directory.

## Procedure: Adding A New Plugin Or Skill

Every new plugin **or skill** is its own repository. The marketplace only references these repos — it never hosts the plugin source directly. Follow this order of operations:

1. **Create the plugin/skill in its own repo**, cloned under `~/repos/github/ai-agents-and-prompts/ai-Codex-plugins/<plugin-name>/`. Build and test it there. Skills live inside a plugin repo as `skills/<skill-name>/` with a `SKILL.md`; a skill-only plugin is still a plugin repo.
2. **Depersonalise** — scrub Daniel-specific references, replace with "the user," ensure it's adaptable for others.
3. **Push to GitHub** as a standalone public repo under `danielrosehill/`.
4. **Register in `.Codex-plugin/marketplace.json`** — append a new entry with `name`, `displayName`, `source` (github + repo), `description`, `category`, `version`, `author`, `license`, and `tags`. Run `Codex plugin validate .Codex-plugin/marketplace.json` and check for duplicate `name` values. `category` must reuse one of the existing category strings — a typo silently creates a new one-plugin category page.
5. **Regenerate the catalogue** — `python3 scripts/generate-catalogue.py`. This rewrites the `## Available Plugins` block of `README.md` and all of `docs/categories/`. Never hand-edit either; they are generated from the manifest.
6. **Add a changelog entry** to `CHANGELOG.md`, under `## Unreleased` in a `### Added — <date>` block.
7. **Commit and push** the marketplace repo.

Use the `/new-plugin` local skill to walk through this procedure.