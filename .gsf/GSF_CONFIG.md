# GSF policy

This is the repository's operational factory policy at `.gsf/GSF_CONFIG.md`, not application configuration. Parse its single YAML block and validate the resulting data using `.gsf/state/config-contract.md`. All configured paths, check paths/directories and protected-path patterns resolve from the repository root, not this file's directory. Policy changes require the authority procedure in `.gsf/agents/WORKER_CONTRACT.md`; editing this file does not grant authority to an active job.

```yaml
factory: Generic Software Factory
version: "2.0.0"
protocol: event-driven
profile: framework
base_branch: main
checks:
  - kind: skill
    path: .gsf/skills/verify-gsf/SKILL.md
    effect: local-write
    target: null
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
environments: {}
execution_limits:
  max_parallel_tasks: 4
  max_attempts_without_progress: 2
  max_elapsed_minutes: 60
  max_cost: null
  currency: USD
evidence:
  store: job
  retention_days: 30
  location: .gsf/jobs
paths:
  agents: .gsf/agents
  skills: .gsf/skills
  templates: .gsf/templates
  jobs: .gsf/jobs
  constraints: .gsf/GSF_CONSTRAINTS.md
```

The empty environment allowlist and false autonomy permissions deny external changes. Check effect/target declarations do not grant authority or enforce isolation. Limits and retention require actual host observation/control; null cost is unknown/unmetered, not free. Existing jobs keep their frozen accepted version and instructions until an explicitly authorized upgrade.

Any future nonnull max_cost is an integer in the currency's ISO 4217 minor units (USD cents), never a floating-point policy amount. Actual meter/currency exponent and conservative conversion must be observed before accepting a cap.
