# Generic Software Factory (GSF) — Markdown-First Rigorous Edition

An **issue-to-PR factory** running entirely on **pure Markdown agent skills, playbooks, and principles (`.gsf/`)**, designed for robust autonomous orchestration across any model tier (including lower-reasoning models).

---

## 🛠️ Installation & Setup (Pure Markdown Architecture)

No shell scripts, Python, or binary dependencies required. The factory is 100% declarative Markdown.

### 1. Copy the Factory into Your Product Repo
Copy the `.gsf/` directory directly into the root of your target repository:
```bash
cp -r .gsf/ /your/target/repo/
```

### 2. Configure Your Project (`config.json`)
Define your project build, test, and lint specifications:
```json
{
  "base_branch": "main",
  "checks": [
    "npm test",
    "npm run lint"
  ]
}
```

### 3. Using Skills & Agent Instructions
- **Rigorous Mode Skill**: Reference `.gsf/skills/rigorous-mode/SKILL.md` when starting any task.
- **Agent Fleet**: Instruct your coordinator agent using `.gsf/agents/orchestrator.md` and specialized agents (`.gsf/agents/rigorous-delegate.md`, etc.).
- **Principles & Playbooks**: Agents automatically consult `.gsf/principles/` and `.gsf/playbooks/` for rigorous, slop-free execution.
