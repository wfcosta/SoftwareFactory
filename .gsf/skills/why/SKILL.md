---
name: why
description: "Use for 'why does X work this way', 'why we picked Y', design rationale, regressions, postmortems, or data-backed thresholds. Discovers available MCPs and queries each evidence category (source control, issue tracker, long-form docs, real-time chat, infrastructure observability, error tracking, product analytics warehouse) in parallel, then returns a cited read on decisions and tradeoffs. Use how for runtime behavior."
disable-model-invocation: true
---

# Why

Investigate the motivation and intent behind code. The companion `how` skill answers what the code does and how it works. `why` answers what forces led to its shape.

Use available read-only investigators through native delegation. Investigators must not mutate source, external services, or shared job ledgers. Without delegation inspect the same evidence categories serially and disclose the limit.

This is a read-only investigation unless the caller separately authorizes job evidence writes. Do not initialize a factory job for a direct no-write question. Model preferences, when needed, come from the active Markdown `models.md` contract; do not require vendor model slugs or a particular MCP.

## Operating Posture

Operate as a **careful, cautious, and precise investigator**. Be honest about what you know vs what you're inferring. Read `references/epistemics.md` for the full confidence framework and phrasing guide. The synthesizer must follow it.

## Step 1. Understand the Target and the Question

The **target** is usually a chunk of code, a pattern, a feature, or a named design decision. The **question** is usually a design rationale, a tradeoff, a motivating edge case, an external constraint, dead code, or a broad history sweep.

If the target is vague ("why do we do it this way?" with no clear referent), make your best guess from conversation context (open files, recent edits, cursor location, what was just discussed). State your interpretation briefly so the user can redirect if you're off, then proceed.

## Step 2. Establish the Code Anchor

Before spawning investigators, build the seed context inline: file paths and line ranges, key symbols (functions, classes, constants), the last few commits touching the target, PR numbers from merge commits. Then pull the PR bodies and discussion for any substantive commit. This anchor goes to every investigator and to the synthesizer.

Trace line-level last-touch history with blame, rename-aware history with `git log --follow`, exact constants with pickaxe history, and substantive commits with full diffs. Read full PR descriptions, review threads, and linked tickets, not only titles. Seed identifiers, exact error text, business synonyms, ship date/time window, and cross-source leads go into the anchor.

## Step 3. Spawn Parallel Investigators

**Default to the full parallel investigation.** The goal is a complete coverage map, not a minimal one. Document the null, don't skip the search.

### Discovery

List the available evidence sources in this environment:

1. Source control history (git, GitHub PRs)
2. Issue / ticket tracker (if available)
3. Long-form documents (if available)
4. Real-time team chat (if available)
5. Infrastructure observability (if available)
6. Error / exception tracking (if available)
7. Product analytics warehouse (if available)

Discover local Git and remote PR access separately. Local history may exist while `gh`, credentials, or network access do not. Record unavailable sources; never assume access or fabricate findings.

Spawn one investigator per category that has an available source, all in a single message so they run concurrently, each owning exactly one source. Don't ask one agent to cover multiple sources.

Each investigator's prompt is `references/investigator-prompt.md` filled in, plus its category recipe from [source-playbook.md](references/source-playbook.md), the code anchor, and the user's original question. For an incident/postmortem question, or defensive code (guards, retry/timeout/rate-limit handling, feature flags, OOM or egress checks), also apply that playbook's incident/postmortem overlay within every source. Available vendor tools are optional access methods, never dependencies.

### When to skip an investigator

Only with an **explicit, written justification** that goes in the final Sources Consulted. Two valid reasons:

- **No source is available** for that category in this environment. Flag it as a gap, not a choice.
- **The source is provably irrelevant**, not just "probably irrelevant." A high bar.

If your scope assessment suggests a single-commit trivial target where the PR description already contains the complete answer, you may answer inline **only after** confirming all seven available category searches would be redundant. Say so explicitly. This should be rare.

## Step 4. Synthesize

Spawn one synthesizer. It gets:
1. The investigator findings, including any null results and any categories skipped with justification
2. The code anchor
3. The user's original question
4. The epistemics framework from `references/epistemics.md`
5. The synthesizer prompt template from `references/synthesizer-prompt.md`

## Step 5. Present

Present the synthesizer's output to the user. You may lightly edit for clarity or add context from the conversation, but **do not rewrite the confidence language**.

## Output Format

The structure is the one in `references/synthesizer-prompt.md`: The Question, The Code in Question, What We Found, What We Can Reasonably Infer, Competing Hypotheses, What We Don't Know, Sources Consulted, Confidence Summary. Adapt as needed, but keep the confidence separation intact, and keep Sources Consulted as one line per investigator, including the ones that returned nothing or were skipped, with the reason.

After Sources Consulted, if the user's `why` question is a precursor to changing this code, convert the lineage findings into a Preserve / Change / Avoid / Risk constraint set for planning the change.

## Common Failure Modes to Avoid

- **Recency bias.** Assuming the most recent commit is authoritative. The current shape is often the accretion of many earlier decisions. Trace back.
- **Confirmation bias.** Only looking for evidence that supports your initial guess. Search broadly.
- **Single-source reliance.** Believing one source without corroboration when multiple sources are available.
- **Overconfidence.** Stating as fact what is actually inference. Mark inferences clearly.

Adapted from [pstack at the pinned revision](https://github.com/cursor/plugins/tree/c742dd61706fbacc1b95f1a20b7b988cf096ce6c/pstack).
