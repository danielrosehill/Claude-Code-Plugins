# Research & Learning

12 plugins in this category. [All categories](README.md) · [Marketplace root](../../README.md)

```bash
/plugin marketplace add https://github.com/danielrosehill/Claude-Code-Plugins
```

---

#### Air Quality Toolkit

Look up current and historical air quality, calculate AQI from raw pollutant readings, and run modelling utilities. Defaults to WAQI with fallbacks to OpenAQ and AireLibre.

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/Air-Quality-Toolkit-Plugin)

```
/plugin install air-quality-toolkit@danielrosehill
```

---

#### Geopol Sim

Thin orchestrator for geopolitical forecasting simulations. Scaffolds, runs, bundles, and grades simulations from multiple decoupled upstream templates (lean LLM-council and snowglobe-style actor-simulation variants).

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/Geopol-Sim-Plugin)

```
/plugin install geopol-sim@danielrosehill
```

---

#### Jewish Texts Reference

Look up Jewish texts and references via the Sefaria MCP server — Tanakh, Talmud, Mishnah, Halakha, Kabbalah, commentary, dictionaries, and topics. Includes nikkud add/strip skills (Dicta nakdan + removenikud APIs, offline regex, unikud fallback).

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/Jewish-Texts-Reference-Plugin)

```
/plugin install jewish-texts-reference@danielrosehill
```

---

#### Jewish Utilities

Misc Jewish utility skills: shabbat candle-lighting/havdalah, zmanim (GR"A + MG"A), parsha-of-the-week, Hebrew/Gregorian date conversion (sunset-aware), upcoming holidays (IL/diaspora), and daf yomi. Wraps zmanim-mcp-server and hebcal MCP. Onboarding captures location for halachic-time skills. Companion to jewish-texts-reference.

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/Claude-Jewish-Utilities-Plugin)

```
/plugin install jewish-utilities@danielrosehill
```

---

#### Knowledge Documentation

Knowledge documentation — index, cross-link, build taxonomy, version docs, with wiki/resource-library/process-docs/experiment-report variants.

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/Claude-Knowledge-Documentation-Plugin)

```
/plugin install knowledge-documentation@danielrosehill
```

---

#### Legal Investigative

Legal and investigative — log evidence, analyze documents, redact, generate briefs, with legal-research/evidence/osint/document-analysis variants.

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/Claude-Legal-Investigative-Plugin)

```
/plugin install legal-investigative@danielrosehill
```

---

#### Report Analyst

Skeptical analyst toolkit for long reports — READ/SKIM/SKIP verdicts, structured extraction (arguments, findings, stats, case studies, key snippets), and an opinionated executive summary. Built-in Jaded Report Reader persona that refuses credit for filler.

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/Claude-Report-Analyst-Plugin)

```
/plugin install report-analyst@danielrosehill
```

---

#### Research Space

Research — source log, summarize, deep-dive, export, with deep-research/technical/osint/georeaction/stack/ecosystem/competitor/purchasing/general-research-workspace/obsidian-vault variants. The obsidian-vault variant scaffolds the research loop as a working Obsidian vault (committed .obsidian/ config, frontmatter schema, wikilinks, templates, canvas). Includes a 30-agent tech research team for hardware/software stack evaluations (folded in from Claude-Tech-Research-Team).

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/Claude-Research-Space-Plugin)

```
/plugin install research-space@danielrosehill
```

---

#### Social Feedback

Check what people are actually saying about a topic, product, or provider by searching curated social-discourse sources (Reddit, Hacker News, Stack Exchange, Trustpilot, YouTube, Lobsters).

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/Social-Feedback-Plugin)

```
/plugin install social-feedback@danielrosehill
```

---

#### Spec-Led Certification

Choose a professional certification specification-first rather than market-first. create-workspace stands the search up as a private GitHub repo instantiated from the Spec-Led-Certification template, so it survives the machine and its git history shows when the scorecard was frozen relative to when the research ran. Three entry points for the three situations — start-search onboards and runs the full intake, rerun-search archives the previous run and reports what moved in the market, update-profile changes what is stored about you and marks the scorecard stale. Intake writes five dated profile files — subject, current position read from evidence, learning preferences, objectives and standing positions, money and time — a weighted scorecard is derived from those alone and frozen before any credential is looked up, then candidates are scored against it with a source tier and confidence tag on every number. Hard requirements exclude rather than score down. Emits a ranked comparison and a Typst PDF whose figures are computed from the CSVs at compile time. All state is written to the working directory, never to an agent memory store.

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/spec-led-certification-plugin)

```
/plugin install spec-led-certification@danielrosehill
```

---

#### Teach This Repo

Uses a real code repository in reverse for developer education: assesses the learner's profile, builds a teaching plan grounded in the repo, writes lessons and file-by-file analyses with code samples drawn from the source, supports interactive Q&A, and typesets any of it as a PDF via Typst.

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/Claude-Teach-This-Repo-Plugin)

```
/plugin install teach-this-repo@danielrosehill
```

---

#### Test Project Ideator

Generates specifications for practice/dummy development projects tailored to the user's learning objectives, technology stack, and proficiency level in each language or tool.

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/Claude-Test-Project-Ideator-Plugin)

```
/plugin install test-project-ideator@danielrosehill
```

---
