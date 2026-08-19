# Regional

4 plugins in this category. [All categories](README.md) · [Marketplace root](../../README.md)

```bash
/plugin marketplace add https://github.com/danielrosehill/Claude-Code-Plugins
```

---

#### Israel Agent Skills

Claude Code agent skills for Israel and Hebrew-specific workflows: Hebrew translation, Hebrew typography, emergency readiness utilities, and regional lookups.

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/Claude-Israel-Agent-Skills-Plugin)

```
/plugin install israel-agent-skills@danielrosehill
```

---

#### Israel Opening Hours

Check opening hours for Israeli businesses, including hours stated relative to Shabbat and yom tov. Combines Google Business and easy.co.il for stated hours with Hebcal candle-lighting/havdalah times, resolving phrasing like 'reopens an hour after Shabbat' into concrete clock times. Bundles 56 Israeli locations with verified per-city candle-lighting customs.

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/Claude-Israel-Opening-Hours-Plugin)

```
/plugin install israel-opening-hours@danielrosehill
```

---

#### Netek Disconnect

Cancel Israeli service subscriptions (ניתוק) through netek.co.il — mobile, internet, landline, TV, international calling, water bars, newspapers and credit cards across 55 providers. Resolves the provider and exact Hebrew service string, validates the Israeli ID checksum and address, shows the exact request before sending, and submits only on explicit confirmation. Falls back to filling the form in Chrome when the API changes. Uses Netek's own private, undocumented backend — not a published API.

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/netek-disconnect-plugin)

```
/plugin install netek-disconnect@danielrosehill
```

---

#### RTL Email

Send email in right-to-left scripts (Hebrew, Arabic, Farsi, Urdu) that actually renders RTL. Plain-text email carries no direction metadata, so RTL bodies render LTR in many clients and multi-part numbers like account references reorder. Ships dir=rtl HTML templates, separate personal and business send skills inheriting saved signature profiles, and one-time signature setup. Works with Google Workspace MCP or Resend.

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/Claude-RTL-Email)

```
/plugin install rtl-email@danielrosehill
```

---
