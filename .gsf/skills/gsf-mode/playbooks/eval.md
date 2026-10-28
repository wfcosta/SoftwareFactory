### Eval

**You own the experiment design. Plan, blind, run, synthesize.**

**Non-negotiables for blinding:**

- Keep evaluation-specific identities, variant labels, grading rubrics, scores, and experiment instructions out of candidate-visible paths/prompts/files. Sanitize metadata such as `eval`, `judge`, or `candidate` labels that reveal the experiment. Do not ban legitimate product test/benchmark files or the required GSF contracts merely because they contain those words.
- The candidate prompt looks like an organic user request. State the goal, not the meta.
- No chain-eliciting cues. Don't ask the candidate to list which skills, principles, or files they applied. Ask for design notes generally and grade chain-following from code shape, not self-report.
- Sanitize directory and slug names. Use project-shaped names a user might pick.
- Don't tell the candidate other candidates exist.
- The judge can know it's judging but sees outputs by sanitized label only, never by model name.
- Comparing two variants: one judge scores both sets in a single pass on one scale, blind to which set each came from.

**Steps:**

1. **Frame.** State what variant is under test and what behavior counts as success. Write the rubric (3-6 concrete criteria) for the judge only. Hold it back from candidates.
2. **Set up sanitized environments.** Per-candidate working dir with the variant in place. Plant any context an organic task would have: a project skeleton, the skills the candidate would naturally read.
3. **Author one organic prompt.** What a user would type. No leakage of what's being measured.
4. **Spawn N parallel candidates** on different models per the [arena](../../arena/SKILL.md) skill's Phase B. Each works in its own sanitized dir. Same prompt to each. Select available models and reasoning through the GSF mode delegation contract and `.gsf/state/models.md` when present; never require an unavailable model.
5. **Spawn one blinded judge** on a different model family per the [arena](../../arena/SKILL.md) skill's Phase C. Judge sees outputs by sanitized label and the rubric, never a model name.
6. **Verify the chain from transcripts, not self-report.** Read each candidate's tool transcript exposed by the current host for this workspace and its owned dispatch receipts. Never scan other workspaces' private histories. Keep the judge's rubric and identity mapping outside candidate-visible directories, prompts, branch names, and output paths. Look at which files each candidate actually opened. Grade chain-following from the files it really read plus the shape of the code, never from the candidate's own claims.
If the host cannot isolate directories, hide identity/rubric metadata, supply model diversity, or expose tool receipts, record the missing capability. Do not label the run blinded or its chain verified when it is not. Keep the label-to-variant mapping judge-invisible until scoring is locked.

7. **Read every candidate output yourself** end to end. Compare to the judge's verdict. Disagreement means a model is biased or the rubric is ambiguous. Synthesize.

**Reply:** variant under test, rubric, per-candidate notes, judge's verdict, your synthesis, and a recommendation for whether to promote the variant.

## Applicability

Use [GSF mode](../SKILL.md) to select direct, read-only, or factory execution. The configured `<config.paths.agents>/WORKER_CONTRACT.md` is the normative policy, lifecycle, recovery, and candidate-evidence contract; this playbook adds only task-specific steps. Direct read-only requests create no jobs or evidence files. Factory execution uses [gsf-run](../../gsf-run/SKILL.md) only within authorized write scope; investigation evidence requires an explicit write grant.

