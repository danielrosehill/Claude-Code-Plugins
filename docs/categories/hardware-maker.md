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

Print labels from Claude Code on Brother QL and P-touch label printers on Linux. Discovers printers over mDNS, USB and CUPS and keeps a machine-local registry so later prints can name one; renders text and QR labels to the pixel canvas of the loaded DK or TZe media; previews without touching the printer, because brother_ql converts and transmits in a single step with no dry run. Ships a media catalogue of DK and TZe product codes, reusable label templates in the user's data directory, and a Linux driver-install skill covering brother_ql, ptouch-print, mDNS and CUPS. Zebra and DYMO are discovered and registered but not yet printable. Also bundles the original streamable-HTTP MCP server for P-touch setups built around a USB print bridge.

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
