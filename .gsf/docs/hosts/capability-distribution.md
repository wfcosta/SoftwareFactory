# Local capability discovery and offline distribution

GSF core is Markdown-only. The separate executable companion supplies `gsf_connectors.capability_catalog`, `gsf_connectors.packaging` and `gsf_connectors.package_provenance`; their contracts are documented in its `CATALOG.md`, `PACKAGING.md` and `PROVENANCE.md`. These are plain companion module/document names, not paths required inside a copied core distribution. Obtain private repository access and its declared dependencies in an explicitly authorized isolated environment; reading this guide does not authorize installation or command execution.

The recipes below run from the approved companion checkout with its declared dependencies available, not an assumed-updated older installed package. Set `$CoreSource` to the complete reviewed core's inspected absolute path; replace the example `C:/work/SoftwareFactory` with the actual authorized root. Arguments containing `..` are intentionally rejected, even for sibling checkouts. Inspect ownership and existing destinations first; do not modify an unrelated dirty sibling checkout. Nothing here scans HOME, fetches external capabilities, installs a host integration or grants execution authority. Commands are recipes, not receipts that they ran.

## Find a local procedure

```powershell
$CoreSource = 'C:/work/SoftwareFactory'
python -m gsf_connectors.capability_catalog --source "$CoreSource"
python -m gsf_connectors.capability_catalog --source "$CoreSource" --query pagination --kind skill
python -m gsf_connectors.capability_catalog --source "$CoreSource" --pack api
python -m gsf_connectors.capability_catalog --source "$CoreSource" --outcome pagination --domain api
python -m gsf_connectors.capability_catalog --source "$CoreSource" --tool unknown
```

The canonical core must be complete; a partial copy is not silently accepted. JSON `total` and `facets` describe the entire source catalog; `matched` describes filtered results. Counts come from actual source entries, not a fixed release total. Results retain source label/root, relative path, qualified ID and wrapper SHA-256, plus actual pack-table membership. Bounded heading excerpts for use/not-use guidance, prerequisites and effects may be `unknown`; excerpts are not complete procedures. Read the canonical instructions before recommending or executing anything.

Queries use lowercase alphanumeric AND terms against names, descriptions, real pack membership and extracted heading excerpts. Ranking is lexical, not semantic suitability or permission analysis. A result is neither an installed command nor a grant to use its tools.

## Filter outcomes and reviewed facets

`--outcome TEXT` applies AND-term filtering only to documented description/use-when excerpts. Each result's `outcome.evidence` retains the canonical path, one-based source-line range and truncation flag; descriptions also appear as `description_evidence`. This searches bounded documented prose, not an inferred outcome taxonomy. Both query and outcome filters are limited to 512 characters; the outcome filter must contain a term and does not change query ranking.

`--domain api|data|cloud|interface|unknown` reuses actual canonical pack selection, never names or guessed topical authority. Results expose `domain.status` and `domain.values`; known empty membership is distinct from unknown non-core membership. Existing `--query`, `--kind`, `--pack` calls remain supported.

Core does not contain structured tool/effect/environment annotations. `--tool LABEL`, `--effect LABEL`, `--environment LABEL` filter only explicit caller-reviewed annotations supplied through `--facet-input ./reviewed-facets.json`; without such annotations those dimensions remain unknown. The singular `effect` facet is not inferred from the plural source-heading `effects` excerpt. The reserved filter `unknown` selects missing annotation values, not verified absence of tools, effects or environmental requirements.

The local UTF-8 facet mapping requires exactly `{"format_version":"1.0","reviewed":true,"entries":[...]}`. Every entry requires exactly `source_label`, `path`, `sha256`, `tools`, `effects`, `environments`. Copy `source_label`, exact case-sensitive canonical entry `path` (at most 512 characters), and actual lowercase 64-hex `sha256` from the reviewed discovery result; no non-core wrapper or guessed path is eligible. Each annotation array contains at most 32 unique lowercase ASCII labels of 1–64 letters/digits/underscore/dot/hyphen starting with a letter or digit; `unknown` is reserved, and empty arrays leave that dimension unknown. Up to 8,192 records and 2 MiB per mapping file are allowed. Duplicate JSON keys/records/values, unknown fields or entries, non-finite JSON numbers and stale source hashes fail closed, including records outside the requested result filters.

```powershell
python -m gsf_connectors.capability_catalog --source "$CoreSource" --facet-input ./reviewed-facets.json --outcome pagination --domain api --tool read --effect read-only-review --environment local
```

Prepare and explicitly approve that local mapping first; example labels above are caller assertions, not verified facts about a procedure. Mapping provenance in each annotated dimension retains file path/record index, source label, canonical path and actual wrapper hash. `reviewed: true` is the caller's acknowledgement, not independent verification or execution authority. Unmapped entries stay unknown. No automatic mapping lookup, host probing or permission inference occurs.

All filters combine with AND. `facets` still counts the complete catalog before filtering: kind/pack counts, outcome documented/unknown status counts, and domain/tool/effect/environment `{values: {label: count}, unknown: count}`. The companion's `CATALOG.md` provides the complete schema and API signatures.


## Compare only explicitly authorized scopes

```powershell
python -m gsf_connectors.capability_catalog --source "$CoreSource" --compare-scope --scope project=./example-plugin
python -m gsf_connectors.capability_catalog --compare-scope --scope project=./project-skills --scope personal=./personal-skills
```

These example directories must already exist and be authorized for inspection. Repeat `--scope LABEL=PATH`; comparison requires at least two distinct labelled roots, counting optional `--source` as label `source`. The first `=` separates the label and path, allowing Windows drive-letter paths. Duplicate labels, normalized absolute roots or actual filesystem `(device, inode)` directory identities fail rather than manufacturing collisions through path aliases.

Supported roots are canonical core; a local/plugin root with immediate `skills/<name>/SKILL.md` and/or direct `agents/<name>.md`; an immediate skill collection or directory named `agents`; or a single skill directory containing `SKILL.md`. Unsupported layouts are not guessed. Arbitrary reference Markdown is not a capability, and explicit non-core roots have unknown pack membership (`packs: null`).

Collision groups preserve every source's label, path, kind, qualified ID and content hash, including cross-kind homonyms. They are computed across complete discovered scope catalogs before optional result filters. The same name does not establish equivalent behavior. `precedence` remains `unknown`: labels, enumeration and argument order do not prove host resolution order. Only named roots are inspected; there is no HOME scan, implicit personal/project discovery, host probing or ancestor catalog search. Existing ancestors are checked only for path safety.

## Produce an offline external shortlist

Prepare an explicitly approved local UTF-8 JSON array, for example `external-catalog.json`:

```json
[
  {
    "name": "Example pagination helper",
    "url": "https://example.org/capabilities/pagination",
    "license": "MIT (user-supplied claim)",
    "description": "Review pagination boundaries and continuation handling.",
    "requirements": ["Manual compatibility review", "Explicit execution authorization"],
    "publisher": ["unknown"],
    "risks": ["unknown"]
  }
]
```

```powershell
python -m gsf_connectors.capability_catalog recommend --catalog ./external-catalog.json --query pagination --limit 5
```

Each record requires exactly those seven fields; the old five-field schema is not accepted. `requirements` is an array of at most 32 nonempty strings of at most 512 characters (an empty array does not prove prerequisite completeness). `publisher` and `risks` are each arrays of 1–32 nonempty strings of at most 512 characters; explicitly use `["unknown"]` when evidence is absent, never guess a publisher from the URL. Names are limited to 128 characters, URLs to 2,048, license claims to 256, descriptions to 4,096, the local file to 2 MiB and records to 1,000. Duplicate keys, non-finite JSON numbers, disallowed controls and duplicate name/URL records fail. URLs must be absolute HTTP(S) without user/password credentials, query strings or fragments; secret-bearing URL parameters are rejected, not redacted or fetched. Do not include secrets elsewhere in records. The query must contain a term; `--limit` accepts 1–100 (default 10). All records are validated, not just shortlisted ones.

Output preserves supplied publisher/risk arrays, descriptions, requirements, license claims and local record index with `trust: user-supplied, unverified`, `publisher_verified: false`, `risks_verified: false`; compatibility and use/not-use guidance remain unknown. Approval of the local record set is the caller's assertion, not independent verification. Unknown risks are not verified absence of risks. `network_accessed` and `installed` are false. This is a static lexical relevance shortlist, not endorsement of safety, licensing, quality or suitability. No registry contact, download, installation or host configuration occurs.

## Export a reviewed selection

See [plugin export](plugin-export.md) for closure and host-format details. Required arguments are `--source`, `--host`, `--pack` and `--output`. Supported hosts are `cursor`, `claude`, `agent-plugins`, `codex`, `copilot`, `devin`; packs are `all`, `api`, `data`, `cloud`, `interface`. The Security Markdown composition does not establish `--pack security`. Devin exports a native skills-only plugin, not native roles or an installed qualification.

```powershell
python -m gsf_connectors.packaging --source "$CoreSource" --host claude --pack api --output "$env:TEMP/gsf-api-claude"
python -m gsf_connectors.packaging --source "$CoreSource" --host agent-plugins --pack api --minimal --output "$env:TEMP/gsf-api-portable-minimal"
python -m gsf_connectors.packaging --source "$CoreSource" --host codex --pack api --minimal --output "$env:TEMP/gsf-api-codex-minimal"
python -m gsf_connectors.packaging --source "$CoreSource" --host copilot --pack api --minimal --output "$env:TEMP/gsf-api-copilot-minimal"
python -m gsf_connectors.packaging --source "$CoreSource" --host devin --pack api --minimal --output "$env:TEMP/gsf-api-devin-minimal"
```

Each output must be a new external owned destination with an existing parent, disjoint from source. Never delete an existing output simply to rerun. Default export retains the whole public tree; `--minimal` retains mandatory policy/legal/state/adoption/setup/mode instructions and selected entries plus transitive local-reference closure. Directory dependencies conservatively retain subtrees. Minimal is not a promised size reduction and still captures/recaptures the complete classified public source. Canonical bytes are unchanged; missing mandatory sources or references fail closed. Jobs, logs, bug evidence and private model preferences, including case-equivalent `Models.md`, are excluded without reading their contents.

Inspect `gsf-package.json`, `selected_entries`, `selected_wrappers`, `semantic_loss`, complete `source_inventory`, retained `included_source_inventory` and `omitted_public_files`. Agent Plugins, Codex and Devin expose selected skills, but roles remain bundled references only. Devin's descriptive native manifest and name/description-only wrappers grant no tools; its omitted `allowed-tools` is not a sandbox (that field auto-approves tools rather than restricting unlisted tools). Copilot has no plugin manifest (`generated_manifest: null`); its role profiles explicitly restrict tools to `read` and `search`, disable model invocation and allow user invocation. It also emits repository orientation and two manual help/bootstrap prompts with exact `generated_surfaces` custody in both modes, not whole-factory automatic activation. Surface support/precedence and canonical-reference loading remain unproven. Unsupported execution needs remain blockers, not permission inferred from role prose.

Export is not installed discovery, actual invocation or product qualification. No hooks, credentials, server processes, automatic MCP registration or tool/model grants are bundled. Bundled policy is reference material, **not the active product policy**: product configuration is not supplied by installing an export. Resolve the actual product root, its accepted `.gsf/GSF_CONFIG.md`, constraints and frozen job baseline; separate adoption/setup authority is required. Do not use a plugin directory as the product workspace or overwrite product files during Copilot adoption. Use [plugin-acceptance](../../skills/plugin-acceptance/SKILL.md) to separate structural, installed-discovery, invocation and removal evidence for an exact host/version.

Only portable `agent-plugins` accepts optional `--mcp-config FILE`: an explicitly approved public inert root `mcp.json`, separately receipted as external input, not a running server or native configuration conversion. Other hosts reject the option before reading its input; default export discovers/emits no MCP configuration. Never supply secrets or private host configuration. See [plugin export](plugin-export.md) and companion `PACKAGING.md` for actual restrictions.

For an already exported `$bundle`, `python -m gsf_connectors.package_validation --package "$bundle" --profile devin --require-receipt` performs offline structure/closure and generated-receipt correspondence; substitute its actual profile. Companion `PACKAGE_VALIDATION.md` explains optional inclusion-witness replay and Copilot/MCP component custody. Neither consistent self-hashes nor replay authenticate omitted source bytes, publisher identity or the accepted product baseline: preserve separately accepted source/provenance evidence. Companion `NATIVE_SUPPORT.md` retains distinct stage evidence and unknowns; its native probe is Claude-specific. No offline result establishes installed discovery or invocation.

## Lock an approved bundle and verify against external trust

First review an actual exported bundle. In the following PowerShell recipes, `$bundle` is that approved directory; `$canonicalLocator` and `$approvedRevision` are actual approver-supplied upstream identity assertions (prefer an immutable revision). The example output parents must already exist and be owned. The lock and mirror must be new external paths; neither belongs inside the bundle, and the mirror must not contain the trusted lock.

```powershell
python -m gsf_connectors.package_provenance lock --bundle "$bundle" --output C:/approved-locks/gsf.lock.json --source-locator "$canonicalLocator" --source-revision "$approvedRevision" --approved
python -m gsf_connectors.package_provenance verify --bundle "$bundle" --trusted-lock C:/approved-locks/gsf.lock.json
python -m gsf_connectors.package_provenance licenses --bundle "$bundle" --trusted-lock C:/approved-locks/gsf.lock.json
python -m gsf_connectors.package_provenance mirror --bundle "$bundle" --trusted-lock C:/approved-locks/gsf.lock.json --output C:/offline-mirrors/gsf-approved
python -m gsf_connectors.package_provenance verify --bundle C:/offline-mirrors/gsf-approved --trusted-lock C:/approved-locks/gsf.lock.json
```

`--approved` acknowledges approval of that specific local bundle, not publisher authentication. Locator/revision are recorded literally, not inferred from Git or authenticated. A lock is an immutable record, not a mechanism making the filesystem immutable. Keep it in separately trusted storage/distribution: an attacker replacing both lock and bundle can make them agree. `verify` requires the explicit external `--trusted-lock`; an embedded lock is ordinary covered content, never an automatic trust anchor. SHA-256 proves agreement with the supplied inventory, not publisher identity or authenticity (`publisher_authenticated: false`).

Verification compares the complete covered public file set, lengths and digests, including a second inventory pass; added, missing, renamed, changed or observed-mutating files fail. It never repairs bytes or refreshes the expected lock. Fixed private repository/runtime exclusions remain outside that public claim; empty directories, metadata and permissions are not file-inventory evidence. Use a quiescent access-controlled bundle: safe-read checks are not an adversarial filesystem snapshot.

For read-only update review, companion `PROVENANCE.md` defines `python -m gsf_connectors.package_provenance diff --bundle "$candidateBundle" --trusted-lock C:/approved-locks/gsf.lock.json --source-locator "$candidateLocator" --source-revision "$candidateRevision"`. Supply a separately exported candidate and explicit approver assertions; this compares paths/lengths/digests without advancing the baseline, repairing bytes or approving the update. Exit 0 can report changes: inspect the actual result. Retain the immutable accepted lock rather than making a replacement candidate its own trust anchor.

## Keep legal unknowns explicit

`licenses` first verifies the bundle against the external lock. It inventories local LICENSE/LICENCE/NOTICE documents and conventional suffixes as ancestor-directory evidence, not inferred applicability or a license grant. Optional explicit references use exact inventory paths:

```json
{
  "skills/example/SKILL.md": ["legal/TERMS.md", "COPYING.txt"]
}
```

```powershell
python -m gsf_connectors.package_provenance licenses --bundle "$bundle" --trusted-lock C:/approved-locks/gsf.lock.json --references C:/approved-locks/legal-references.json
```

This example mapping is usable only if every named resource and document actually exists in the trusted inventory; substitute reviewed exact paths. References are caller assertions, not extracted links, fetched documents or independent attestations. Preserve the mapping with approval evidence.

Each public resource reports `evidence-present` or `unknown`. Evidence-present does not mean licensed; even an empty, opaque or inapplicable document can be evidence of a local file. Unknown never grants permission and does not itself automatically authorize or prohibit mirroring. `license_grant_inferred` and `license_compatibility_certified` are false. Human review must resolve actual coverage, grants, attribution, obligations and compatibility; retain unresolved gaps rather than manufacturing legal approval.

## Focused companion evidence routes

Use these plain companion document names from the approved checkout; they are not links required inside copied core. Stable public modules have distinct contracts, not blanket runtime support:

| Need | Published route and boundary |
| --- | --- |
| Bounded canonical context | `CONTEXT_VIEWS.md`: `gsf_connectors.context_views` renders measured UTF-8 description/reference/full views, validates saved source pins and retrieves whole selected sources; no token/cache/provider-performance claim or procedure execution. |
| Observe an approved stdio target's tools | `TOOL_INVENTORY.md`: `gsf_connectors.tool_inventory` starts an independently approved target and initializes/lists every SDK-visible page, never calls tools. Startup is execution, not a read-only sandbox; review private evidence and pinned SDK prerequisites first. |
| Compare captured MCP surfaces | `MCP_SURFACE.md`: `gsf_connectors.mcp_surface` consumes separately pinned inventories and caller-reviewed workflow bindings, without starting a target; changed schemas are structural review triggers, not semantic compatibility or permission proof. |
| Native Responses client tool search | `PROGRESSIVE_TOOLS.md`: `gsf_connectors.progressive_tools` produces native registration/search-output objects from independently accepted descriptors and disclosure bindings for an explicitly supported model/deployment. The application owns provider requests/history; this is not an MCP wire capability or automatic function dispatch. |
| Translate visibility/preapproval intent | `TOOL_CONTROLS.md`: `gsf_connectors.tool_controls` is an inert exact-target translator; built-in selection and additional preapproval differ, and neither claims complete MCP/plugin-tool restriction or runtime enforcement. |
| Inspect explicit code-loading roots | `LOADER_INVENTORY.md`: `gsf_connectors.loader_inventory` statically inventories only its exact supported root/host/profile surfaces, without loading inspected code; not installed activation, precedence or quarantine proof. |
| Review CI declarations | `CI_PRIVILEGES.md`: `gsf_connectors.ci_privileges` reads explicitly selected local GitHub Actions workflows; no workflow execution, action fetching, effective-token certification or approval. |
| Review pinned documentation changes | `DEPRECATION_RADAR.md`: `gsf_connectors.deprecation_radar` compares separately accepted baseline/candidate manifests via configured digest-pinned catalog reads. A byte change is a review trigger, not deprecation; configured HTTPS reads need separate network/data authority. |

Follow each module's actual interface, input pins, output privacy and effect/grant boundaries; do not infer commands from this routing table. Unknown installation, discovery, activation, enforcement, invocation and product stages remain unknown. Pending transport/new-capability work is not part of these published contracts and cannot be advertised as supported MCP behavior.

## Offline mirror, receipts and recovery

`mirror` verifies the supplied bundle against the trusted inventory, copies covered frozen bytes into owned sibling staging using exclusive creation, verifies staging and re-inventories source before atomic no-replace publication. Existing destinations, including empty directories, are refused and preserved. Unsupported atomic publication platforms fail closed. The mirror contains covered public files only, with no added receipt or lock; retain stdout JSON separately and keep the trust anchor external. Verify again at the receiving location using the independently trusted lock. This is local offline copying, not URL fetching or host installation.

Catalog commands emit JSON; input failures produce diagnostic JSON on stderr and exit 2. Provenance commands emit JSON receipts on stdout and fail unsafe/malformed/over-budget/mismatched inputs or existing destinations with exit 2 and diagnostics on stderr. Packaging emits its own source/output receipt and fails nonzero rather than producing a partial successful package. Preserve original failures and actual source/output identities; never overwrite expected evidence to get agreement. On interruption reconcile owned staging/output before retry, and remove only separately authorized owned temporary material after receipts are retained. No recipe here establishes installed discovery, invocation, licensing approval or publisher authentication.
