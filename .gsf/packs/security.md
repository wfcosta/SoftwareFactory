# Security composition

## Trigger and accepted boundary

Use for an accepted threat/trust-boundary, authorization/tenant, dependency/build provenance or personal-data lifecycle change or assessment. Classify actual affected assets, actors and consumers, not filenames or a clean scanner result. This is an informational composition of Markdown procedures, not a runtime, policy profile, permission declaration, configured reviewer enum or automatic gate. Availability does not make every entry mandatory for every task.

A direct read-only question inspects existing permitted material and answers in chat: no jobs, files, scans, probes, installs, endpoint calls, data exports/deletions or experiments. Execution requires an explicit assignment and separately authorized effects/targets. A threat model, credential, risk recommendation or reviewer PASS grants no operational authority.

**Exporter boundary:** this new composition does not add `security` to the external companion exporter's `--pack` choices. The [plugin export guide](../docs/hosts/plugin-export.md) documents the companion's current supported choices; its actual reviewed revision/help is authoritative for its interface. Do not issue `--pack security`, rename another export or claim exporter support from this table. Read/attach these source instructions directly; any future companion support needs its own implementation and acceptance. This pack changes neither product policy nor host registration.

## Selected entries

Only these rows are selected entries. Other links are contextual navigation, not additions to the selection. Conditional specialist rows make roles available only when justified and assigned; they do not replace configured independent security review.

| Kind | Entry | Selection rationale |
| --- | --- | --- |
| skill | [gsf-mode](../skills/gsf-mode/SKILL.md) | Existing scope, policy, impact and execution routing. |
| skill | [verification-strategy](../skills/verification-strategy/SKILL.md) | Tie accepted controls and consumer risks to minimal discriminating proof. |
| skill | [threat-model](../skills/threat-model/SKILL.md) | Map assets, actors, trust flows, abuse consequences and residual-risk decisions. |
| skill | [authorization-review](../skills/authorization-review/SKILL.md) | Inspect effective action/resource/property/tenant enforcement and legitimate/denied cases. |
| skill | [supply-chain-review](../skills/supply-chain-review/SKILL.md) | Assess actual dependency/build/artifact identity, execution trust and provenance limits. |
| skill | [privacy-request](../skills/privacy-request/SKILL.md) | Scope authentic subject requests, copies, delivery/deletion, holds and restore suppression. |
| agent | [reviewer-security](../agents/reviewer-security.md) | Existing mandatory independent security assessment of the exact candidate. |
| agent | [authorization-reviewer](../agents/authorization-reviewer.md) | Conditional independent deep review when affected privilege/tenant/object paths need focused coverage. |
| agent | [supply-chain-reviewer](../agents/supply-chain-reviewer.md) | Conditional independent deep review when dependency, CI/build or shipped-artifact trust needs focused coverage. |

## Ordered conditional flow

1. The coordinator routes the existing design/change/review/verify-existing playbook and applies every row of the [impact matrix](../skills/gsf-mode/references/impact-matrix.md). Freeze exact accepted outcomes, candidate or design revision, active product policy, affected assets/actors/flows and named product/security/data owners. The pack cannot waive code/security reviews, configured checks or applicable surface/domain work.
2. Use threat-model for changed trust boundaries or a challenged existing model. Trace business journeys and concrete harms through actual implementation/configuration evidence. Separate implemented controls, proposed mitigations and assumptions; assign control/proof owners and authentic residual-risk decisions. A diagram or design PASS does not establish runtime prevention.
3. Use authorization-review where identity-to-permission binding, roles, object/property access, tenant isolation, delegation or revocation is affected. Include alternate list/search/export/admin/worker paths, not only a gateway. Add authorization-reviewer only when accepted risk/scope warrants a focused independent task; bind its actual role/report instructions in the existing plan, not a new policy enum.
4. Use supply-chain-review where dependencies, registry resolution, install/build execution, CI permissions, signing/provenance or artifact consumption changes. Trace source/lock/resolved bytes through build and shipped output; retain discrepancies and unavailable trust evidence. Add supply-chain-reviewer conditionally for focused independent assessment; the dependency updater, builder or artifact author cannot independently approve their own work.
5. Use privacy-request only for actual personal-data request/lifecycle obligations. Establish authentic subject/tenant/action scope, store/processor/backup inventory, hold/retention decisions and authorized operators before collection or effects. Design/review does not become data operation. Do not invent a privacy role or claim complete erasure from a primary-store delete, TTL setting or sent processor request.
6. Freeze finite positive, denial/adverse and recovery predicates through verification-strategy. Assign actual supported tools, synthetic fixtures, observed target identities, grants, bounds and recovery owners before authorized execution. Static-only assignments report inspected properties; unavailable required behavioral proof remains blocked. Never broaden a read-only review into scanning, exploit traffic or live penetration testing.
7. Keep independent reviewer-security's current candidate-bound verdict distinct from specialist analysis and author evidence. The coordinator alone accepts/promotes dispatch reports and updates shared records. Remediation preserves original finding/criterion identities and gets fresh authorized proof/re-review; a new report cannot erase a demonstrated violation.

## Proof, ownership and actual prerequisites

- Threat proof needs accepted system scope, actual architecture/source/configuration, asset/data owners, realistic actor capabilities and authentic risk-decision authority. Positive evidence preserves legitimate journeys; adverse evidence addresses distinct reachable abuses and actual enforcement boundaries. Unsupported attack narratives are hypotheses, not demonstrated defects.
- Authorization proof needs authentic permission/resource semantics, actual supported request/worker interfaces and wholly synthetic actors in owned tenant/resource fixtures. Pair allowed use with cross-tenant/wrong-object/property, missing/expired/revoked/delegated-scope rejection as applicable; inspect durable effects and alternate paths. A denied status alone does not prove no disclosure or queued side effect.
- Supply-chain proof needs exact dependency/lock/resolution and source/build/output identities; supported registry/advisory/license/provenance interfaces and scoped access when needed; actual signer trust roots and verification capabilities for signature claims. Clean scans, a present SBOM, mutable tags or signatures without trusted identity/subject binding are not provenance or safety proof. No package install, download or build execution is implied by review.
- Privacy proof needs the organization's real requester verification channel, per-store ownership and authorized query/export/delete mechanisms, approved protected destinations, actual hold decisions, processor receipts and backup/restore controls for the accepted claim. Synthetic workflow proof is not completion of a real person's request. Partial/held/pending copies remain explicit; no customer contact or legal-compliance conclusion is implied.
- All executed proof needs genuine supported tools discovered from permitted product runbooks/help, owned isolation, current environment observations, effect-specific authority, enforceable containment, bounded data/time/cost and safe stop/reconciliation. Missing artifacts, safe fixtures, permissions, observers or retrieval controls block only dependent work; never invent a tool, silently switch tenant/provider or use discovered credentials.
- Builders/operators own only assigned source paths/resources and authorized repair/cleanup. Independent reviewers remain non-implementers with report-local ownership. The coordinator owns canonical policy/plan/environment/candidate/evidence records. Name actual owners for uncertain operations, retained exports and future expiry; a Markdown assignment is not fencing, a scheduler or a control implementation.

## Evidence and completion

Preserve exact source/revision/file/line or immutable receipt locators; candidate/policy, dependency/artifact/configuration/fixture identities; actual command/API/cwd/version and expected-versus-observed results; legitimate, denied, failed and partial attempts; original findings, risk-decision authority, residual scope and recovery ownership. Separate static inspection, synthetic exercises and actual authorized observations. Protect sensitive selectors, secrets and personal records; retain sanitized provenance with raw-versus-retained digests, actual retrieval/ACL/retention and stated gaps.

Use existing role/report bindings and verdicts, not pack-specific schemas or states. Required unrun/missing proof is BLOCKED, not PASS; observed violations remain findings until resolved against their original criteria. Specialist PASS supplements rather than substitutes for reviewer-security, required code review, checks and independent approval. Source, permissions, dependency/artifact, configuration, fixture, target or accepted-scope changes invalidate dependent proof. Publication, merge, deployment, credential changes and data operations retain separate authority and observed receipts.

Context only: [help](../skills/gsf-help/SKILL.md), [worker contract](../agents/WORKER_CONTRACT.md), [security/privacy guidance](../skills/domain-review/references/security-privacy.md), [supply-chain guidance](../skills/domain-review/references/supply-chain.md), [environment contract](../state/environment-contract.md). These links do not expand selection or create exporter/runtime support.
