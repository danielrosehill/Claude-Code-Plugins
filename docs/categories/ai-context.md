# AI & Context

11 plugins in this category. [All categories](README.md) · [Marketplace root](../../README.md)

```bash
/plugin marketplace add https://github.com/danielrosehill/Claude-Code-Plugins
```

---

#### AI Engineering

Prompt engineering — craft, eval, catalog, version, search prompts, with library/factory variants.

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/Claude-AI-Engineering-Plugin)

```
/plugin install ai-engineering@danielrosehill
```

---

#### AI Model Research

Research, discover, compare, and evaluate AI models on OpenRouter — backed by the bundled Model-Scout MCP server for live catalog data with caching. Subsumes the standalone open-router-model-research plugin and the Model-Scout-MCP server. 11 skills cover lookup, capability filtering (tools, vision, audio), recommendation, head-to-head comparison, deep evaluation, workload cost projection, and finding cheaper alternatives.

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/Claude-AI-Model-Research-Plugin)

```
/plugin install ai-model-research@danielrosehill
```

---

#### ChatGPT Importer

Import a ChatGPT conversation into local files via the browser. Captures the full thread from a chatgpt.com URL, a shared link, or an official export archive, then normalizes it to JSON and renders Markdown or a styled Typst PDF with user and assistant turns marked, artifacts (canvas docs, images, code) extracted, cited sources collected, and conversation metadata recorded. Includes a two-pass redaction skill and a conversation-to-context workflow that writes transcripts into a repo's context/ folder.

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/Claude-ChatGPT-Importer-Plugin)

```
/plugin install chatgpt-importer@danielrosehill
```

---

#### Claude SOPs

Keep your own standard operating procedures — the recurring things you do a particular way — as a private, versioned library of markdown files the agent reads on demand and follows. Distinct from sop-writer, which authors printed SOP documents for other people; these are procedures an agent executes. One delimited block in your CLAUDE.md points at the library, a generated INDEX.md carries id, title and a 'use when' trigger for each procedure, and exactly one file is read once a situation matches — so a library of forty procedures costs one table to consult rather than forty resident skill descriptions. Seven skills cover setup, run, write, edit, list, retire and sync. Procedures live in ~/.claude-user-data/sops/ as flat readable files inside a private git repo, mirrored across machines; the plugin repo never holds one. Each SOP declares an autonomy level (auto, confirm, confirm-each, manual) that records a default rather than granting permission, and a last_verified date meaning the procedure was seen to work rather than that the file was edited.

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/Claude-SOPs)

```
/plugin install claude-sops@danielrosehill
```

---

#### Claude User Memory

Backend-agnostic persistent user memory for Claude Code. Ships a save/recall/commit contract with personal/work context routing; bring your own memory MCP (Pinecone, Mem0, or other) via a workspace memory-config.md.

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/Claude-User-Memory-Plugin)

```
/plugin install claude-user-memory@danielrosehill
```

---

#### CLAUDE.md Tester

Safely swap ~/.claude/CLAUDE.md for test/joke configs via symlink. Terminal-only restore that does not depend on the Claude harness, so a hostile test config can never trap you.

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/Claude-MD-Tester)

```
/plugin install claude-md-tester@danielrosehill
```

---

#### Get Toony

Convert JSON, CSV, YAML, and other structured data into TOON (Token-Oriented Object Notation) — a compact, lossless re-encoding that uses ~40% fewer tokens than JSON when fed to LLMs. Wraps @toon-format/toon and tracks the wider ecosystem (Python, Java, .NET, PHP, Rust ports).

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/Claude-Get-Toony-Plugin)

```
/plugin install get-toony@danielrosehill
```

---

#### LLM Council Creator

Scaffold new LLM Council projects from existing templates (Template, Grounded, Decide) or build bespoke council repos for specific purposes.

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/Claude-LLM-Council-Creator-Plugin)

```
/plugin install LLM-Council-Creator@danielrosehill
```

---

#### Personal Context

Builds and maintains a persistent, portable background context layer about the user — intake interview, ingestion of material they already have, gap analysis, scoped retrieval, maintenance and export. Plain markdown entries in a store the user owns, read through declared scopes and sensitivity levels; explicitly does not use model-managed memory. Ships the Portable Context Contract so issue-scoped workspaces can read it without re-asking who the person is.

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/Claude-Personal-Context-Plugin)

```
/plugin install personal-context@danielrosehill
```

---

#### Style Switcher

Persona-recipe library for swapping Claude into themed personalities (Daredevil, Jaded IT, Reluctant, Chatty, Philosophical, Operational, Dubious, Hyper Creative, Approval Needed, Visionary, Claude FM, Claude Bouncer). Each recipe ships a banner image and sound effect, and applies via either a managed block in ~/.claude/CLAUDE.md or a repo-sandbox mode that holds the user CLAUDE.md aside.

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/Claude-Style-Switcher)

```
/plugin install style-switcher@danielrosehill
```

---

#### User-Claude-MD

Manage the user-level ~/.claude/CLAUDE.md and its chunked ~/.claude/context/ directory — audit, chunk, list, and edit global Claude Code user context for token efficiency.

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/User-Claude-MD-Plugin)

```
/plugin install user-claude-md@danielrosehill
```

---
