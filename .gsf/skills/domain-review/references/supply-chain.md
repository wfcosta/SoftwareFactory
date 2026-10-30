# Dependency, build and supply-chain evidence

Use [domain review](../SKILL.md), the independent security review and the actual release provenance contract when delivering an artifact. Do not add runtime dependencies or executable tooling to the Markdown-only factory distribution.

## Inputs

Obtain manifests and lockfiles, actual package manager/resolver versions and registries, transitive dependency graph, container base/runtime images, build/CI configuration and identity, artifact digests, license policy, vulnerability sources/tool versions and accepted exception rules. Identify whether real provenance, SBOM generation, signing and verification infrastructure is available; unsupported facilities are explicit evidence gaps, never fabricated attestations.

## Sequence and decisions

1. Review direct and transitive additions/removals, source registry/package identity, install/build hooks and pinned resolution. Use the ecosystem's actual lock/frozen-install semantics; record remaining nondeterminism, external downloads and platform-specific resolutions. Pin images by immutable digest where the product supports it and record the actual architecture/base layers; a mutable tag or dependency range is not immutable identity.
2. Trace untrusted contribution inputs through CI: workflow/action/plugin pins, reusable workflows, package scripts, caches and artifact handling. Minimize token/job/environment permissions; separate untrusted validation from privileged signing/publication and protect release approvals. Never expose publication secrets to arbitrary fork code or treat a successful CI job as a trusted artifact without source/configuration identity.
3. Inspect licenses and notices for redistributed direct/transitive code and images under the product's accepted license policy. Record unresolved/unknown licenses and owner decisions; do not invent legal approval. Preserve existing legal notices. Scan the exact resolved dependencies/image with actual vulnerability database timestamp and scanner scope; classify exploitability/reachability, affected versions, severity and fix options. A clean scan is time-bounded evidence, not proof of absence of vulnerabilities.
4. Build only when explicitly assigned, in the owned product environment with recorded toolchain/configuration/inputs. Identify outputs by cryptographic digest and connect them to source commit, dependency locks, build identity and real provenance receipts. A rebuild's test result applies only to the tested artifact unless reproducibility/equivalence is established. Do not promote a different mutable output.
5. Generate/inspect an **SBOM** when real tools support it, identify format/tool/version and bind it to the artifact digest; record missing nested/bundled/runtime components. If real signatures/attestations exist, verify subject digest, issuer/key identity, trust root, expected builder/source and freshness/revocation policy. A signature from an untrusted key or an SBOM file alone is not safety. If unavailable, record the exact gap and apply the accepted release policy; a required provenance/signature control blocks release when absent.
6. Define ongoing response: inventory consumers of an affected artifact/digest, choose patch/rebuild/removal under accepted policy, rerun affected checks/reviews and retire compromised outputs. Exceptions need authentic owner, scope, rationale, compensating controls and expiry; no self-issued permanent waiver.

## Evidence, failure and recovery

Report dependency/image diffs, lock/build/CI identities, effective permissions, licenses/notices, scanner version/database age and findings, immutable artifact/SBOM/provenance/signature references and verification results. On integrity mismatch, untrusted provenance, disallowed license or unacceptable vulnerability, quarantine the output and block promotion. Rebuild from verified inputs or use a previously verified compatible artifact under separate authority; preserve evidence and revoke compromised publication identities through authorized operators. Do not merely suppress the finding, relabel the image or reuse an invalidated signature. Clean only owned build artifacts/caches subject to retention rules.

## Consumer acceptance scenario

A customer receives the same immutable application digest that passed the accepted checks, with attributable dependency/license inventory. Replacing a CI artifact or base image after review must cause digest/provenance verification to reject publication. A known unacceptable dependency vulnerability blocks the affected release; when optional signing infrastructure is absent the report says unavailable and does not claim a verified signature.
