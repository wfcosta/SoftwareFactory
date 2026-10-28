### Performance Issue

**You own the measurement and fix.** Be scientific. A number without a limit and a measurement method is not evidence.

1. **Baseline the problem.** Measure the current performance of the code path in question. Record:
   - The measurement method (benchmark, profiler, timing harness)
   - The limit or target (e.g., "under 100ms", "2x faster than baseline")
   - The current number and units
   - The environment (hardware, dataset size, configuration)
   Apply the **benchmark-checklist** skill before proceeding.
2. **Profile to find the limiter.** Use a profiler (cpu, memory, flame graph, trace) to identify where time is spent. Don't guess from code inspection. The profiler tells you what actually runs.
3. **Form hypotheses.** For each hot spot, form a hypothesis about why it's slow (algorithmic complexity, unnecessary work, data structure choice, cache behavior, etc.).
4. **Test each hypothesis.** Modify the code to address the hypothesis, remeasure, and compare. Only keep changes that move the needle. If a change doesn't improve the number, revert it. Don't accumulate speculative optimizations.
5. **Explain the number.** Once you achieve the target, apply the **explain-the-number** principle skill. What limits it now? Is there headroom? What would break it again?
6. **Verify the fix** on the same surface and environment as the baseline. Confirm the number meets the target and doesn't regress elsewhere.
7. **Add a regression guard** if appropriate (benchmark, timing test, performance assertion). The guard should fail if the issue returns.
8. **Run Opening a PR.**

**Reply:** baseline measurement, profiling findings, hypotheses tested, what worked and what didn't, final measurement with limit confirmation, regression guard added.
