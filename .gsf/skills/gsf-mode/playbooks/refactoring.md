### Refactoring

**You own the contract. The structure changes. The behavior does not.** Distinct from Feature, which adds behavior, and Bug fix, which corrects it.

If the cleanup reveals a missing feature or a real bug, split it out and ship the structural change first against the pinned contract. A redesign is allowed, but name it and route to Feature. Large or cross-cutting structural work belongs to the [figure-it-out](../../figure-it-out/SKILL.md) skill. This playbook is the focused-to-medium change.

1. Pin the behavior contract first. Run the [how](../../how/SKILL.md) skill over the affected subsystem to learn the contract, then write a characterization test, snapshot, or equivalence harness that captures current behavior before any structure moves. If the area has no coverage, write the pin before touching structure. Type check and lint are not a pin.
   Use the [impact matrix](../references/impact-matrix.md) to include externally observable data/API/async/security/platform behavior in that pin; a source-only equivalence claim cannot hide changed consumers, migration semantics or deployment state. Select **domain-review**/**verification-strategy** for applicable invariants and justify N/A without dropping configured checks/reviewers. Preserve supported external compatibility; the no-shim rule is not authority to break a consumer contract.
2. Name the structure the code is missing per [model-the-domain](../../model-the-domain/SKILL.md). Boring code stays when the shape is already clear and local. The reshape must delete branches or invalid states, not add indirection.
3. Name the target shape. State what the module layout, types, and call graph should be if built today ([foundational-thinking](../../foundational-thinking/SKILL.md), [redesign-from-first-principles](../../redesign-from-first-principles/SKILL.md)). If the target crosses a function boundary, run the [architect](../../architect/SKILL.md) skill for parallel design exploration of the shape before the move.
4. Subtract before you add. Delete dead code, collapse one-caller wrappers, drop redundant validators, and remove orphan references before introducing the new shape ([subtract-before-you-add](../../subtract-before-you-add/SKILL.md)). The smallest change that reaches the target shape ships ([laziness-protocol](../../laziness-protocol/SKILL.md)). A speculative cleanup that "might help" gets reverted.
5. Move in small behavior-preserving steps, each keeping the pin green. For API reshapes, migrate every caller and delete the old API in the
   same wave ([migrate-callers-then-delete](../../migrate-callers-then-delete/SKILL.md)). No compatibility shims, no parallel old-and-new
   paths. Spot-check every rename against the actual files. Renames silently miss usages in strings, prose, and back-references. When worthwhile and supported, delegate
   the mechanical edits to a subagent; otherwise execute the same scoped move inline, using the configured available GSF refactoring role model with a specific scope (file paths, the names
   being moved, the behavior to hold). Select available models and reasoning through the GSF mode delegation contract and
   `.gsf/state/models.md` when present; never require an unavailable model.
6. Prove behavior is unchanged on the real artifact, not "it compiles" ([prove-it-works](../../prove-it-works/SKILL.md)). For larger reshapes, run an equivalence check: a script that diffs old-vs-new outputs, a recorded baseline replayed against the new code, or a smoke run on the matching surface via the relevant control skill.
   Compare the actual old/new artifact, inputs/config/toolchain, base/dependencies and environment under [execution/evidence boundaries](../references/execution-evidence.md). Retain original receipt identities and rerun affected lanes; source similarity is not proof reuse. External probes, writing fixtures and cleanup need their actual effect/target/grants and resource owner.
7. Confirm the change is worth keeping. The success measure is reduced reader load ([minimize-reader-load](../../minimize-reader-load/SKILL.md)). If the diff does not lower reader load somewhere, undo only the owned experiment. A failing characterization pin is not presumed to be an implementation-detail test: explain it from the pinned contract before changing any test, and respect protected test paths.
8. Rebase into small ordered commits. A subtraction commit, then the reshape, then any follow-on cleanup. Shape them with the [sequence-verifiable-units](../../sequence-verifiable-units/SKILL.md) principle skill, so each behavior-preserving slice stays green before the next. Run [Opening a PR](./opening-a-pr.md).

**Reply:** the structure that changed, the pin you held it against, the equivalence proof, the reader-load delta, what shipped and what got reverted. No new behavior.

## Applicability

Use [GSF mode](../SKILL.md) to select direct, read-only, or factory execution. The configured `<config.paths.agents>/WORKER_CONTRACT.md` is the normative policy, lifecycle, recovery, and candidate-evidence contract; this playbook adds only task-specific steps. Direct read-only requests create no jobs or evidence files. Factory execution uses [gsf-run](../../gsf-run/SKILL.md) only within authorized write scope; investigation evidence requires an explicit write grant.

