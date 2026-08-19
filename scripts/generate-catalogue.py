#!/usr/bin/env python3
"""Generate README plugin index and docs/categories/*.md from the marketplace manifest.

The manifest at .claude-plugin/marketplace.json is the single source of truth.
Every plugin entry must carry `displayName` and `category`.

Run from the repo root:  python3 scripts/generate-catalogue.py
"""
import json
import re
import sys
from collections import OrderedDict
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
MANIFEST = ROOT / ".claude-plugin" / "marketplace.json"
README = ROOT / "README.md"
CATDIR = ROOT / "docs" / "categories"
MARKETPLACE = "danielrosehill"

# README block replaced by this script; everything outside it is hand-maintained.
START = "## Available Plugins"
END = "## Installation"


def slugify(text):
    return re.sub(r"[^a-z0-9]+", "-", text.lower()).strip("-")


def load():
    data = json.loads(MANIFEST.read_text(encoding="utf-8"))
    plugins = data["plugins"]
    missing = [p["name"] for p in plugins if not p.get("category") or not p.get("displayName")]
    if missing:
        sys.exit(f"error: missing category/displayName: {', '.join(missing)}")
    return plugins


def group(plugins):
    cats = OrderedDict()
    for p in sorted(plugins, key=lambda p: p["displayName"].lower()):
        cats.setdefault(p["category"], []).append(p)
    return OrderedDict(sorted(cats.items(), key=lambda kv: (-len(kv[1]), kv[0])))


def plugin_block(p):
    repo = p["source"]["repo"] if isinstance(p["source"], dict) else p["source"]
    return "\n".join([
        f"#### {p['displayName']}",
        "",
        p["description"],
        "",
        f"[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)]"
        f"(https://github.com/{repo})",
        "",
        "```",
        f"/plugin install {p['name']}@{MARKETPLACE}",
        "```",
        "",
        "---",
        "",
    ])


def write_category_pages(cats):
    CATDIR.mkdir(parents=True, exist_ok=True)
    for existing in CATDIR.glob("*.md"):
        existing.unlink()
    for cat, plugins in cats.items():
        lines = [
            f"# {cat}",
            "",
            f"{len(plugins)} plugin{'s' if len(plugins) != 1 else ''} "
            f"in this category. [All categories](README.md) · "
            f"[Marketplace root](../../README.md)",
            "",
            "```bash",
            f"/plugin marketplace add https://github.com/danielrosehill/Claude-Code-Plugins",
            "```",
            "",
            "---",
            "",
        ]
        lines += [plugin_block(p) for p in plugins]
        (CATDIR / f"{slugify(cat)}.md").write_text("\n".join(lines).rstrip() + "\n",
                                                   encoding="utf-8")

    index = [
        "# Plugin Categories",
        "",
        f"{sum(len(v) for v in cats.values())} plugins across {len(cats)} categories.",
        "",
        "| Category | Plugins |",
        "| --- | ---: |",
    ]
    index += [f"| [{c}]({slugify(c)}.md) | {len(v)} |" for c, v in cats.items()]
    index += ["", "[Back to the marketplace README](../../README.md)"]
    (CATDIR / "README.md").write_text("\n".join(index) + "\n", encoding="utf-8")


def readme_block(cats):
    total = sum(len(v) for v in cats.values())
    out = [
        START,
        "",
        f"**{total} plugins across {len(cats)} categories.** Browse a category below, "
        "then install any plugin with:",
        "",
        "```bash",
        f"/plugin install <plugin-name>@{MARKETPLACE}",
        "```",
        "",
        "| Category | Plugins | Contents |",
        "| --- | ---: | --- |",
    ]
    for cat, plugins in cats.items():
        by_name = sorted(plugins, key=lambda p: p["name"].lower())
        names = ", ".join(f"`{p['name']}`" for p in by_name)
        if len(names) > 160:
            shown, count = [], 0
            for p in by_name:
                if count + len(p["name"]) > 140:
                    break
                shown.append(f"`{p['name']}`")
                count += len(p["name"]) + 4
            names = ", ".join(shown) + f", … ({len(plugins) - len(shown)} more)"
        out.append(f"| **[{cat}](docs/categories/{slugify(cat)}.md)** | {len(plugins)} | {names} |")
    out += ["", "Full descriptions and per-plugin install commands live on each "
                "category page — see the [category index](docs/categories/README.md).", ""]
    return "\n".join(out)


def write_readme(cats):
    text = README.read_text(encoding="utf-8")
    start = text.index(START)
    end = text.index(END, start)
    README.write_text(text[:start] + readme_block(cats) + "\n" + text[end:], encoding="utf-8")


def main():
    plugins = load()
    cats = group(plugins)
    write_category_pages(cats)
    write_readme(cats)
    print(f"generated {len(cats)} category pages for {len(plugins)} plugins")
    for c, v in cats.items():
        print(f"  {len(v):4d}  {c}")


if __name__ == "__main__":
    main()
