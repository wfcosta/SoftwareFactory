---
name: benchmark-checklist
description: Vet a perf measurement (limiter, tuning, limits, errors, repeatability, relevance, and whether the work happened) before you report or act on it. Use when you run a benchmark or report a speedup or regression you measured.
---

# Benchmark Checklist

Before you report or act on a performance number, verify the measurement itself is valid. A number without validation is meaningless.

## Checklist

### 1. Is the limiter clear?

What limits the metric? Before reporting a speedup or regression, identify the bottleneck:
- CPU bottleneck?
- I/O bottleneck (disk, network)?
- Memory bandwidth?
- Cache behavior?
- Algorithmic complexity?

If you don't know what limits the number, the number is not reliable. Find the limiter first (profilers, flame graphs, traces).

### 2. Is the measurement method valid?

How did you measure?
- Are you measuring the right thing? (End-to-end latency vs. function execution time vs. throughput)
- Is the method appropriate for the metric? (Wall clock vs. CPU time vs. profiler data)
- Are you measuring what you think you're measuring? (Warm-up effects, caching, background noise)

If the method is wrong, the number is wrong. Fix the method before proceeding.

### 3. Are the limits and errors understood?

Every measurement has limits and errors:
- What's the measurement error margin? (±1%? ±10%?)
- What's the confidence interval?
- Are outliers meaningful or noise?
- Is the baseline stable or noisy?

If you don't understand the error bounds, you can't trust the difference between before and after.

### 4. Is it repeatable?

Run the measurement multiple times:
- Do you get consistent results?
- What's the variance?
- Is there a pattern (first run slower due to warm-up)?

If it's not repeatable, the number is anecdotal, not evidence. Establish repeatability before acting.

### 5. Did the work actually happen?

Confirm the work you're measuring actually executed:
- Did the code path run? (Check logs, traces, or add instrumentation)
- Was the optimization actually applied? (Verify the diff)
- Are you measuring the right version? (Check git hash, binary version)

If the work didn't happen, the number is meaningless. Verify execution before measuring.

### 6. Is the relevance clear?

Does this metric matter for the user experience?
- Is this a hot path in production?
- Does it affect latency, throughput, or resource usage in ways users notice?
- Or is this a micro-optimization on a cold path?

If it's not relevant, the number is technically correct but doesn't justify action. Focus on what matters.

## Process

1. Before measuring, apply this checklist. If any item fails, fix it first.
2. Only after the checklist passes, measure and report.
3. When reporting, include the checklist results: "Passed benchmark checklist: limiter (CPU), method (profiler), error (±2%), repeatable (5 runs, 3% variance), work confirmed, relevant (hot path)."

## Output

Pass/fail on each checklist item, with evidence. Only proceed to reporting or acting on the number if all items pass.
