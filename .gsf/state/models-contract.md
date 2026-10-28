# Model preference contract

Optional repository-root `.gsf/state/models.md` contains exactly one fenced `yaml` mapping, parsed with config-contract.md's strict data rules and validated below. Role keys are actual agent filenames without `.md` or support-skill labels explicitly consumed by that skill. Reject unknown unused labels rather than claim a preference was applied.

`inherit-parent` and `auto` mean omit a model override. Explicit slugs require advertised availability and a supported dispatch API; never invent a slug, silently replace a requested explicit model, or infer independent diversity from aliases. Panel arrays are only for the named consumers; cross-judge pool may be empty but contains only confirmed explicit models. Budget is a preference, not an invented host reasoning control, authority grant, or gate relaxation. Absence of this file means inherit the actual parent model; setup does not require model configuration.

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
