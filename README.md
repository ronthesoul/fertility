# Fertility

🧪 **Fertility** is a lightweight Bash-based project scaffolding tool designed to help you set up a clean, structured, and optionally Git-initialized workspace for your next script or application.

---

## 📦 Features

- Interactive CLI project creation
- Project path resolution (supports `~`, relative, absolute)
- Optional Git initialization
- Optional SSH-based GitHub repository connection
- Pipenv-based virtual environment setup (`.venv`)
- Interactive package selection with distro-aware installation (Debian, Fedora, Arch)
---

## ⚙️ Installation

Use the following one-liner to install and set up the tool:

```bash
mkdir -p ~/fertility && cd ~/fertility && curl -o fertility.sh https://raw.githubusercontent.com/ronthesoul/fertility/main/fertility.sh && chmod +x fertility.sh
```
📁 Example Project Structure
```
my-project/
├── src/
│   └── app.py
├── lib/
│   └── .placeholder
├── config/
│   └── .placeholder
├── .gitignore
├── CONTRIBUTORS.md
├── README.md
├── Pipfile
└── .venv/
```
