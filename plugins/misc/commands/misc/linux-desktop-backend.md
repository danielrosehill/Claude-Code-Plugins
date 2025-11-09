This repo contains a Linux desktop app which requires the persistent storage of user provided variables.

We should integrate a proper backend that adheres to best standards in Linux desktop app development:

## Best Practices Overview

Persistent storage in Linux desktop apps should:

- Respect the **XDG Base Directory Specification**  
- Use **atomic writes** to avoid corruption  
- Separate **config**, **state**, and **cache** data  
- Use **SQLite** or structured files (TOML, JSON, etc.) as appropriate  
- Avoid polluting `$HOME` with dotfiles  
- Be resilient to multiple instances and safe during shutdown  

---

## 2. Directory Layout (XDG Spec)

Follow the XDG Base Directory Specification for storing user-specific files.

| Type             | Default Path                          | Example Usage                      |
|------------------|---------------------------------------|------------------------------------|
| Config           | `~/.config/<app>/`                    | User preferences, themes           |
| Data (state)     | `~/.local/share/<app>/`               | Databases, runtime state           |
| Cache            | `~/.cache/<app>/`                     | Rebuildable cache, temp files      |
| Logs             | `~/.local/state/<app>/logs/` (optional) | Log files                          |
| System defaults  | `/etc/xdg/<app>/`                     | System-wide default configs        |

Respect environment overrides:  
`$XDG_CONFIG_HOME`, `$XDG_DATA_HOME`, `$XDG_CACHE_HOME`.

---

## 3. Storage Mechanisms

### **3.1 Lightweight Configuration (human-editable)**

Use **TOML** or **INI** for settings users may edit manually.  
Example: `~/.config/myapp/config.toml`

**TOML Example:**
```toml
[ui]
theme = "dark"
font_size = 12

[network]
timeout = 10
use_proxy = false
````

---

### **3.2 Machine State (internal JSON)**

For app-managed state, store as JSON under `~/.local/share/<app>/`.

Example: `~/.local/share/myapp/state.json`

```json
{
  "last_session": "2025-10-20T10:00:00Z",
  "window_size": [1280, 720],
  "recent_files": ["/home/daniel/project1", "/home/daniel/project2"]
}
```

---

### **3.3 Structured / Relational Data**

Use **SQLite** for larger or structured data (history, cached objects, indexed content, etc.).

Example: `~/.local/share/myapp/appdata.sqlite`

* Lightweight and dependency-free
* Excellent read/write concurrency for desktop workloads
* Supports migrations (e.g., via Alembic, SQLAlchemy, or manual schema versioning)

Schema example:

```sql
CREATE TABLE IF NOT EXISTS user_prefs (
    key TEXT PRIMARY KEY,
    value TEXT,
    updated_at TEXT DEFAULT CURRENT_TIMESTAMP
);
```

---

### **3.4 Caches**

For rebuildable or transient data, use `~/.cache/<app>/`.
Examples: compiled thumbnails, temp files, download cache.

Always assume cache is **deletable at any time**.

---

### **3.5 Secrets / Tokens**

Do **not** store sensitive data in your config files.
Use **GNOME Keyring** or **libsecret** via bindings:

* Python: `keyring` library
* C / C++: `libsecret` API
* Electron / Node: `keytar` module

---

## 4. Atomic Writes & Safety

* **Atomic saves:** write to a temp file → `fsync` → `rename` into place.
* **Locking:** use advisory file locks for concurrent writes.
* **Backup rotation:** keep one previous version (e.g., `config.toml.bak`).
* **Versioning:** include a `config_version` key and handle migrations on load.

---

## 5. Language Integration Examples

### **Python Example**

```python
from platformdirs import PlatformDirs
import tomllib, tomli_w, json, sqlite3, tempfile, os
from pathlib import Path

APP = "myapp"
dirs = PlatformDirs(APP)

cfg_dir = Path(dirs.user_config_dir)
data_dir = Path(dirs.user_data_dir)
cfg_dir.mkdir(parents=True, exist_ok=True)
data_dir.mkdir(parents=True, exist_ok=True)

# Config TOML
cfg_path = cfg_dir / "config.toml"
config = {"ui": {"theme": "dark"}, "network": {"timeout": 10}}
if cfg_path.exists():
    config.update(tomllib.loads(cfg_path.read_bytes()))
tmp = tempfile.NamedTemporaryFile(delete=False, dir=cfg_dir)
tmp.write(tomli_w.dumps(config).encode()); tmp.flush(); os.fsync(tmp.fileno()); tmp.close()
os.replace(tmp.name, cfg_path)

# JSON state
state_path = data_dir / "state.json"
state_path.write_text(json.dumps({"last_run": "2025-10-20"}))

# SQLite database
db_path = data_dir / "myapp.sqlite"
conn = sqlite3.connect(db_path)
conn.execute("CREATE TABLE IF NOT EXISTS items(id INTEGER PRIMARY KEY, name TEXT)")
conn.commit(); conn.close()
```

---

### **Node.js Example**

```js
import fs from "fs/promises";
import { join } from "path";
import os from "os";

const home = process.env.XDG_CONFIG_HOME || join(os.homedir(), ".config");
const cfgDir = join(home, "myapp");
await fs.mkdir(cfgDir, { recursive: true });

const cfgPath = join(cfgDir, "config.toml");
const tmpPath = join(cfgDir, `.config.toml.tmp-${process.pid}`);
await fs.writeFile(tmpPath, 'ui = { theme = "dark" }\n');
await fs.rename(tmpPath, cfgPath); // atomic replace
```

---

## 6. Decision Guide

| Use Case                  | Recommended Storage |
| ------------------------- | ------------------- |
| User preferences (simple) | TOML / INI          |
| Internal app state        | JSON                |
| Complex structured data   | SQLite              |
| Temporary data            | Cache directory     |
| Secrets / tokens          | Keyring (libsecret) |

---

## 7. Packaging Considerations

If you later package as **Snap** or **Flatpak**, continue to use these paths relative to `$XDG_*` variables.
The sandbox will remap them internally, preserving user data between updates.

---

## 8. Checklist

✅ Follows XDG directory spec
✅ Uses atomic file operations
✅ Distinguishes config/data/cache
✅ Supports JSON, TOML, and SQLite
✅ Uses system keyring for secrets
✅ User-editable, safe, recoverable

---

## 9. Future Expansion

Later, the app can add:

* Schema migrations for SQLite
* Config version auto-upgrades
* CLI flags or ENV var overrides
* Background sync to cloud storage
* Keyring-based authentication tokens

---

**Goal:** Clean, predictable, Linux-native persistence that works with backups, sync, and sandboxed environments.

