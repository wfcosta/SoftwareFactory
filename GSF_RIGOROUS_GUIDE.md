# GSF Rigorous Execution Guide (Markdown-First & Low-Model Optimized)

This guide details the pure Markdown architecture of the Generic Software Factory (GSF), engineered to guarantee rigorous execution even on lower-reasoning models.

## Architecture Philosophy
- **Zero Imperative Code**: No `.sh`, `.py`, or `.js` runtimes. All logic, playbooks, principles, and skills live in structured Markdown (`.md`), making them universally readable by any LLM harness (Cursor, Claude Code, etc.).
- **Deterministic Checklists**: Formatted with explicit steps (`1, 2, 3`) and strict constraints (`MUST`, `NEVER`) so lower-reasoning models follow protocols reliably without drift.

## Structure
1. **Skills (`.gsf/skills/`)**: Modular markdown skill definitions (`SKILL.md`) for rigorous execution, architecture, TDD, and setup.
2. **Principles (`.gsf/principles/`)**: 24 foundational engineering rules.
3. **Playbooks (`.gsf/playbooks/`)**: 23 step-by-step operational playbooks.
4. **Agents (`.gsf/agents/`)**: 30 specialized roles and worker contracts.
