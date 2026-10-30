# Configuration contract

`.gsf/GSF_CONFIG.md`, resolved from the repository root, is the only policy source; never discover or fall back to a root-level `GSF_CONFIG.md`. It contains exactly one fenced `yaml` block holding one mapping; other prose is explanatory, never a second policy. Use a real host YAML parser with duplicate-key rejection, no custom tags/constructors, and JSON-compatible scalar types; validate the parsed value with the JSON Schema below using a real host validator supporting Draft 2020-12. Reject malformed, multiple-document, duplicate-key, nonfinite, or non-string-key data. Missing parser/validator is an environment gap, not successful validation. No parser or executable is bundled.

A schema `default` does not insert values: all three permissions must be present, and missing/invalid policy denies privileged actions. Bootstrap with all permissions false, code/security required, applicable UI/UX review, actual protected paths and real typed checks. `profile: framework` uses the existing verification skill; a product profile uses its documented commands and directories or real product verification skills. Never substitute sample package commands or pass an empty gate.

`cwd: .` means repository root. Resolve every `config.paths` value, check directory and skill path from that root, never from the policy's `.gsf/` directory, checking symlinks and junctions for escape before use. Agents/skills/templates/jobs are directories; constraints is a readable Markdown file (normally `.gsf/GSF_CONSTRAINTS.md`); skill checks name an existing `SKILL.md`. Reject blank/whitespace commands, missing targets, jobs paths overlapping source/policy roots, and inaccessible or escaping paths. Paths use forward slashes. Globs in protected_paths are repository-root-relative, not policy-directory-relative, and must not escape the root. Semantic path existence, glob safety and check executability are additional mandatory validations, not claims made by JSON Schema.

Do not interpret a product's similarly named application settings as GSF policy. A missing policy does not authorize bootstrap writes; follow the shared worker authority contract. Never use policy changed by a candidate to reduce that candidate's baseline obligations.

## Version, effects and operational acceptance

The only version accepted by this schema is `2.0.0`. Existing jobs use their frozen accepted schemas, policy and instructions, not this file's newest contents. An upgrade requires authentic operator authorization, a new immutable baseline/policy_id, explicit migration of required fields and re-evaluation of affected evidence; never silently reinterpret a version-1 job or invent compatibility defaults.

`environments` is an accepted allowlist, not discovery or a grant. An empty mapping denies all external target effects. Each key is a safe target ID; provider/account and every resource identifier must be explicit, nonblank, nonsecret and free of wildcard or “all resources” aliases. `region` remains required: use a nonblank string for a real regional target, or YAML/JSON null only when authentic provider identity queries and indexed provider documentation prove that this exact target has no region dimension. Null means proven not applicable, never unknown, undiscovered or unrestricted. Missing, empty/whitespace, unresolved or invented region strings (including fabricated `global`/`unknown` aliases), unknown regionality and null for a regional provider fail closed. Do not fabricate a provider to avoid regional validation. Mandatory semantic validation rejects unresolved templates, ambiguous scope and any check target not in this mapping. Match exact provider/account/region (including proven null), accepted resource identifiers and fresh observation in [environment-contract.md](environment-contract.md) to authentic action-specific authority before use; a grant must explicitly bind the same nonregional scope when region is null. Resource requests must be a subset of the accepted explicit identifiers and authentic grant; schema validation alone cannot prove identity, regionality, resource ownership or map keys.

Every check declares its maximum actual effect and target. `read` is observational, `local-write` may modify only authorized isolated/local paths, `external-write` mutates remote resources, and `destructive` deletes or irreversibly alters resources/data. Inspect commands, skills, nested tools, hooks and implicit network behavior; underdeclared effects block execution. `read` may name a configured external target or null for workspace-only reads; `local-write` requires null; external-write/destructive require a configured target, exact scoped grant and real host/platform safeguards. Destructive workspace cleanup is not smuggled through local-write: authorize explicit ownership/removal under the worker contract rather than making it a default configured check. A declaration, passing gate, credential or autonomy boolean never grants an effect. External reads also require authentic access and policy-compliant data handling.

Limits are accepted budgets, not a scheduler or monitoring implementation. Count running ownership/attempts, elapsed time and actual metered cost with host receipts; parallelism is an upper bound, not a request to spawn. `max_cost: null` means cost is unmetered/unknown, never free. If a required cap cannot be observed/enforced, block that execution. Stop/fence affected owners and checkpoint on expiry, no progress or cap exhaustion; exceeding a cap requires authentic renewed authority and a new effective policy, not reset counters or an automatic wake.

`max_cost` is an exact nonnegative integer in the currency's ISO 4217 minor units (USD cents), or null; no fractional JSON/YAML number enters the policy baseline fingerprint. For a nonnull cap, verify the actual monetary currency/minor-unit exponent and record meter conversion/rounding evidence, rounding accrued cost conservatively upward to minor units. Unknown/nonmonetary currency, ambiguous exponent, mismatched meter currency or unavailable conversion blocks capped execution; never assume all currencies have two decimal places. All baseline/grant values used by policy_id use the candidate contract's exact integer/string/boolean/null canonical JSON encoding, never floats/nonfinite values.

The evidence locator contains no credentials. Retention is a required declaration, not proof of a TTL service: claims need observed retrieval, reader/writer ACL, integrity and actual retention control or documented manual owner under [candidate-contract.md](candidate-contract.md). Missing/stale evidence blocks the claim. Protected policy/constraints/state paths remain protected; mandatory code/security reviews and separate publish/merge/deploy denials remain unchanged.

```json
{
  "$schema": "https://json-schema.org/draft/2020-12/schema",
  "type": "object",
  "additionalProperties": false,
  "title": "GSF policy",
  "required": [
    "factory",
    "version",
    "protocol",
    "profile",
    "base_branch",
    "checks",
    "protected_paths",
    "required_reviewers",
    "surface_reviewers",
    "autonomy",
    "paths",
    "environments",
    "execution_limits",
    "evidence"
  ],
  "properties": {
    "factory": {
      "type": "string",
      "minLength": 1
    },
    "version": {
      "const": "2.0.0"
    },
    "protocol": {
      "const": "event-driven"
    },
    "profile": {
      "enum": [
        "framework",
        "product"
      ]
    },
    "base_branch": {
      "type": "string",
      "minLength": 1
    },
    "checks": {
      "type": "array",
      "minItems": 1,
      "uniqueItems": true,
      "items": {
        "oneOf": [
          {
            "type": "object",
            "additionalProperties": false,
            "required": [
              "kind",
              "command",
              "cwd",
              "effect",
              "target"
            ],
            "properties": {
              "kind": {
                "const": "command"
              },
              "command": {
                "type": "string",
                "minLength": 1
              },
              "cwd": {
                "$ref": "#/$defs/relativePath"
              },
              "effect": {"$ref": "#/$defs/effect"},
              "target": {"$ref": "#/$defs/target"}
            }
          },
          {
            "type": "object",
            "additionalProperties": false,
            "required": [
              "kind",
              "path",
              "effect",
              "target"
            ],
            "properties": {
              "kind": {
                "const": "skill"
              },
              "path": {
                "allOf": [
                  {
                    "$ref": "#/$defs/relativePath"
                  },
                  {
                    "pattern": "(?:^|/)SKILL\\.md$"
                  }
                ]
              },
              "effect": {"$ref": "#/$defs/effect"},
              "target": {"$ref": "#/$defs/target"}
            }
          }
        ],
        "allOf": [
          {"if": {"properties": {"effect": {"const": "local-write"}}, "required": ["effect"]}, "then": {"properties": {"target": {"type": "null"}}}},
          {"if": {"properties": {"effect": {"enum": ["external-write", "destructive"]}}, "required": ["effect"]}, "then": {"properties": {"target": {"type": "string", "pattern": "^[a-z][a-z0-9-]*$"}}}}
        ]
      }
    },
    "protected_paths": {
      "type": "array",
      "uniqueItems": true,
      "items": {
        "type": "string",
        "minLength": 1
      }
    },
    "required_reviewers": {
      "type": "array",
      "minItems": 2,
      "uniqueItems": true,
      "items": {
        "type": "string",
        "pattern": "^[a-z][a-z0-9-]*$"
      },
      "allOf": [
        {
          "contains": {
            "const": "code"
          }
        },
        {
          "contains": {
            "const": "security"
          }
        }
      ]
    },
    "surface_reviewers": {
      "type": "array",
      "uniqueItems": true,
      "items": {
        "type": "string",
        "pattern": "^[a-z][a-z0-9-]*$"
      }
    },
    "autonomy": {
      "type": "object",
      "additionalProperties": false,
      "required": [
        "publish_pr",
        "merge_pr",
        "deploy"
      ],
      "properties": {
        "publish_pr": {
          "type": "boolean",
          "default": false
        },
        "merge_pr": {
          "type": "boolean",
          "default": false
        },
        "deploy": {
          "type": "boolean",
          "default": false
        }
      }
    },
    "paths": {
      "type": "object",
      "additionalProperties": false,
      "required": [
        "agents",
        "skills",
        "templates",
        "jobs",
        "constraints"
      ],
      "properties": {
        "agents": {
          "$ref": "#/$defs/relativePath"
        },
        "skills": {
          "$ref": "#/$defs/relativePath"
        },
        "templates": {
          "$ref": "#/$defs/relativePath"
        },
        "jobs": {
          "$ref": "#/$defs/relativePath"
        },
        "constraints": {
          "$ref": "#/$defs/relativePath"
        }
      }
    },
    "environments": {
      "type": "object",
      "propertyNames": {"pattern": "^[a-z][a-z0-9-]*$"},
      "additionalProperties": {
        "type": "object", "additionalProperties": false,
        "required": ["kind", "provider", "account", "region", "resource_scope"],
        "properties": {
          "kind": {"enum": ["test", "staging", "production"]},
          "provider": {"$ref": "#/$defs/text"},
          "account": {"$ref": "#/$defs/text"},
          "region": {"oneOf": [{"$ref": "#/$defs/text"}, {"type": "null"}]},
          "resource_scope": {"type": "array", "minItems": 1, "uniqueItems": true, "items": {"$ref": "#/$defs/text"}}
        }
      }
    },
    "execution_limits": {
      "type": "object", "additionalProperties": false,
      "required": ["max_parallel_tasks", "max_attempts_without_progress", "max_elapsed_minutes", "max_cost", "currency"],
      "properties": {
        "max_parallel_tasks": {"type": "integer", "minimum": 1},
        "max_attempts_without_progress": {"type": "integer", "minimum": 1},
        "max_elapsed_minutes": {"type": "integer", "minimum": 1},
        "max_cost": {"type": ["integer", "null"], "minimum": 0},
        "currency": {"type": "string", "pattern": "^[A-Z]{3}$"}
      }
    },
    "evidence": {
      "type": "object", "additionalProperties": false,
      "required": ["store", "retention_days", "location"],
      "properties": {
        "store": {"enum": ["job", "ci", "external"]},
        "retention_days": {"type": "integer", "minimum": 1},
        "location": {"$ref": "#/$defs/text"}
      }
    }
  },
  "$defs": {
    "text": {"type": "string", "minLength": 1, "pattern": "\\S"},
    "effect": {"enum": ["read", "local-write", "external-write", "destructive"]},
    "target": {"oneOf": [{"type": "null"}, {"type": "string", "pattern": "^[a-z][a-z0-9-]*$"}]},
    "relativePath": {
      "type": "string",
      "minLength": 1,
      "pattern": "^(?![/\\\\]|[A-Za-z]:)(?!.*(?:^|[/\\\\])\\.\\.(?:[/\\\\]|$))(?!.*\\\\).+$"
    }
  }
}
```
