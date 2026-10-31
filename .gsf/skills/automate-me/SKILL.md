---
name: automate-me
description: "Create, update, or refresh a personal -mode skill from explicit preferences and authorized recurring history. Use for automate me or capture my working style."
---

# Automate me

Turn the user's working conventions into one personal `-mode` skill. This is not permission to mine other projects, edit organizational policy, or publish anything. Use [create-skill](../create-skill/SKILL.md) for authoring and [unslop](../unslop/SKILL.md) for prose; reference [gsf-mode](../gsf-mode/SKILL.md) for shared execution policy instead of copying it.

## 1. Locate and choose create or update

Discover existing project and host-supported personal skill locations, including nested personal category directories. Search only authorized locations for the user's chosen handle and `*-mode/SKILL.md`. Preserve an existing skill's path, category, section style, frontmatter conventions, and unaffected preferences. An explicit update request selects update; otherwise, when a match exists, ask whether to update it (default) or intentionally start over. Never overwrite an existing mode as though it were new.

For a new project mode use `.gsf/skills/<handle>-mode/SKILL.md`, or the established personal category beneath `.gsf/skills/`. Discover the actual host path before offering user-wide installation; writing outside the repo needs permission. Do not assume a vendor-specific home layout. Confirm a chosen identifier only if it cannot be learned from context.

## 2. Collect bounded evidence

Use only history the user authorized and the active workspace's supplied transcript/archive location. Never enumerate unrelated project histories or infer a transcript path from a guessed workspace slug. If history is unavailable, say so and use the current conversation plus explicit answers. For an update, find the file's last meaningful edit time from repository history or metadata and mine only newer conversations unless the user requests a broader review.

Set a date window and topic scope. For a large authorized corpus, split nonoverlapping time slices among read-only investigators; for a few chats, work inline. Extract response preferences, autonomy/delegation, verification, code/prose discipline, process, and skill habits. Each finding includes the actual correction or preference, date, private evidence pointer, recurrence count, and contradictions. Do not copy raw private transcripts into a skill.

Cross-check slices. A recurring preference needs at least two independent occurrences; repeated assistant text is not user evidence. Lone observations stay tentative or are omitted. A direct current user instruction can establish a preference without recurrence. Conflicts are not resolved by frequency alone: surface the conflict and ask what should become durable. Do not turn a task-specific constraint into a global rule.

## 3. Fill intent gaps

Ask one or two focused questions about missing or changed preferences, ideally offering four to six choices and an optional free-form answer. For updates ask what is missing or no longer true, not a full interview from zero. Use a structured question tool if available, plain questions otherwise. Skip answered questions. Separate preferences from product decisions and organizational safety constraints.

## 4. Draft a minimal change

Cluster only non-default, supported preferences into sections that earn their place: response style, autonomy, understanding, delegation, code/prose, verification, process, or skills. No required symmetric section set. Keep rules operational and reference existing skills rather than pasting them. Name the user generically in imperatives.

For updates, edit contradicted sections and add genuinely new rules; do not silently erase established style or uncontradicted rules. Frontmatter must have one YAML scalar description naming the handle and relevant invocation context, not generic coding keywords. Follow [create-skill](../create-skill/SKILL.md): omit invocation restrictions by default for new modes and preserve an existing explicitly accepted invocation preference unless the user requests changing it. Host discovery is not execution permission. A personal mode cannot override higher-priority instructions or grant publish/merge/deploy authority.

## 5. Review before durable edits

Present the proposed destination and complete draft or focused diff, with a compact rationale separating explicit instructions, recurring evidence, and unresolved inferences. Apply unslop to the draft. Wait for the user's approval of the durable preference edits; a request to inspect or propose is not approval to install. Do not commit raw evidence. Do not write a persistent draft before authorization; show it in the response instead.

After approval, apply only the approved subset via create-skill's conventions. Subjective fit is evaluated with the user, not a fabricated benchmark. Iterate on wording without expanding the approved scope. Any demonstration task needs its own authorization. Report the actual path, create/update outcome, and remaining unresolved preferences. Commit, push, PR, or user-wide installation requires separate applicable authorization; never publish automatically.

Use create-skill alone for a task-specific workflow or a single narrow habit that does not require a personal mode.

