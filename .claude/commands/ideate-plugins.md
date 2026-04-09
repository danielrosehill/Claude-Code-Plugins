---
description: Brainstorm complementary plugin ideas that would fill gaps in the current marketplace.
---

# Ideate Complementary Plugins

Look at what's already in the marketplace and suggest new plugins that would meaningfully complement it. Not random ideas — gap-filling, synergy-creating, or natural extensions of what Daniel has already built.

## Steps

1. **Map the current marketplace.** Parse `.claude-plugin/marketplace.json` and group the plugins by theme (AI tooling, dev workflow, sysadmin, media, writing, personal productivity, etc.). Note what Daniel clearly cares about based on what he's already shipped.

2. **Identify gaps and adjacencies.** For each theme cluster, ask:
   - What obvious companion is missing? (e.g. if there's an `audio-editing` plugin but no `podcast-publishing` plugin)
   - What workflow chain is incomplete? (e.g. plugins cover steps 1 and 3 but not step 2)
   - What cross-plugin glue would be useful? (e.g. a plugin that orchestrates several existing ones)
   - What newer Claude Code features (skills, hooks, MCP integrations) could unlock a plugin type Daniel hasn't tried?

3. **Also consider Daniel's broader context.** He's a tech comms specialist in Israel working on AI/automation, documentation, and workflow tooling. Plugins that lean into that profile are higher-signal than generic suggestions.

4. **Propose 5–10 concrete plugin ideas.** For each, provide:
   - **Name** (kebab-case, plugin-style)
   - **One-sentence pitch**
   - **Why it complements the marketplace** — which existing plugin(s) it pairs with, or what gap it fills
   - **Rough scope** — what slash commands / agents / skills it would ship
   - **Effort estimate** — small / medium / large
   - **Depersonalisation risk** — would this be easy to ship publicly, or is it inherently Daniel-specific? (If the latter, flag it.)

5. **Rank them** at the end: top 3 "build these next" picks with a short justification.

6. **Do not create anything.** This is ideation only — no repos, no files, no commits. If Daniel wants to proceed on an idea, he'll build the plugin repo separately and then invoke `new-plugin`.

## Guardrails

- Don't suggest plugins that duplicate existing ones (cross-check before proposing).
- Don't suggest things that are really MCP servers, standalone CLIs, or libraries rather than Claude Code plugins.
- Prefer fewer sharp ideas over a long mediocre list.
