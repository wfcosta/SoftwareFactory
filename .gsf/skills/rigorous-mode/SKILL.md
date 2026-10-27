# Skill: Rigorous Execution Mode

**Trigger:** Invoked when starting any rigorous engineering task.
**Target Audience / Model Compatibility:** Optimized for all reasoning tiers (including lower-reasoning models) via explicit deterministic checklists.

## Execution Checklist (Strictly Follow in Order)
1. **Step 1: Load Principles**
   - Read all principle files in `.gsf/principles/` to align with architectural constraints.
2. **Step 2: Select Playbook**
   - Match user task to a playbook in `.gsf/playbooks/` (e.g., `investigation.md`, `bug-fix.md`, `refactoring.md`).
3. **Step 3: Execute Steps**
   - Follow playbook steps verbatim. Never skip verification or root-cause tracing.
4. **Step 4: Prove It Works**
   - Verify output against real runtime artifacts before declaring completion.
