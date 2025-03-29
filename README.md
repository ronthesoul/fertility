## 🧪 Fertility

**Fertility** is a lightweight Bash-based project scaffolding tool designed to help you set up a clean, structured, and optionally Git-initialized workspace for your next script or application.

---

## 📦 Features

- Interactive CLI project creation
- Optional Git initialization
- Optional SSH-based GitHub repository connection
- Pipenv-based virtual environment setup (`.venv`) and install pip packages
- Interactive package selection with distro-aware installation (Debian, Fedora, Arch)
- Gives an option to download a coming soon template. 
---

## ⚙️ Installation

Use the following one-liner to install and set up the tool:

```bash
mkdir -p ~/fertility && cd ~/fertility && curl -o fertility.sh https://raw.githubusercontent.com/ronthesoul/fertility/main/fertility.sh && chmod +x fertility.sh
```
📁 Example Project Structure
```
my_project/
├── config
├── CONTRIBUTORS.md
├── lib
├── Pipfile
├── Pipfile.lock
├── README.md
└── src
    └── my_project
        ├── app.py
        ├── static
        │   ├── assets
        │   │   ├── favicon.ico
        │   │   ├── img
        │   │   │   └── bg-mobile-fallback.jpg
        │   │   └── mp4
        │   │       └── bg.mp4
        │   ├── css
        │   │   └── styles.css
        │   └── js
        │       └── scripts.js
        └── templates
            └── index.html
```
---
## 🔧 Prerequisites
-  **Shell**: Bash (must be installed)
-  **Python3**: Must use python3
-  **Git** Must have git
---

## 👤 Author
Created by [ronthesoul](https://github.com/ronthesoul).
