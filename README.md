# Fertility

🧪 **Fertility** is a lightweight Bash-based project scaffolding tool designed to help you set up a clean, structured, and optionally Git-initialized workspace for your next script or application.

---

## 📦 Features

- Interactive project setup
- Custom directory path resolution (supports `~`, relative, or absolute paths)
- Optional Git initialization
- Generates a clean project structure (`src/`, `lib/`, `config/`, etc.)
- Interactive package installer (supports Debian, Fedora, Arch)

---

## ⚙️ Installation

Use the following one-liner to install and set up the tool:

```bash
mkdir -p ~/fertility && cd ~/fertility && curl -o fertility.sh https://raw.githubusercontent.com/ronthesoul/fertility/main/fertility.sh && chmod +x fertility.sh

📁 Example Project Structure
arduino
Copy
Edit
my-project/
├── src/
│   └── app.py
├── lib/
│   └── .placeholder
├── config/
│   └── .placeholder
├── README.md
├── .gitignore
├── CONTRIBUTORS.md
