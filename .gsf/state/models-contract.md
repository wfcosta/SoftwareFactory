# Model preference contract

Optional repository-root `.gsf/state/models.md` contains exactly one fenced `yaml` mapping, parsed with config-contract.md's strict data rules and validated below. Role keys are actual agent filenames without `.md` or support-skill labels explicitly consumed by that skill. Reject unknown unused labels rather than claim a preference was applied.

`inherit-parent` and `auto` mean omit a model override. Explicit slugs require advertised availability and a supported dispatch API; never invent a slug, silently replace a requested explicit model, or infer independent diversity from aliases. Panel arrays are only for the named consumers; cross-judge pool may be empty but contains only confirmed explicit models. Budget is a preference, not an invented host reasoning control, authority grant, or gate relaxation. Absence of this file means inherit the actual parent model; setup does not require model configuration.

## Explain the per-task selection

Keep routing explanation in existing job `decision.md`, keyed by each exact accepted plan `task_id`, not in extra YAML fields here or in `plan.md`. Resolve the preference for that task's actual role, not the coordinator's role, and record the source/version (or file absence), preference value, advertised availability, dispatch API support, requested override or omission, and effective model only as actually exposed by the host. An accepted request/alias is not proof of the executing model; use **unknown** when identity is not observable. Inheritance records the parent identity only if observed, never guessed.

Record why the chosen role/skills and delegate/inline mode fit acceptance, required versus observed capabilities, constraints and explicit fallback limits alongside model selection. Intake may propose this choice; the coordinator records actual dispatch observations and retains attempt history. Budget labels do not select a model or manufacture reasoning controls. An explicit slug that is unavailable or cannot be requested blocks that route until the prerequisite returns or an authentic authorized preference change is recorded; never replace it automatically with inherit/auto, another slug or inline execution. Inherited execution can be inline/sequential only when it meets the task's authority, capability and independence obligations. Unknown effective identity cannot satisfy a criterion requiring proven model identity/diversity.

These explanations extend no schema, permission, approval or final gate. The configured worker contract remains normative; [context and memory operations](../docs/operations/context-memory.md) describes the supporting Markdown procedure.

```json
{
  "$schema": "https://json-schema.org/draft/2020-12/schema",
  "type": "object",
  "additionalProperties": false,
  "title": "GSF optional model preferences",
  "required": [
    "version",
    "budget",
    "roles"
  ],
  "properties": {
    "version": {
      "const": 1
    },
    "budget": {
      "enum": [
        "inherit",
        "small",
        "medium",
        "large",
        "unlimited"
      ]
    },
    "roles": {
      "type": "object",
      "propertyNames": {
        "type": "string",
        "minLength": 1
      },
      "properties": {
        "arena runners": {
          "$ref": "#/$defs/panel"
        },
        "architect runners": {
          "$ref": "#/$defs/panel"
        },
        "interrogate reviewers": {
          "$ref": "#/$defs/panel"
        },
        "arena cross-judge pool": {
          "type": "array",
          "uniqueItems": true,
          "items": {
            "type": "string",
            "minLength": 1,
            "not": {
              "enum": [
                "inherit-parent",
                "auto"
              ]
            }
          }
        }
      },
      "additionalProperties": {
        "$ref": "#/$defs/model"
      }
    }
  },
  "$defs": {
    "model": {
      "type": "string",
      "minLength": 1
    },
    "panel": {
      "type": "array",
      "minItems": 1,
      "items": {
        "$ref": "#/$defs/model"
      }
    }
  }
}
```
