# Contributing Agents & Dynamic Routing to GSF

Welcome to the GSF agent development guide. Every specialist agent in the factory operates under strict governance, defined protocols, and reproducible contracts.

---

## 🧭 Dynamic Routing & DAG Configuration (How Intake Decides)

Unlike rigid factories with a single hardcoded pipeline, GSF features **Dynamic Routing**. 

### How Intake Manages Delegation:
1. **Agent Discovery**: The **Intake Agent** scans `.gsf/agents/` during its initial assessment.
2. **Surface & Impact Analysis**: Based on the issue requirements, Intake evaluates which architectural domains are affected:
   - *Database changes* → Dispatches `db-specialist`
   - *Public API changes* → Dispatches `api-contract`
   - *Performance-critical paths* → Dispatches `performance`
   - *UI/UX features* → Dispatches `reviewer-ui`, `reviewer-ux`, `i18n`
   - *Auth & sensitive data* → Dispatches `reviewer-security`
3. **Custom DAG Generation**: Intake writes a custom execution graph into `decision.md`. The Orchestrator reads this plan and dynamically spawns only the required specialist workers in sequence or parallel waves.

---

## 🧱 The 5 Pillars of the Perfect Prompt Standard

Every agent prompt file (`.md`) must follow the **5 Pillars**:
1. **Role**: Persona, seniority, and domain expertise.
2. **Context**: Operational environment and workflow inputs/outputs.
3. **Task**: Sequential step-by-step actions.
4. **Constraints**: Prohibited actions and safety guardrails.
5. **Format**: Exact output structures and expected evidence artifacts.

---

## 🚀 Advanced Enterprise Factory Agents Available
- `db-specialist`: Zero-downtime database migrations & schema design.
- `api-contract`: OpenAPI/Swagger & backward-compatible REST/GraphQL contracts.
- `performance`: N+1 query profiling, memory leak detection, and benchmarks.
- `i18n`: Localization keys audit, RTL support, and hardcoded text detection.
