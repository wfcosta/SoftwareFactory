# Contributing GSF roles and skills

## Authority

Read `.gsf/GSF_CONFIG.md` from the repository root, its configured constraints, the [worker contract](agents/WORKER_CONTRACT.md), [candidate identity](state/candidate-contract.md) and [gsf-mode](skills/gsf-mode/SKILL.md). Resolve configured paths from the repository root, not the policy directory. There is one normative lifecycle/policy contract. Guides and playbooks link it rather than restating competing rules.

## Five pillars

Every role prompt retains five sections:

1. **Role:** domain expertise and decision authority.
2. **Context:** exact inputs, instructions, candidate/policy identity and owned workspace.
3. **Task:** ordered observable actions, including important failure paths.
4. **Constraints:** prohibited mutations, trust boundary and permissions.
5. **Format:** actual report, verdict, evidence, limitations and completion event.

The coordinator alone owns shared plan/ledgers/canonical reports. Workers own their dispatch evidence and authorized implementation paths. Successful worker execution does not imply PASS; a reviewer may successfully return CHANGES. A delegate is not a second coordinator.

## Routing

Intake discovers roles under configured `paths.agents`, records impact and proposes the `plan.md` DAG. It preserves every mandatory reviewer and adds relevant specialists: database, API contract, performance, localization or user-facing review. UI/UX applicability follows the actual surface; lack of auth changes does not remove mandatory security review.

Keep PR discussion triage distinct from read-only source-comment review. Legal/API/external-constraint comments are not redundant prose; suppression changes need correctness evidence. Do not remove them merely to satisfy a style rule.

## Skill authoring

Follow [create-skill](skills/create-skill/SKILL.md). Use matching kebab-case directory/name, concrete trigger/outcome description, boolean invocation flag, complete procedure, evidence and failures. Optional references must resolve relative to the skill. Operational GSF names must be truthful and consistent; preserve source attribution without inheriting foreign coordinator identities.

The framework distributes Markdown only; `.gsf/.gitignore` is the technical exception. Policy/data use canonical structured blocks under their state contracts, not new executable generators or validators hidden in Markdown. Examples may illustrate product-language code, but are not a bundled GSF runtime. No plugin registration, model entitlement or private transcript API is assumed.

Optional model preferences live in `.gsf/state/models.md`. Select actual host-supported models or documented inheritance aliases; never fabricate diversity. Scale delegation and verification to risk and acceptance, preserving independent final review.

## Proof and review

Run [verify-gsf](skills/verify-gsf/SKILL.md) after structural or behavioral instruction changes. Exercise representative actual invocations and negative boundaries. Record exact candidate, expected/observed behavior and host receipts. Scratch products live outside the repository. Do not count source-text keyword checks as proof that an agent follows a workflow.

Keep accepted policy/instruction identities explicit across pickup. A change to candidate source invalidates affected evidence; a job report append does not. Capture corrections structurally, preferably through one owner/contract, before adding more repeated prose. Use `reflect` for proposals and require authority before durable preference/instruction changes.
