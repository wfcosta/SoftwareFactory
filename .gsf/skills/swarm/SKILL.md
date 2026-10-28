---
name: swarm
description: "N parallel workers across different slices or races, yielding an aggregated report. Use for coverage matrices, gauntlets, exploration partitions, or when you need parallel work across independent dimensions."
disable-model-invocation: true
---

# Swarm

Run N parallel workers across different slices or races, then aggregate their findings. This is for coverage matrices, gauntlets, exploration partitions, or any work that can be split across independent dimensions.

## Process

1. **Define the dimensions.** What are the independent axes along which to split the work? Examples:
   - Different browsers or platforms
   - Different data sets or scenarios
   - Different test suites
   - Different code paths or features
   - Different models running the same task (race)

2. **Create work packets.** For each dimension or slice, define a specific work packet:
   - What the worker should do
   - What inputs it gets
   - What output it should produce
   - Success criteria

3. **Assign workers.** Spawn N workers in parallel, one per work packet. Use the same model or different models depending on the task. For races, use different models to compare their outputs.

4. **Workers execute independently.** Each worker completes its work packet and reports its findings.

5. **Aggregate results.** Collect all worker outputs and synthesize them into a unified report:
   - Summarize what each worker found
   - Compare results across workers (for races)
   - Identify patterns or discrepancies
   - Highlight any failures or issues

6. **Report.** Present the aggregated findings with:
   - Overview of what was tested
   - Results per worker
   - Synthesis and conclusions
   - Any issues or discrepancies found

## Output

An aggregated report combining all worker findings, with synthesis and conclusions.

## Notes

Swarm is different from Arena. Arena has multiple candidates competing on the same task, and you pick the best. Swarm has workers covering different slices of a larger task, and you aggregate all their results.

Use Swarm when:
- You need to test across multiple independent dimensions
- You want to compare different models on the same task (race)
- You need broad coverage that would be slow to do sequentially
- You have a large exploratory task that can be partitioned

Use Arena when:
- You need to choose between alternative designs or implementations
- You want the best of N attempts at the same thing
- You're doing a design bakeoff
