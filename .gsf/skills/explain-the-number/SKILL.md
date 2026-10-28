---
name: explain-the-number
description: "Before measuring, and before trusting, reporting, or acting on a measured number (speedup, regression, throughput, latency, eval result), find what limits it and rule out that it measured something other than the work you think."
disable-model-invocation: true
---

# Explain the Number

Before you trust or act on a measured number, understand what limits it and ensure you measured what you think you measured.

## When to Apply

- Before reporting a speedup or regression
- Before making decisions based on performance metrics
- Before claiming an improvement from an eval
- Any time you're about to act on a number

## Process

1. **Define what you're measuring.** What exactly is the number representing? Throughput? Latency? Accuracy? Resource usage?

2. **Understand the measurement method.** How did you measure it? Is the method valid for what you're trying to measure?

3. **Find the limiter.** What bounds this number? What prevents it from being higher or lower?
   - CPU bottleneck?
   - I/O bottleneck?
   - Network latency?
   - Algorithmic complexity?
   - Cache behavior?

4. **Rule out measurement artifacts.** Did you measure what you think, or something else?
   - Warm-up effects?
   - Background noise?
   - Measurement overhead?
   - Caching affecting results?
   - Sample size too small?

5. **Explain the number.** Given the limiter and measurement validity, why is the number what it is?

6. **Only then act.** Once you understand the number, decide what to do.

## Example

Claim: "My optimization made the code 2x faster."

Investigation:
- What did you measure? End-to-end request time.
- What's the limiter? Database queries, not CPU.
- Did you measure the right thing? The optimization reduced CPU, but the bottleneck is I/O.
- Conclusion: The 2x speedup is misleading. The actual user-visible speedup is negligible.

## Output

An explanation of what limits the number, confirmation that you measured what you intended, and what the number actually means.

## Notes

Numbers without context are dangerous. A 2x speedup that doesn't affect the bottleneck is meaningless. A regression in a non-critical path might be acceptable. Understand before you act.
