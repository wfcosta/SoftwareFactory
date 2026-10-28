# GSF Rigorous Execution Guide (Markdown-First & Low-Model Optimized)

This guide details the pure Markdown architecture of the Generic Software Factory (GSF), engineered to guarantee rigorous execution even on lower-reasoning models.

## Architecture Philosophy
- **Zero Imperative Code**: No `.sh`, `.py`, or `.js` runtimes. All logic, playbooks, principles, and skills live in structured Markdown (`.md`), making them universally readable by any LLM harness.
- **Deterministic Checklists**: Formatted with explicit steps (`1, 2, 3`) and strict constraints (`MUST`, `NEVER`) so lower-reasoning models follow protocols reliably without drift.
- **Skill-Based Execution**: All execution flows through skills with proper frontmatter, references, and structured procedures.

## Structure

### Skills (`.gsf/skills/`)
Modular markdown skill definitions (`SKILL.md`) for rigorous execution:

**Main Routing Skill:**
- **gsf-mode**: The primary entry point. Routes to 23 playbooks, invokes supporting skills, and enforces principles. Contains all non-negotiables, autonomy rules, and delegation logic.

**Job Initialization:**
- **gsf-run**: Initializes job workspace, validates environment, replaces the previous script-based `run.sh`.

**Design & Architecture:**
- **architect**: Parallel design exploration with references/ subdirectory containing templates (design-red-flags.md, rationale-template.md, runner-prompt.md)
- **arena**: N parallel candidates with base selection and grafting
- **how**: Architectural explanations with references/ (explorer-prompt.md, explainer-prompt.md)
- **why**: Motivation investigation with references/ (investigator-prompt.md, synthesizer-prompt.md, epistemics.md)

**Review & Verification:**
- **interrogate**: Adversarial review for contested designs
- **blast-radius**: Impact assessment before changes
- **tdd**: Test-driven development
- **swarm**: Parallel workers across different slices
- **benchmark-checklist**: Performance measurement validation

**Writing & Communication:**
- **unslop**: Remove AI writing tells
- **technical-writing**: Diátaxis framework documentation
- **no-comments**: Self-documenting code
- **gsf-help**: Navigation assistance

### Playbooks (`.gsf/skills/gsf-mode/playbooks/`)
23 step-by-step operational playbooks, each with explicit steps and success criteria:

**Investigation & Analysis:**
- investigation.md: Read-only questions about how things work
- runtime-forensics.md: Diagnose live symptoms from instrumentation
- trace-forensics.md: Diagnose captured profiling artifacts

**Implementation:**
- bug-fix.md: Reproduce, root-cause, and fix with runtime evidence
- feature.md: New behavior from named data shape
- refactoring.md: Behavior-preserving structural changes
- perf-issue.md: Trace and improve measured slowness
- hillclimb.md: Sustained metric improvement loop
- prototype.md: Throwaway sketches for design decisions
- visual-parity.md: Pixel-exact UI equivalence

**Meta & Orchestration:**
- authoring-a-skill.md: Writing or editing SKILL.md files
- eval.md: Blinded skill/prompt evaluation
- babysit.md: Drive PR to merge-ready
- shipping.md: Verify and land green stacks
- autonomous-run.md: Drive long tasks to completion
- orchestrate.md: Multi-day, multi-PR coordination
- autopilot-full.md: Run independent PRs to merged
- autopilot-stack.md: Build and verify PRs for operator review
- session-pickup.md: Resume prior in-flight work
- pause-safely.md: Suspend work cleanly
- multi-phase-plan.md: Work spanning phases or stacked PRs
- worktree-cleanup.md: Prune merged worktrees
- opening-a-pr.md: Open ready PR from ordered commits

### Principles (`.gsf/skills/`)
24 foundational engineering rules encoded as individual skills:

**Core (10):**
- attack-the-premise: Test shared premises before assuming
- boundary-discipline: Guards at boundaries, pure business logic
- build-the-lever: Build tools, don't do by hand
- encode-lessons-in-structure: Encode repeated instructions as structure
- exhaust-the-design-space: Build 2-3 competing prototypes
- experience-first: User delight over implementation convenience
- explain-the-number: Understand what limits a measurement
- fix-root-causes: Trace symptoms to first wrong turn
- foundational-thinking: Types before logic, concurrency before locks
- laziness-protocol: Smallest change, bias to deletion

**Architecture (6):**
- model-the-domain: Encode domain in structures, not conditionals
- make-operations-idempotent: Converge to same end state
- migrate-callers-then-delete: Migrate and delete in one wave
- minimize-reader-load: Collapse layers, shrink scope
- never-block-on-the-human: Proceed on reversible work
- outcome-oriented-execution: Converge on target, no throwaway states
- redesign-from-first-principles: Redesign as if requirement was day-one
- separate-before-serializing-shared-state: Eliminate sharing first
- sequence-verifiable-units: Small verifiable units
- subtract-before-you-add: Remove dead weight first
- type-system-discipline: Make illegal states unrepresentable

**Verification (5):**
- prove-it-works: Verify against real artifact
- sequence-verifiable-units: Break work into verifiable units
- test-behavior-not-implementation: Assert observable behavior
- explain-the-number: Understand measurement limits

**Delegation (2):**
- guard-the-context-window: Route bulk to subagents
- never-block-on-the-human: Don't ask on reversible work

**Meta (1):**
- encode-lessons-in-structure: Encode patterns as structure

### Agents (`.gsf/agents/`)
30 specialized roles with 5-pillar prompts:
- All agents attach the **gsf-mode** skill for rigorous execution
- Orchestrator: Job coordination via gsf-run skill
- Intake: Risk assessment with blast-radius skill
- Spec-Writer: Investigation with how/why skills
- Builder: Implementation with appropriate playbook (feature/bug-fix/refactoring)
- Reviewers: Interrogate skill for adversarial review
- Approver: Evidence verification with prove-it-works

## Execution Flow

1. **Initialization**: Orchestrator invokes **gsf-run** skill to create job workspace
2. **Routing**: Orchestrator attaches **gsf-mode** skill and selects appropriate playbook
3. **Execution**: Workers execute with **gsf-mode** attached, routing to skills as needed
4. **Evidence**: All reports written to job workspace
5. **Verification**: Approver reviews all evidence before publication

## Skill Frontmatter

Every SKILL.md must include:
```yaml
---
name: skill-name
description: When to use this skill
disable-model-invocation: true  # For skills that manage subagents
---
```

Optional fields:
- `icon`: UI display icon
- `color`: UI display color

## Skill References

Skills that need templates or prompts include a `references/` subdirectory:
- architect: design-red-flags.md, rationale-template.md, runner-prompt.md
- how: explorer-prompt.md, explainer-prompt.md
- why: investigator-prompt.md, synthesizer-prompt.md, epistemics.md

## Constraints for Lower-Reasoning Models

1. **Explicit Steps**: Numbered lists (1, 2, 3) not bullet points
2. **No Ambiguity**: No "you might want to", "consider", "optionally"
3. **Clear Conditions**: Explicit if/then logic
4. **Deterministic Outcomes**: Each step has a clear success/failure criterion
5. **No Nested Choices**: Flatten decision trees into sequential steps

## Verification

Before claiming a task is complete:
1. All skill files have proper frontmatter
2. All playbooks have explicit numbered steps
3. All principles are encoded as skills
4. All agents attach gsf-mode skill
5. No script files remain in .gsf/
6. Documentation reflects the skill-based architecture
