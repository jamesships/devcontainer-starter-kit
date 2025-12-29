# 📦 Devcontainer Starter Kit

> **Ready-to-use devcontainer configurations for popular stacks.**  
> Stop debugging container setup. Clone, open, code.

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![VSCode](https://img.shields.io/badge/VSCode-DevContainers-007ACC)](https://code.visualstudio.com/docs/devcontainers/containers)

---

## 🎯 Why This Exists

Devcontainers are amazing for consistent dev environments, but setup is painful:

- ❌ Complex multi-runtime configurations
- ❌ Bloated images with unnecessary tools
- ❌ Performance issues with file syncing
- ❌ Scattered documentation for features

**This kit solves that.** Optimized configs you can use in 30 seconds.

---

## 📦 Available Templates

| Template | Stack | Features | Status |
|----------|-------|----------|--------|
| [node-typescript](#node-typescript) | Node.js + TypeScript | ESLint, Prettier, pnpm | ✅ Ready |
| [python-fastapi](#python-fastapi) | Python + FastAPI | Ruff, mypy, pytest | ✅ Ready |
| [fullstack-next](#fullstack-next) | Next.js + PostgreSQL | Prisma, Docker Compose | ✅ Ready |
| [rust](#rust) | Rust | Cargo, clippy, rustfmt | ✅ Ready |
| [go](#go) | Go | golangci-lint, air | ✅ Ready |

---

## ⚡ Quick Start

### Option 1: Copy a Template

1. Browse `templates/` in this repo
2. Copy the entire template folder
3. Rename to `.devcontainer` in your project root
4. Open in VS Code → "Reopen in Container"

### Option 2: Clone & Select

```bash
git clone https://github.com/YOUR_USERNAME/devcontainer-starter-kit.git
cp -r devcontainer-starter-kit/templates/node-typescript/.devcontainer your-project/
```

---

## 📁 Template Structure

Each template includes:

```
template-name/
├── .devcontainer/
│   ├── devcontainer.json    # Main configuration
│   ├── Dockerfile           # Custom image (when needed)
│   └── post-create.sh       # Setup script
└── .vscode/
    ├── settings.json        # Workspace settings
    └── extensions.json      # Recommended extensions
```

---

<a name="node-typescript"></a>
## 🟢 Node.js + TypeScript

**Perfect for:** React, Next.js, Express, NestJS

**Features:**
- Node.js 20 LTS
- TypeScript 5.x
- pnpm (faster than npm)
- ESLint + Prettier preconfigured
- Git hooks with Husky

**Extensions included:**
- ESLint, Prettier, TypeScript
- GitLens, Error Lens
- Docker, REST Client

---

<a name="python-fastapi"></a>
## 🐍 Python + FastAPI

**Perfect for:** REST APIs, async backends, ML services

**Features:**
- Python 3.12
- Poetry package management
- Ruff (fast linting)
- mypy strict mode
- pytest + coverage

**Extensions included:**
- Python, Pylance
- Ruff, Black
- SQLite Viewer

---

<a name="fullstack-next"></a>
## 🔷 Fullstack Next.js

**Perfect for:** Full-stack web apps with database

**Features:**
- Next.js 14
- PostgreSQL 16
- Prisma ORM
- Docker Compose setup
- Tailwind CSS

**Extensions included:**
- All from node-typescript
- Prisma, Database Client

---

<a name="rust"></a>
## 🦀 Rust

**Perfect for:** Systems programming, WASM, CLIs

**Features:**
- Rust stable (latest)
- cargo-watch for hot reload
- clippy + rustfmt
- LLDB debugging

**Extensions included:**
- rust-analyzer
- CodeLLDB, Crates

---

<a name="go"></a>
## 🔵 Go

**Perfect for:** APIs, CLIs, microservices

**Features:**
- Go 1.22+
- golangci-lint
- air for hot reload
- Delve debugger

**Extensions included:**
- Go official extension
- REST Client

---

## 🔧 Optimization Tips

All templates follow these best practices:

### Performance
```json
// devcontainer.json
{
  "mounts": [
    // Cache node_modules outside workspace for speed
    "source=project-node_modules,target=${containerWorkspaceFolder}/node_modules,type=volume"
  ]
}
```

### Security
- Non-root user by default
- Minimal base images
- Pinned dependency versions

### Developer Experience
- Consistent terminal (zsh + oh-my-zsh)
- Git configured in container
- SSH agent forwarding enabled

---

## 🤝 Contributing

Have an optimized config for a stack not covered?

1. Fork this repo
2. Add your template to `templates/`
3. Follow the structure of existing templates
4. Open a PR

---

## 📄 License

MIT License - Use freely, attribution appreciated.

---

## ⭐ Star This Repo

If these configs save you setup time, please star ⭐!

---

*Built by developers who've wasted too many hours on "works on my machine" issues.*
