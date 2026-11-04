# QA & Agent Sessions

6 plugins in this category. [All categories](README.md) · [Marketplace root](../../README.md)

```bash
/plugin marketplace add https://github.com/danielrosehill/Claude-Code-Plugins
```

---

#### AI Eval

Evaluate AI models for a real job, starting from start-eval: define the objective and workload, draw candidates from the live OpenRouter catalogue, and run wide and shallow (many models, about two outputs each). Covers in-repo and agent-run eval spaces, framework CLIs, image, RAG, agent, speech and regression evals, private annotation and human feedback Spaces, and findings through to articles.

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/AI-Eval)

```
/plugin install ai-eval@danielrosehill
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

#### Multisession

Start fresh or hand off: split the pane, launch a new named Claude session and give it the next task, or hand work to a running peer. Payload goes to a local or Google Drive agent-to-agent space and is sent with the built-in SendMessage; this session's Konsole pane then closes. Also asynchronous a2a/ mailbox messages between repos.

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/Multisession)

```
/plugin install multisession@danielrosehill
```

---

#### Session Restore

Terminal crashed? Reopen the lost Claude Code sessions: finds the ones that died together and resumes each in its repo, in one Konsole window of split panes (or tabs, or windows). Also keeps Konsole asking before a window close kills them.

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/Session-Restore)

```
/plugin install session-restore@danielrosehill
```

---
