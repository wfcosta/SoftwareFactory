---
name: guard-the-context-window
description: "When context fills up (large outputs, long files, repeated reads, fan-out planning), route bulk to subagents, keep summaries in the main thread. Use to manage token limits."
---

# Guard the Context Window

When context fills up, route bulk work to subagents and keep only summaries in the main thread.

## When Context Fills

- Large outputs from tools or commands
- Reading very long files
- Repeated reads of the same files
- Fan-out planning across many files
- Subagent reports with extensive detail

## Process

1. **Identify bulk work.** What work is consuming tokens unnecessarily?

2. **Route to subagents.** Spawn subagents to do the bulk work. Configure them to return summaries, not full dumps.

3. **Keep summaries in main thread.** The main thread should have only high-level summaries and decisions, not all the detail.

4. **Retrieve detail on demand.** If you need detail later, ask the subagent or read the specific file.

## Example

Instead of reading 50 files in the main thread, spawn 5 subagents each reading 10 files and returning summaries. Keep only the summaries in context.

## Output

Work distributed to subagents with summaries in the main thread, preserving context for decision-making.
