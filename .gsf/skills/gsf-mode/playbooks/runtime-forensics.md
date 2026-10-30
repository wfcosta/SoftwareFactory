### Runtime forensics

**You own the diagnosis. Instrument the live process, don't theorize from source.** The deliverable is a cited diagnosis, not a fix.

An active outage, alert requiring containment, or suspected compromise first routes to [incident-response](../../incident-response/SKILL.md); report/issue classification uses [issue-triage](../../issue-triage/SKILL.md). Those procedures preserve one responder/resource owner and scoped authority; diagnosis itself remains no-fix. Use [impact/proof routing](../references/impact-matrix.md) for signal/data/privacy/async/target boundaries and [execution/evidence boundaries](../references/execution-evidence.md) for effect, observed environment, safe capture/retention and actual limits. Missing instrumentation blocks only its dependent claim, never becomes a fabricated profile or health verdict.

1. Capture the live signal on the matching surface via the control skill: a CPU profile for a spinning process, a heap snapshot for a leak, a CDP trace for a visual glitch. A real artifact, not a guess.
2. Reduce the artifact to the smoking gun: the function on the hot path, the retainer chain from the leaked object to a GC root, the loop firing without input. When supported and worthwhile, parse large artifacts in a subagent; otherwise query/reduce them inline (the [guard-the-context-window](../../guard-the-context-window/SKILL.md) principle skill), keep the reduced finding in the main thread. Select available models and reasoning through the GSF mode delegation contract and `.gsf/state/models.md` when present; never require an unavailable model.
3. Prove the mechanism before believing it. On an authorized local or isolated process, inject temporary instrumentation through an available debugger/CDP session, sample stacks, or trace scheduling/allocation to test a discriminating prediction. Record before/after observations. Do not hotfix production, mutate customer state, or change source as diagnosis work. If instrumentation itself changes timing, record the limitation and use a second signal. Remove only your temporary probes and stop only the diagnostic processes you started.
4. Map the finding back to source: file, symbol, the line that allocates or schedules.
5. Diagnosis does not authorize source changes or durable captures by itself. A no-write request uses available observations without writing captures; request only the specific missing authorization if necessary. Throughput checkpoint stays one line: `throughput checkpoint: n/a, read-only forensics`.

**Reply:** the signal captured, the reduced finding, how you proved the mechanism, the source location, artifact paths. No fix unless asked. Hand back to Bug fix or Perf once the cause is known.

## Applicability

Use [GSF mode](../SKILL.md) to select direct, read-only, or factory execution. The configured `<config.paths.agents>/WORKER_CONTRACT.md` is the normative policy, lifecycle, recovery, and candidate-evidence contract; this playbook adds only task-specific steps. Direct read-only requests create no jobs or evidence files. Factory execution uses [gsf-run](../../gsf-run/SKILL.md) only within authorized write scope; investigation evidence requires an explicit write grant.

