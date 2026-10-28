---
name: teach
description: "Explain what a change or subsystem is, how it works, and why it is shaped that way using how and why. Use for teach me this or help me understand X, without changing it."
disable-model-invocation: true
---

# Teach

Explain the thing itself, not a report about your teaching process. This is a thin composition of [how](../how/SKILL.md) and [why](../why/SKILL.md), not another investigation framework or permission to edit, initialize a job, or run the product.

1. Infer the learner's goal and existing knowledge from the conversation: changing, reviewing, debugging, or first orientation. Identify the few concepts they need. Ask only if the referent or needed depth truly cannot be established; no quiz or forced interview.
2. Orient briefly in the actual code/diff. Invoke how for mechanics and why for rationale, independently and in parallel when useful and available. Pass the actual question and source anchors. For a small change, reuse already established findings or invoke only the missing half instead of duplicating research. Bound why to the question and relevant sources explicitly; its coverage map must disclose narrowed/unavailable categories. A subsystem explanation needs both mechanics and rationale, even if rationale ends as unknown.
3. Start with the plain definition and the concrete role it plays here. Give the smallest complete explanation first. Walk through a real user action or data flow, then explain the choices, edge cases and tradeoffs that matter to the learner. Cite the source anchors and rationale records that carry the explanation. A list of functions and constants is reference, not understanding.
4. Show an example, trace or small diagram where it makes the mechanism clearer. For three or more moving parts, build a short sequence of diagrams: redraw the prior parts and add one relationship at a time, rather than unveiling a dense all-at-once graph. A tool-driven demonstration requires separate execution authority; a language example is illustrative, not a hidden framework runtime.
5. Preserve why's evidence tiers, hedges, contradictions and unknowns exactly in meaning. Plain wording must not upgrade inference into author intent. If source or shared evidence is inaccessible, teach what is supported and name the gap instead of inventing the missing rationale.
6. Keep it conversational and proportionate. No pacing theater, quizzes, demands to repeat it back, metaphor replacing mechanism, or filler labels. In an interactive exchange stop naturally for the learner's response; in a one-shot answer deliver a complete explanation and put optional deeper questions at the end. Use [unslop](../unslop/SKILL.md) for plain, concise prose.

Return the explanation itself: what it is, how it works, why, and relevant limits, with lightweight citations. Do not modify code, preferences, docs, external systems or factory state under a teaching-only request.

