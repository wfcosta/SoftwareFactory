# Selecting real cloud operations

These are documented interfaces to look for, not a claim any tool is installed, authenticated or authorized. Read installed help and the product's supported version before invocation. Use the existing host terminal/API integration; do not add a client, wrapper or executable to this distribution. All effects retain the [skill's](../SKILL.md) identity, policy, locking and evidence requirements.

## Identity and readback examples

| Observed tool | Identity discovery | Additional binding/readback required |
| --- | --- | --- |
| AWS CLI | `aws --version`; `aws sts get-caller-identity` under the explicitly selected profile | Returned Account and Arn, configured region and endpoint, resource ARNs and service read operations. STS identity does not prove IAM authorization. Query the service's actual resource and operation status; an ARN alone may omit region/account for some services. |
| Azure CLI | `az version`; `az account show` | Subscription id, tenant id and principal context; explicitly scoped resource IDs and resource location from actual service reads. `az account show` alone does not validate each resource or principal permission. |
| Google Cloud CLI | `gcloud version`; `gcloud auth list --filter=status:ACTIVE --format=json`; `gcloud config list --format=json` | Explicit project ID/project number, active or impersonated service principal, resource location and full service resource name from authorized reads. Local configuration is not server-side identity; verify the principal/project through the relevant API or audit response. |
| Kubernetes client | `kubectl version --client`; `kubectl config current-context`; `kubectl config view --minify` without `--raw` | Actual API server/cluster identity, namespace and object UIDs/resourceVersions from an authorized cluster inventory and service reads; `kubectl auth can-i` for named operations can inform capability but not factory authorization. Context display names do not establish cloud account. Avoid credentials embedded in kubeconfig or raw output. |
| Other provider or console | Installed version/help or documented API version and authenticated principal display | Authoritative account/tenant/project identity, resource IDs/location/revision and the provider's durable operation lookup. Missing interfaces block corresponding claims; do not substitute a different provider. |

Identity reads can still leave access/audit records. Do not dump all environment variables, credential files, bearer headers or full configuration with secret fields. Record sanitized results and limitations. Provider-derived mutable display names are not immutable target IDs.

## Saved IaC plan example

For an existing, authorized Terraform or OpenTofu product root, inspect `terraform version` or `tofu version`, `workspace show`, supported backend configuration and the existing dependency lockfile. Use only the actual selected tool. Backend initialization, module download, state refresh and lock acquisition may have network or write effects; inspect them and obtain appropriate scope first. Do not run initialization, migration or imports as presumed harmless discovery.

A supported `terraform plan -out=<owned-external-plan-path>` (or the installed OpenTofu equivalent) produces a saved plan. Existing product variables/options are required; never invent empty production inputs. `show -json <saved-plan>` and human-readable `show <saved-plan>` permit inspection using the selected tool. JSON and binary plans can contain secret values; keep raw outputs in an approved protected external artifact store, not source or ordinary logs. Use actual host hashing to identify exact bytes, record versions and include a sanitized resource/action summary. `-detailed-exitcode` distinguishes no diff/change/error only when supported and deliberately used; none of those statuses is apply authority.

Before an authorized `apply <saved-plan>`, compare the actual backend/workspace, state fingerprint/revision, plan digest/expiry and provider targets to their accepted values. Keep native backend locking enabled. Saved-plan safety varies by version/backend; a tool's stale-plan check complements, not replaces, the service-level target/fencing/review checks. Never pipe an unreviewed new plan directly into apply. Use documented durable operation queries and read resources after any return or interruption. `state pull` output is sensitive and its bytes/serial may change during refresh; use the actual backend's stable generation/fingerprint semantics and state ownership, not an assumed universal hash meaning.

For managed change sets, retain the immutable change-set ID, template/config digest, parameters identity, current resource version and provider-reported proposed actions. Review and authorize that exact change set, then use its supported execute and describe operations. Console clicks need the same exact identity and readback evidence as CLI execution.

## Ownership and recovery lookup

- Identify whether the state lock protects only one state root while other controllers or state roots can modify the same resource. Fence those writers through native deployment controls or a real exclusive service boundary before a conflicting effect.
- Record how the host renews the lock/lease and how the target rejects stale generations. If the provider lacks fencing, do not describe a lease timestamp as enforcement. A supported single-writer deployment lock plus confirmed termination of old writers can establish exclusive control; document the actual mechanism.
- After an ambiguous result, query the provider's operation/change-set/request ID, native idempotency result and current resource version before retry. A local process disappearing does not prove the remote operation stopped.
- Force-unlock, state surgery, deletion protection removal and resource import are distinct sensitive operations. Diagnose the actual owner and use specifically authorized provider procedures; do not use them to conceal a conflict or unblock a stale attempt.
- A reverse IaC diff is not automatically a safe rollback. Verify current drift, data and replacement implications, then obtain a newly reviewed bounded recovery plan. Use [restore/recovery review](../../domain-review/references/restore-recovery.md) for data objectives and isolated restore evidence.
