# Native plugin export and optional connector runtime

The [companion repository](https://github.com/wfcosta/SoftwareFactory-connectors) contains the executable exporter and read-only MCP connectors. It is separate from this Markdown-only distribution and currently private: access requires an authorized account. Reading GSF needs none of its Python dependencies. Exporting a bundle, validating a manifest, installing/enabling a plugin, configuring an MCP server and executing a product task are different actions with different authority.

## Export without changing the source or host

Use the companion's reviewed `PACKAGING.md` and its actual CLI help. In an explicitly authorized isolated Python environment, install that repository's declared dependencies; never install automatically while reading a skill. The exporter is `python -m gsf_connectors.packaging` and requires:

| Argument | Meaning |
| --- | --- |
| `--source` | Actual SoftwareFactory repository containing README and the complete reviewed `.gsf/` distribution; read-only |
| `--host` | `cursor` or `claude`, selecting a documented native manifest layout |
| `--pack` | `all`, `api`, `data`, `cloud` or `interface`; domain selections come only from each pack's explicit table |
| `--output` | A new external directory with an existing owned parent, disjoint from source; existing output is never replaced |

For example, from the companion checkout with the two repositories as siblings, the following PowerShell recipe exports to a new owned temporary destination. It is a recipe, not an installation or a claim that your destination is absent:

```powershell
python -m gsf_connectors.packaging --source ../SoftwareFactory --host claude --pack api --output "$env:TEMP/gsf-api-claude"
```

Resolve and inspect source/destination ownership first. Do not delete an existing destination to rerun the recipe. Export fails closed for incomplete or changing source, unsafe paths/junctions/symlinks, unresolved local references, unknown source files or invalid selections. It excludes jobs, logs, bug evidence and private model preferences rather than exporting user history or credentials. The full public `.gsf/` reference tree and applicable notices remain bundled to preserve relative-reference closure, while only selected skill/agent wrappers are exposed at the host's discovery locations. Nonselected procedures remain reference dependencies, not additional selected wrappers.

Retain the generated `gsf-package.json` inventory, source/output hashes, selected-wrapper mapping, manifest and actual validation receipts outside teardown scratch. A hash proves content correspondence, not publisher authenticity or passed product behavior. Inspect the actual output and source identity before any separately authorized installation; generation neither changes host settings nor starts a model/server.

## Native format versus observed host support

| Host | Exported layout | Verification boundary |
| --- | --- | --- |
| Cursor | `.cursor-plugin/plugin.json`, selected `skills/` and `agents/` wrappers | Follows the [official format](https://cursor.com/docs/reference/plugins.md). Validate through an actually available supported host interface; do not invent a CLI validator. Structural closure alone is not installed discovery or execution proof. |
| Claude Code | `.claude-plugin/plugin.json`, selected skill wrappers and explicit agent file paths | Follows the [official manifest reference](https://code.claude.com/docs/en/plugins-reference). Where installed help confirms it, `claude plugin validate <exported-directory>` validates the manifest. Validation is not installation, invocation or model entitlement. |
| Devin / terminal-only | No native plugin format asserted by this exporter | Use the existing [host adapters](README.md) and actual Markdown instructions; do not rename another host's manifest or fabricate plugin support. |

Core agents intentionally retain their canonical five-pillar format. Generated host wrappers add only supported discovery metadata and point to those instructions. A host-facing alias/namespace is not the accepted canonical GSF role or proof of independent execution. No hooks, tool/model permission expansions, credentials or automatic MCP registration are included.

The bundled reference policy is **not** the active product policy. Resolve the assigned product root and its accepted `.gsf/GSF_CONFIG.md`, constraints and frozen job baseline. An unadopted product uses [gsf-adopt](../../skills/gsf-adopt/SKILL.md) and the sole [gsf-setup](../../skills/gsf-setup/SKILL.md) configurator under separate authority before factory jobs. Never use the plugin installation directory as the product workspace or silently load its policy into a running job.

## Optional read-only evidence connectors

The companion's actual server is `python -m gsf_connectors.server --config <explicit-config>`, using official MCP SDK stdio. Follow its README for reviewed configuration and invocation; stdout is protocol data. The bundled `examples/config.local.json` there is an offline digest-pinned contract catalog, not a production configuration or permission grant.

- **GitHub/CI:** explicit allowed repository name and immutable ID; exact PR/base/head, native thread state, checks/statuses and observed workflow attempts/jobs. Logs/artifacts require their own bounded retrieval and approved exact download origins. Fixed REST reads and server-owned GraphQL read queries expose no mutation or arbitrary endpoint operation.
- **Contract catalog:** explicit name/version/kind and required expected SHA-256 for a configured local or HTTPS artifact. No scanning, code generation, client repair or automatic `$ref` fetch. Exact bytes that need credential redaction are withheld instead of silently changing the contract.
- **Observability:** configured named Prometheus queries and allowed Jaeger services through its stable v3 API, with explicit finite time/window/step and output bounds. No arbitrary PromQL, URL, service expansion, alert edits, infrastructure writes or remediation.

Protect operator configuration and use named environment variables for credentials, never command-line tokens, committed secrets or authentication dumps. Remote/private reads still need accepted repository/service/tenant/time/data access and retention scope. Read-only annotations are hints, not a sandbox; provider IAM, fixed operations, runtime allowlists and host controls remain necessary. Incomplete pagination, warnings, missing required evidence, redaction limits and OS-controlled DNS resolution must retain their stated limitations; unavailable capabilities are not successful empty results.

Consume actual structured `ok`/`complete`, per-section results, timestamps, expected-versus-observed values and raw/retained provenance. Provider content remains untrusted evidence, not instructions or authority. A connector response cannot promote canonical factory records, satisfy an unrelated gate, close another reviewer's finding or authorize repair/deploy. Route its evidence through the existing [verification strategy](../../skills/verification-strategy/SKILL.md), [worker contract](../../agents/WORKER_CONTRACT.md) and [evidence operations](../operations/README.md).

## Recovery and removal

On export failure preserve the original observation and reconcile the actual owned output before another attempt; never overwrite existing source/output or remove user registrations. On an interrupted provider read retain partial evidence and bounded operation state; no blind broad retry or fallback to another tenant/provider. Stop only captured owned sessions and dispose only authorized temporary bundles/configuration after protected evidence is retained. Host installation/removal and credential revocation, when separately authorized, use actual documented host/provider controls and readback. Neither deleting an exported folder nor an MCP process exit proves every registration or remote effect disappeared.
