### Runtime Forensics

**You own the diagnosis.** Diagnose a live symptom (leak, idle-cpu spin, glitch, crash) from instrumentation. This is for when you can observe the problem in real time, not from a captured artifact.

1. **Instrument the suspect code.** Add logging, metrics, or breakpoints around the symptom. Don't guess from code inspection. Let the system tell you what's actually happening.
2. **Reproduce the symptom** in the instrumented environment. Confirm you can observe it.
3. **Gather evidence.** Capture logs, metrics, stack traces, memory snapshots, or whatever the instrumentation produces.
4. **Analyze the evidence.** Trace the symptom back to its source. Look for:
   - Loops that don't terminate
   - Resource leaks (file handles, connections, memory)
   - Race conditions or deadlocks
   - Unexpected state transitions
   - Performance cliffs
5. **Form a hypothesis** about the root cause.
6. **Test the hypothesis.** Modify the code to address the hypothesis, re-instrument, and reproduce. Does the symptom change?
7. **Verify the fix.** Once the symptom no longer occurs, run the system under load to ensure it's actually fixed, not just hidden.
8. **Clean up instrumentation.** Remove temporary logging and debugging code, keeping only essential monitoring.
9. **Run Opening a PR.**

**Reply:** symptom description, instrumentation approach, evidence gathered, hypothesis, test results, fix, verification that the symptom is gone.
