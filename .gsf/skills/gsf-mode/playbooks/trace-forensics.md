### Trace Forensics

**You own the analysis.** Diagnose a captured profiling artifact (cpuprofile, trace, spindump, heap snapshot, flame graph). This is for when you have a static artifact from a problematic run, not a live system.

1. **Load the artifact.** Open the profiling tool appropriate for the artifact type (Chrome DevTools for cpuprofile, flame graph viewer, heap analyzer, etc.).
2. **Understand the artifact type.** What does this artifact measure? CPU time? Memory allocation? Execution paths? Timestamps?
3. **Identify the symptom in the artifact.** Find the hot spots, the spikes, the large allocations, the long pauses. Quantify them.
4. **Trace the symptom to code.** Follow the call stacks or allocation sites back to the source code. Identify the functions, modules, or data structures involved.
5. **Form hypotheses** about why the code produces this pattern. Is it algorithmic complexity? Is it unnecessary work? Is it a data structure choice? Is it a configuration issue?
6. **Validate hypotheses in the code.** Read the relevant code paths. Confirm or refute each hypothesis with evidence from the code itself.
7. **Propose a fix** for the most likely root cause. If multiple hypotheses are plausible, note them and prioritize by impact and confidence.
8. **If you implement a fix**, verify by capturing a new artifact and comparing. The symptom should be reduced or eliminated.
9. **Run Opening a PR** (if implementing a fix).

**Reply:** artifact type and what it measures, symptom identified with quantification, code paths traced, hypotheses with evidence, proposed fix or diagnosis report.
