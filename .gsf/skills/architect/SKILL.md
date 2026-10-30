---
name: architect
description: "Sketch types, signatures, and module structure before code, then stay in the loop while implementation fills in. Use for /architect, 'architect this', 'design this', or non-trivial work where jumping to code would lock in the wrong shape."
---

# Architect

Applicability and host-capability boundaries follow [GSF mode](../gsf-mode/SKILL.md), with shared factory policy in the configured worker contract.

Produce a usage-first design document containing types, signatures, module boundaries and pseudocode, then implement the accepted shape only when assigned and authorized. Sketches are design evidence, never deliverable executable stubs or a substitute for actual consumer proof. Synthesize real perspectives only when the host supports them; do not invent model availability or independent review.

## Start

Use the assigned lifecycle plan for the phases below; any private phase notes are not a second coordinator or authority path.

1. Ground
2. Sketch
3. Agree
4. Implement
5. Scrap

## Phase A: Ground the problem

Build a real mental model of every system the new code touches. Run the **how** skill over the relevant subsystems. Naming a file isn't grounding. Produce the architectural explanation `how` prescribes. If the design redefines ownership or layering, also run the **why** skill on the existing shape so the rationale becomes a constraint, not a guess.

Skip Phase A only when the work is genuinely greenfield with no surrounding system to integrate.

### Inputs and quality obligations

Read the exact requirement, candidate/policy identity, current interfaces, actual environment/tool evidence and accepted consumer quality objectives. Apply [domain review](../domain-review/SKILL.md), particularly [architecture quality](../domain-review/references/architecture-quality.md), to deepen existing design practice rather than create another approval gate. Select its data/API/async/security/recovery/observability/experience references for affected surfaces.

Ground the trust/failure boundaries, data owner and authoritative source, transaction/consistency model, dependency behavior and capacity limits. Record assumptions with sources, uncertainty, owner and a falsifying observation. Express quality requirements as consumer scenarios with stimulus, operating/load conditions, measurable response and observation window. Unknown objectives or necessary capabilities block that design claim rather than licensing invented targets or fake runtime evidence.

## Phase B: Sketch

Run the **arena** skill with the design-sketch task and the Phase A grounding artifacts. Pass `references/runner-prompt.md` as each runner's prompt.

For a consequential unresolved design, require at least two structurally distinct candidates before synthesis. A settled mechanical boundary change can use one inline sketch with a risk rationale; unsupported delegation uses serial exploration without claiming independence. This is the **exhaust-the-design-space** principle skill made concrete. Whole-shape alternatives, not point fixes inside one shape.

Screen every candidate against [`references/design-red-flags.md`](references/design-red-flags.md) before synthesis. Assume the next contributor is an agent that sees only the files it opened, copies the nearest example, and takes the shortest path that compiles. Prefer the design where a change that looks right from one file is right for the whole repo.

Compare viable candidates on interface depth. Prefer the design that hides more complexity behind a smaller, simpler public surface. A rich interface can keep call chains short by concentrating capability instead of scattering it across layers.

Prefer the current simple shape or no new component when it meets the accepted scenarios. For every proposed queue, cache, service or abstraction, justify its data ownership, consistency, capacity and failure behavior against simpler alternatives. Compare dependency slowness/outage, concurrency, trust/authorization failures and recovery, not just steady-state call graphs. Record concrete consumer-visible acceptance and how the final candidate will be proved with actual tools.

Arena returns one synthesized design package. Its synthesis decision fills the rationale's "Synthesis decision" section.

## Phase C: Agree (opt-in)

Default: proceed to implementation only within the existing assignment and effective authority after required prerequisites. Skipping an optional design discussion never bypasses protected-path grants, unresolved product decisions, mandatory independent reviews or external-action authorization.

Opt in to a checkpoint when the invoker explicitly asks: "/architect with checkpoint," "stop and show me before implementing," or similar. Then surface the synthesized design and pause for sign-off.

The synthesis can ship as its own commit either way, as the "scaffold first" mode of the **foundational-thinking** principle skill. A checked local design-document commit is permitted when authorized; do not deliver executable stubs or publish a failed candidate. Planned and scoped private breakage during fill-in is bounded by configured local commit policy, per the **outcome-oriented-execution** principle skill. For adversarial pressure on the design before implementing, run the **interrogate** skill on the synthesized sketch.

If the human pushes back on the shape (in a checkpoint or after the fact), treat that as Phase A evidence. Re-ground and re-run Phase B before writing more code.

## Phase D: Implement against the sketch

Implement the documentary types/signatures and replace pseudocode with complete logic in the assigned product workspace. The synthesized design is the contract. Deviations from it are signal to surface, not friction to absorb silently. If a function needs an unanticipated parameter, determine whether the sketch was wrong, a requirement was missed or implementation is overreaching; do not silently change the accepted consumer behavior.

Maintain the scenario-to-proof map as the implementation changes. Explicitly assigned checks execute on the actual supported isolated surface; design reasoning and simulated examples are not measured results. Missing runtime/failure/assistive-technology capability blocks only the affected claim. Reviewers remain independent and read-only; this skill never authorizes production queries, penetration tests, cloud changes or deployment.

## Phase E: Scrap when the architecture is wrong

If implementation keeps producing friction the sketch can't absorb, throw the sketch out. Don't bolt fixes onto a wrong design, per the **redesign-from-first-principles** and **fix-root-causes** principle skills.

The signal is a *pattern*, not single instances. Tells:

- The same shape of workaround appearing repeatedly across unrelated code
- Multiple unrelated edge cases that all need special-case branches
- Types that need escape hatches (`any`, casts, optional fields always set in practice) to compile
- The "we need a lock" reflex when the sketch said the state wasn't shared
- Callers having to know the abstraction's internal rules to use it
- Two or more independent Phase D deviations of the same shape across the implementation

Use judgment. A few edge cases don't condemn an architecture. Some problems are legitimately complex. Complexity in the data is not complexity in the design.

When you scrap:

1. Re-run the **how** skill over what's been built
2. Redesign as if the new constraints had been day-one assumptions, per redesign-from-first-principles
3. Subtract before adding, per the **subtract-before-you-add** principle skill. The new sketch should be smaller than the old one before it grows
4. Return to Phase B and re-run arena

## Outputs

The caller's usage is written first and the type sketch derived from it. One file with new types and signatures for small changes. Module map plus type definitions for larger work. The rationale ships alongside, shaped per `references/rationale-template.md`, including the usage sketch and the synthesis decision.

## Failures, evidence and outcome

If ownership, consistency, safety or a measurable consumer scenario cannot be satisfied, stop the affected implementation/effect, preserve the grounded evidence and route the exact missing decision/prerequisite through the worker contract. Distinguish a revised design from a waived requirement. Account for accepted writes and persistent-data compatibility before rollback; redesign alone is not recovery.

The rationale records exact candidate/configuration and sources, chosen/rejected alternatives, trust/failure/data boundaries, capacity/dependency assumptions, consumer quality scenarios, proof obligations and actual result limitations. Record which obligations remain design-only and which were exercised; acceptance of the design is not approval of implementation or release. Complete the assigned implementation without executable stubs, remove only owned temporary sketch scaffolding and hand evidence to the coordinator for the existing independent gates.
