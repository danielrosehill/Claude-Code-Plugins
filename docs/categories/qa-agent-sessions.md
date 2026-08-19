# QA & Agent Sessions

4 plugins in this category. [All categories](README.md) · [Marketplace root](../../README.md)

```bash
/plugin marketplace add https://github.com/danielrosehill/Claude-Code-Plugins
```

---

#### Claude Breakout

Route an idea that surfaces mid-task but does not belong to the current repository into its own repo and its own agent, without derailing the work in flight. Uses the cross-session SendMessage/ListAgents layer for a push-model handoff — the seed brief is written to disk in the new repo and the message carries a pointer to it. Companion to interrupt-claude (same-repo interruption routing) and claude-hopper (session spawning and handover); breakout splits tracks rather than work or time. WIP.

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/Claude-Breakout)

```
/plugin install breakout-claude@danielrosehill
```

---

#### Claude Hopper

Claude-Hopper — skills for hopping between discrete terminal-bound Claude Code sessions on Linux. Spawn new instances (Konsole), hand off context (full / clipboard / with-tasks), resume from handovers, and pick up leftover work.

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/Claude-Hopper)

```
/plugin install claude-hopper@danielrosehill
```

---

#### Claude PA

Passive-aggressive PA system. Claude barks status updates over a speaker; if ignored, escalates across the house via Home Assistant or MQTT. Includes pre-recorded voice packs, RGB signal bulb, full-screen flash overlay, and a quiet-mode skill that translates natural-language pause/schedule requests.

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/Claude-PA)

```
/plugin install claude-pa@danielrosehill
```

---

#### Claude Rudder

Claude-Rudder — collection of utilities to smoothen Claude Code UX. Context-gate workflow, log/blocker capture, plugin/MCP primitives, repo & docs spawning, and the canonical user-data storage convention. (Session-hopping skills moved to Claude-Hopper.)

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/Claude-Rudder)

```
/plugin install claude-rudder@danielrosehill
```

---
