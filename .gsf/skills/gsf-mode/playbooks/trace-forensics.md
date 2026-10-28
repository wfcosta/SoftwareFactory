### Trace forensics

**You own the diagnosis from the artifact.**

Distinct from **Runtime forensics**, which instruments the live process. Here the capture already exists. The artifact is a fixed dataset, read it, don't re-run it. Keep tooling generic: a DevTools or trace parser for cpuprofile and `.json.gz`, a text editor for a spindump, your heap tooling for a heapsnapshot.

1. Identify the format and load it with the right tool. When supported and worthwhile, parse large artifacts in a subagent; otherwise query/reduce them inline (the [guard-the-context-window](../../guard-the-context-window/SKILL.md) skill) and keep the reduced finding in the main thread. Select available models and reasoning through the GSF mode delegation contract and `.gsf/state/models.md` when present; never require an unavailable model.
2. Transform the raw artifact into a form you can query. Use available parser exports or a queryable derived copy (for example SQLite, one row per sample, frame, or node), preserving original bytes, timestamps, sample units, and provenance. Reach the queryable shape before reading bulk data. Do not add a framework parser script. If the format cannot be decoded by installed tools, name the tool/schema missing and return BLOCKED rather than replacing the artifact with a fresh capture.
3. Narrow to the cause. Query for the frames that hold the most time and walk the call tree to the hot path. For a leak, follow the retainer chain from the leaked object to a GC root. For a spindump, find the thread stuck on-CPU or blocked and its wait reason.
4. Attribute to source. Map the hot frame to file, symbol, and line via the artifact's own symbols. A frame with no source mapping is not yet a diagnosis. Resolve the symbols, or say plainly the artifact does not carry them.
5. If you have a paired capture, diff the before and after artifacts to confirm. Otherwise, mark the finding as the strongest hypothesis the artifact supports, not a confirmed cause.
6. Hand back a cited diagnosis, no fix unless asked. Route to Bug fix or Perf issue once the cause is known. Throughput checkpoint stays one line: `throughput checkpoint: n/a, read-only forensics`.

**Reply:** the artifact and format, the reduced finding, the source location, the artifact paths, and whether a paired capture confirmed it.

## Applicability

Use [GSF mode](../SKILL.md) to select direct, read-only, or factory execution. The configured `<config.paths.agents>/WORKER_CONTRACT.md` is the normative policy, lifecycle, recovery, and candidate-evidence contract; this playbook adds only task-specific steps. Direct read-only requests create no jobs or evidence files. Factory execution uses [gsf-run](../../gsf-run/SKILL.md) only within authorized write scope; investigation evidence requires an explicit write grant.

Reference: adapted from [cursor/plugins/pstack trace-forensics.md](https://github.com/cursor/plugins/tree/c742dd61706fbacc1b95f1a20b7b988cf096ce6c/pstack). GSF authority, evidence paths, and tool mappings override reference-specific runtime details.
