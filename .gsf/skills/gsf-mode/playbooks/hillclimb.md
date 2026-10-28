### Hillclimb

**You own the scientific loop.** Sustained improvement of one metric against a target, looping hypotheses with before/after measurement and one commit per accepted win.

This is for when you want to drive a metric to a target through iterative experimentation, not a single perf fix. Each loop is a hypothesis, a measurement, and a commit if it wins.

1. **Define the metric and target.** Specify exactly what you're measuring (latency, throughput, memory, error rate, etc.), how you measure it, and the target you're aiming for. Apply **benchmark-checklist**.
2. **Baseline the current state.** Measure and record the current metric. This is your starting point.
3. **Form a hypothesis.** What change might improve the metric? Be specific about the mechanism.
4. **Implement the change.** Make the smallest change that tests the hypothesis.
5. **Measure again.** Run the same measurement method on the changed code.
6. **Compare.** Did the metric improve? If yes, commit the change. If no, revert and form a new hypothesis.
7. **Loop.** Return to step 3 until you reach the target or exhaust viable hypotheses.
8. **Explain the final number.** Apply **explain-the-number**. What limits it now? What would improve it further?
9. **Document the journey.** The commit history should tell the story: baseline, each hypothesis tried, what worked, what didn't, final state.
10. **Run Opening a PR.**

**Reply:** baseline, target, each hypothesis tried with before/after numbers, what worked and what didn't, final number with target confirmation, what limits further improvement.
