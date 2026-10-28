# QA & Agent Sessions

6 plugins in this category. [All categories](README.md) · [Marketplace root](../../README.md)

```bash
/plugin marketplace add https://github.com/danielrosehill/Claude-Code-Plugins
```

---

#### Claude Dead Drop

Asynchronous agent-to-agent messages between Claude Code sessions working in different repositories. Agent A writes a markdown message into repo B's a2a/ folder and pings B by SendMessage if it is running; B's SessionStart hook lists open messages, B acts on them, sets any reminders the message asks for in its own scheduler, and records what it did in the same file. For long tasks the sender keeps one living message current (revision: counter) and asks the reader to re-check it on an interval (watch: 30m). No server and no shared meeting place: the target repo's folder is the mailbox. Breakout (an idea that needs its own new repo) and same-repo handover are message kinds.

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/Claude-Dead-Drop)

```
/plugin install dead-drop@danielrosehill
```

---

#### Claude Hopper

Claude-Hopper — skills for hopping between discrete terminal-bound Claude Code sessions on Linux. Spawn new instances (Konsole), hand off context (full / clipboard / with-tasks), resume from handovers, and pick up leftover work.

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/Claude-Hopper)

```
/plugin install session-hopper@danielrosehill
```

---

#### Claude PA

Passive-aggressive PA system. Claude barks status updates over a speaker; if ignored, escalates across the house via Home Assistant or MQTT. Includes pre-recorded voice packs, RGB signal bulb, full-screen flash overlay, and a quiet-mode skill that translates natural-language pause/schedule requests.

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/Claude-PA)

```
/plugin install passive-aggressive-pa@danielrosehill
```

---

#### Claude Rudder

Claude-Rudder — collection of utilities to smoothen Claude Code UX. Context-gate workflow, log/blocker capture, plugin/MCP primitives, repo & docs spawning, and the canonical user-data storage convention. (Session-hopping skills moved to Claude-Hopper.)

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/Claude-Rudder)

```
/plugin install rudder@danielrosehill
```

---

#### Eval Runner

Scaffolding, running, documenting, and publishing AI evaluations. Ships skills and commands for setting up eval workspaces, creating custom evals (or adapting existing frameworks/benchmarks), running them, and publishing evals or datasets. Bundles a curated ground-truth list of open-source eval tools and benchmarks as a reference data source.

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/Claude-Eval-Runner-Plugin)

```
/plugin install eval-runner@danielrosehill
```

---

#### Session Restore

Terminal crashed? Reopen the lost Claude Code sessions: finds the ones that died together and resumes each in its repo, in one Konsole window of split panes (or tabs, or windows). Also keeps Konsole asking before a window close kills them.

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/Session-Restore)

```
/plugin install session-restore@danielrosehill
```

---
