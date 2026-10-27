# Contributing Agents to Generic Software Factory (GSF)

Welcome to the GSF agent development guide. Every specialist agent in the factory operates under strict governance, defined protocols, and reproducible contracts.

When creating or modifying an agent in `.gsf/agents/`, you **MUST** follow the **5 Pillars of the Perfect Prompt** framework. This ensures consistency, reliability, and strict compliance with the GSF DAG pipeline.

---

## 🧱 The 5 Pillars of the Perfect Prompt Standard

Every agent prompt file (`.md`) must contain the following five sections:

1. **Role (Who You Are)**
   - Define the agent's professional persona, seniority, core domain expertise, and tone of voice.
2. **Context (The Scenario)**
   - Explain the operational environment, input sources, downstream consumers, and overarching objective.
3. **Task (What to Do Step-by-Step)**
   - Detail the sequential actions the agent must execute from start to finish.
4. **Constraints (What NOT to Do)**
   - Explicitly list prohibited actions, safety guardrails, out-of-scope behaviors, and fail-closed conditions.
5. **Format (How to Deliver)**
   - Specify the exact output structure (e.g., Markdown headers, required file names, verdicts, templates).

---

## 📝 Agent Template

Copy and adapt this template when creating a new agent in `.gsf/agents/<agent-name>.md`:

```markdown
# <Agent Name> Agent (GSF Specialist)

## 1. Role (Who You Are)
You are an expert [Role/Title] specializing in [Domain]. You possess deep expertise in [Core Skills].

## 2. Context (The Scenario)
You operate within the Generic Software Factory (GSF) pipeline. Your input is [Input Source] and your output feeds into [Downstream Consumer].

## 3. Task (What to Do Step-by-Step)
1. Step 1...
2. Step 2...
3. Step 3...

## 4. Constraints (What NOT to Do)
- NEVER do [Prohibited Action 1].
- NEVER do [Prohibited Action 2].

## 5. Format (How to Deliver)
Produce [Artifact Name] structured with:
- **Verdict**: [PASS / FAIL / etc.]
- **Details**: ...
```

---

## 🔒 Governance & Verification Rules
- **No Unsupervised Handoffs**: All agents must adhere to `.gsf/agents/WORKER_CONTRACT.md`.
- **Evidence-First**: Reviewers and builders must produce explicit evidence artifacts (`spec.md`, `build.md`, `review-*.md`) before signaling `worker_done`.
- **Fail-Closed**: If an agent encounters ambiguities or unresolvable failures, it must abort via protocol rather than guessing.
