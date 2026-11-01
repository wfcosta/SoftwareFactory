# Data composition

## Trigger and accepted boundary

Use for accepted schema/migration/backfill changes or a bounded assessment of persisted-data semantics, reconciliation or recovery. Classify actual readers/writers, authoritative data and business invariants, not only migration filenames. This informational composition is neither a configuration profile nor an installer, permission source, executable or new schema. Native packaging changes none of those boundaries.

Direct read-only questions use existing permitted evidence and answer in chat without jobs, files, runs, queries against new endpoints or experiments. Execution needs accepted scope and explicit effects/targets, owned data and recovery authority. A request to assess a backup does not authorize a restore or production repair.

## Selected entries

Only this table selects entries; contextual links elsewhere do not. Entries are available for conditional use, not mandatory universal stages.

| Kind | Entry | Selection rationale |
| --- | --- | --- |
| skill | [gsf-mode](../skills/gsf-mode/SKILL.md) | Existing task routing and lifecycle. |
| skill | [verification-strategy](../skills/verification-strategy/SKILL.md) | Map semantic and durability invariants to bounded proof. |
| skill | [domain-review](../skills/domain-review/SKILL.md) | Engine-specific migration, coexistence, restore and privacy procedures. |
| skill | [fixture-design](../skills/fixture-design/SKILL.md) | Discriminating authorized data and independently derived expected values. |
| skill | [compatibility-check](../skills/compatibility-check/SKILL.md) | Supported reader/writer/schema combinations and direction. |
| agent | [db-specialist](../agents/db-specialist.md) | Migration, storage and query design; not implementation authority. |
| agent | [data-quality-reviewer](../agents/data-quality-reviewer.md) | Independent provenance and semantic quality review, not population certification. |
| agent | [reviewer-security](../agents/reviewer-security.md) | Independent access, tenant, retention and disclosure review. |

## Ordered conditional flow

1. Coordinator selects the existing task playbook and applies the complete [impact matrix](../skills/gsf-mode/references/impact-matrix.md). Inventory actual engine/driver/ORM versions, schema/history, volumes/distributions, readers/writers including CDC/reports/dormant jobs, tenancy, replication, retention and actual recovery capability. Unknown engine behavior or source-of-truth ownership blocks the affected design decision.
2. Freeze accepted invariants and objectives: stable keys, meanings/units, null/default handling, valid ranges, time zones/event time, duplicate/late-data policy and reconciliation tolerance as applicable. Use product requirements for thresholds; do not invent a universal zero-null rule or infer complete-population quality from a sample. db-specialist designs storage/migration; data-quality-reviewer independently assesses semantic/provenance proof rather than authoring its own approval.
3. Design finite representative/adverse fixtures through fixture-design, with expected values derived independently of the transform. Name exact snapshot/source revision, schema, clock, tenant/key bounds, access controls, construction/reset and deletion ownership. Sensitive production exports require separate authority and actual protection; synthetic fixtures do not certify production distribution or completeness.
4. For migrations, follow expand, compatible readers/writers, bounded backfill, reconcile, then separately authorized contract. Name authoritative fields during coexistence, conflict policy, engine-supported transaction/lock semantics, stable-key batches, post-commit checkpoints and actual leases/fencing. Contract waits for supported old-reader removal evidence over the accepted window; silence in traffic is not retirement.
5. For restore claims, name real backup/key identities and an isolated authorized destination. Execute a real restore and dependent reads, compare observed age/duration with accepted RPO/RTO, and verify integrity and business semantics. Backup job success alone proves neither decryptability nor recovery. If no restore claim is accepted, do not manufacture a restore stage.
6. Execute only assigned proof under actual effects/targets and bounded load/lock/lag limits. Preserve mixed-version and adverse observations. Stop at safe transaction boundaries on mismatch or resource limits; query actual committed state before retrying uncertain batches. Coordinator reconciles proposed evidence into canonical records, then required independent reviews and configured checks assess the exact candidate.

## Proof, resources and blocked claims

- Positive proof: actual migration or transform on representative authorized data, key-scoped values and business reconciliation, required old/new-reader behavior and committed writes, plus accepted lock/load bounds. Counts/checksums alone need collision, sampling and semantic limitations stated.
- Adverse proof: select null/invalid/unit/time-boundary/duplicate/late rows relevant to accepted requirements; concurrent newer writes, cross-tenant access denial, interruption after commit before checkpoint acknowledgment and bounded repeat/resume. Demonstrate convergence without lost updates or duplicate effects. Record invalid records and their accepted disposition, not merely a successful tool exit.
- One builder owns assigned migration/transform source and exact database/schema/table/tenant/key ranges, backfill checkpoint/lease and fixture lifecycle. Name backup, encryption-key, restore destination and cleanup/recovery owners separately where touched. db-specialist and independent reviewers do not gain write authority from their titles. Coordinator owns accepted specs, plans, environment and canonical evidence; workers supply assigned reports/receipts only.
- Discover actual database client, migration runner, driver versions, supported engine operations, permitted credentials, isolated snapshot/destination, live lock/lag signals and restore interface from real runbooks/help. Read queries can incur load or expose data and require authorized scope. This pack installs no tooling or dependencies and configures no access. Missing engine semantics, usable backup/key, representative fixture, isolation, target grant or recovery surface blocks its required claim rather than justifying invented SQL or a mock restore.

## Evidence and retained gates

Bind expected/observed rows to original criteria, exact source/backup/snapshot/transform/schema/engine/configuration, candidate/policy, timestamps, commands/cwd, commit/checkpoint receipts and retrievable sanitized evidence. Keep original failures, provenance and raw-versus-retained digest distinctions, actual ACL/retention/expiry and residual resource disposition. Changed transform, data, engine, coexistence order, schema or privacy policy invalidates dependent proof.

Use existing report/lifecycle formats and the data-quality-reviewer's canonical additional-plan report `review-data-quality.md`; do not add policy reviewer enums or new state schemas. Quality review does not replace schema/IAM/security review, certify unobserved populations, waive configured checks or independently approve its author's work. Union applicable specialists with mandatory code/security and all configured gates. NOT RUN/BLOCKED/observed failure cannot become PASS through an assumed rollback, sampled reconciliation or clean migration exit. Code rollback is not reversal of lost data; document actual forward repair/restore limits and outstanding recovery ownership.

Context only: [help](../skills/gsf-help/SKILL.md), [worker contract](../agents/WORKER_CONTRACT.md), [data migrations](../skills/domain-review/references/data-migrations.md), [restore/recovery](../skills/domain-review/references/restore-recovery.md).