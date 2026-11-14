# Hardware & Maker

4 plugins in this category. [All categories](README.md) · [Marketplace root](../../README.md)

```bash
/plugin marketplace add https://github.com/danielrosehill/Claude-Code-Plugins
```

---

#### Hardware Spec Assembly

Define hardware project BOMs with ESP32-first focus — onboarding captures location/vendors/on-hand gear, then skills for spec creation, live web research of parts (AliExpress/Adafruit/etc.), budgeting, sourcing, compatibility checks, wiring specs, PCB design starting points, assembly instructions, 3D-printable suggestions, and AI-generated mockups via fal.ai nano-banana.

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/Claude-Hardware-Spec-Assembly-Plugin)

```
/plugin install hardware-spec-assembly@danielrosehill
```

---

#### Label Printer

Design and print labels from Claude Code. Turns "four labels for the wine bottles with a wine icon" into a finished label: Iconify icon search (filled icons first), fonts by name with automatic download (IBM Plex Sans Bold by default), auto two-line wrap, icon-left/icon-top/QR layouts and saved styles, sized to the loaded media (Brother DK and TZe, NIIMBOT die-cut; live tape detection on bridge and hub printers). Prints through pluggable backends: CUPS, ptouch-print, brother_ql, a USB print bridge (P-touch or niimblue-node for NIIMBOT) or a LAN Print Hub. Printers, styles and templates live in the user's own Label-Templates repo, created from a public template. Also bundles the original P-touch MCP server.

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/label-printer-plugin)

```
/plugin install label-printer@danielrosehill
```

---

#### NFC Ops

NFC tag operations using libnfc — read, write, inspect, password-protect, and bulk-write from CSV with manual tag-by-tag feed.

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/Claude-NFC-Ops-Plugin)

```
/plugin install nfc-ops@danielrosehill
```

---

#### OBD Diagnostics

Read OBD-II data from an ELM327-class adapter, normalise it to JSON, and use it to diagnose faults and plan vehicle maintenance. WIP.

[![Repo](https://img.shields.io/badge/View-Repo-blue?logo=github)](https://github.com/danielrosehill/Claude-OBD-Diagnostics-Plugin)

```
/plugin install obd-diagnostics@danielrosehill
```

---
