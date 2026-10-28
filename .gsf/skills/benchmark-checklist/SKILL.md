---
name: benchmark-checklist
description: "Vet a performance number for limiter, fair production tuning, physical limits, actual errors, repeated comparisons, relevance, and completed timed work before reporting a speedup or regression."
disable-model-invocation: true
---

# Benchmark checklist

Apply this when authorized to run a benchmark or report a measured performance claim. A choice among implementations, libraries or configurations is a comparison, never a quick ballpark. Do not run measurements merely because this checklist was consulted.

## Before measuring

Write the exact claim you intend to ship, including workload, unit and percentile or throughput definition. Read the real measurement harness: what starts/stops the clock, what counts as work, what it ignores, concurrency, retries, timeout treatment and output checks. Record candidate revisions/builds, hardware/OS/runtime, dataset identity, load-generator version and production-relevant configuration. Inspect current host load and core count using available platform tools; do not assume Linux commands exist. If unrelated load cannot be removed safely, interleave sides under the same conditions and disclose it.

## Seven questions, answered by run evidence

1. **Why not twice as fast?** Name and locate the limiter. Profile in a separate run whose timing is not reported; profilers and tracing perturb the workload. Observe CPU per process/core, allocation/GC, I/O waits, network/disk throughput, relevant syscalls or runtime stacks, and map the hotspot to source. Check the load generator itself: a saturated client measures the client. If a change did not move the number, find the limiting work before declaring the change useless.
2. **Was each side tuned fairly for production?** Use release builds and comparable versions, data, environment, production flags, batching, transactions, indexes, connection pools and appropriate warm/cold caches. Tune each option competently for the intended deployment, not necessarily to identical settings. A commit per row, debug build, missing index, or arbitrary default may be the limiter. Retune and repeat before choosing a winner. If a side cannot be tuned, the comparison is inconclusive for adoption; narrowing the claim to an unfair shipping configuration does not answer which option to adopt. State resource tradeoffs and tuning changes.
3. **Does the number violate physical limits?** Compare bytes/time with attainable disk/network/memory bandwidth and operations times cost with available cores. Account for compression, cache hits, parallelism and asynchronous completion. Use the changed fraction's limit: removing work that occupied 10% of a run permits at most about 1/0.9 = 1.11 times speedup. A result beyond its bound suggests omitted work, caching, a no-op, incorrect units or a bug, not a miracle.
4. **Did it error or return wrong results?** Count attempted/completed operations, timeouts, retries, cancellations, rejected requests and non-success responses separately. Validate contents and side effects, not merely output existence. Fast failures can resemble a speedup; retries can inflate apparent latency or operation counts. If the harness omits these counts, correct the measurement within authorized scope or mark the claim inconclusive. Statistical error bars are not a substitute for counting actual errors.
5. **Does it reproduce fairly?** Run each side at least five times in alternating order: A, B, A, B, and so on, with documented equal warmup/fixture reset and consistent workload. Save per-run values, errors, completed work and order. Report median and range, plus percentiles when meaningful. A gap smaller than run-to-run variation is no measurable difference. For close calls use the harness's justified statistical method or a suitable rank-sum comparison; disclose sample size and uncertainty, and never invent confidence intervals.
6. **Does it matter end to end?** Alongside a microbenchmark, measure the realistic user path, dataset sizes and concurrency. State the changed component's fraction of total work. Making a helper that takes 1% of a request infinitely fast saves at most 1% of that request's time. Report a micro result as a micro result, not a user-visible speedup.
7. **Did completed work occur inside the timed region?** Confirm requests reach the real server, responses are consumed, rows commit, bytes are read, generators are iterated, promises are awaited, GPU/device work is synchronized when relevant, and results cannot be discarded by optimization. Distinguish queue submission from completion and cache hits from actual work. Record proof or counters without materially perturbing reported timing. Timeouts and unawaited asynchronous work are not successful fast runs.

## Ballpark exception

If the user explicitly asks for a rough single estimate, one run is enough. Still establish questions 4 and 7, report the unit and conditions, and call it a single-run ballpark with no comparative verdict. Investigate an implausible run. This exception never supports choosing a winner or claiming a speedup/regression.

## Verdict and artifacts

Lead with faster, slower, no measurable difference, or inconclusive. Include the primary number and unit, baseline/candidate identity, run count, median/range, conditions, limiter, error counts and completed-work proof. If the limiter is unknown, a side was unfairly untuned, or errors/timed work could not be checked, a claimed difference is inconclusive; name the gap.

Keep the public PR concise with one primary number; link an authorized Markdown evidence artifact containing per-run data, configuration, profiler evidence, physical-limit arithmetic and limitations. The framework supplies procedures, not a bundled benchmark runtime. Apply the checklist to [perf-issue](../gsf-mode/playbooks/perf-issue.md) baselines and claims, and to [hillclimb](../gsf-mode/playbooks/hillclimb.md) before freezing its harness; a frozen harness must expose actual errors and completed work on every comparison.

Adapted from [pstack at the pinned revision](https://github.com/cursor/plugins/tree/c742dd61706fbacc1b95f1a20b7b988cf096ce6c/pstack).
