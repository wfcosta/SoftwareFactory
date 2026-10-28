# GSF policy

This is the repository's operational factory policy at `.gsf/GSF_CONFIG.md`, not application configuration. Parse its single YAML block and validate the resulting data using `.gsf/state/config-contract.md`. All configured paths, check paths/directories and protected-path patterns resolve from the repository root, not this file's directory. Policy changes require the authority procedure in `.gsf/agents/WORKER_CONTRACT.md`; editing this file does not grant authority to an active job.

```yaml
factory: Generic Software Factory
version: "1.0.0"
protocol: event-driven
profile: framework
base_branch: main
checks:
  - kind: skill
    path: .gsf/skills/verify-gsf/SKILL.md
protected_paths:
  - tests/**
  - "**/*.test.*"
  - .gsf/GSF_CONFIG.md
  - .gsf/GSF_CONSTRAINTS.md
  - .gsf/state/**
required_reviewers:
  - code
  - security
surface_reviewers:
  - ui
  - ux
autonomy:
  publish_pr: false
  merge_pr: false
  deploy: false
paths:
  agents: .gsf/agents
  skills: .gsf/skills
  templates: .gsf/templates
  jobs: .gsf/jobs
  constraints: .gsf/GSF_CONSTRAINTS.md
```
