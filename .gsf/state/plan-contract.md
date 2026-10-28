# Plan contract

`JOB_DIR/plan.md` contains exactly one fenced `yaml` mapping. Parse with the strict data rules in config-contract.md, then validate with this schema. The coordinator alone changes it and increments revision for every accepted graph/state update. An empty task list is legal only during initialization, never evidence of an approved plan.

After schema validation, verify unique task IDs, globally unique dispatch IDs, existing dependencies, no cycles/self-dependencies, existing role files in configured paths, safe report names, globally unique canonical report destinations, and current dispatch membership. Concurrent ownership must not overlap. Reports are job-relative Markdown names, never source outputs or paths outside JOB_DIR. Ownership includes per-attempt evidence; resolve concrete source paths before edits. Task and dispatch IDs belong to this explicit job, never encode it.

Preserve every task and attempt history when expanding intake's graph. Only the current attempt can advance a task. Dependencies require accepted successful completion and the appropriate role verdict; succeeded execution with CHANGES does not satisfy an implementation gate. Legal task transitions and event acceptance are normative in the shared worker contract. Unknown keys or unknown states are errors, not extension points.

```json
{
  "$schema": "https://json-schema.org/draft/2020-12/schema",
  "type": "object",
  "additionalProperties": false,
  "title": "GSF durable plan",
  "required": [
    "job_id",
    "revision",
    "tasks"
  ],
  "properties": {
    "job_id": {
      "type": "string",
      "pattern": "^job-[0-9]{8}-[0-9]{6}(?:-[0-9]{2,})?$"
    },
    "revision": {
      "type": "integer",
      "minimum": 1
    },
    "tasks": {
      "type": "array",
      "items": {
        "type": "object",
        "additionalProperties": false,
        "required": [
          "task_id",
          "role",
          "depends_on",
          "target",
          "change",
          "constraints",
          "ownership",
          "acceptance",
          "report",
          "status",
          "dispatches"
        ],
        "properties": {
          "task_id": {
            "$ref": "#/$defs/taskId"
          },
          "role": {
            "type": "string",
            "pattern": "^[a-z][a-z0-9-]*$"
          },
          "depends_on": {
            "type": "array",
            "uniqueItems": true,
            "items": {
              "$ref": "#/$defs/taskId"
            }
          },
          "target": {
            "type": "string",
            "minLength": 1
          },
          "change": {
            "type": "string",
            "minLength": 1
          },
          "constraints": {
            "type": "array",
            "items": {
              "type": "string",
              "minLength": 1
            }
          },
          "ownership": {
            "type": "array",
            "minItems": 1,
            "uniqueItems": true,
            "items": {
              "type": "string",
              "minLength": 1
            }
          },
          "acceptance": {
            "type": "array",
            "minItems": 1,
            "items": {
              "type": "string",
              "minLength": 1
            }
          },
          "report": {
            "type": "string",
            "pattern": "^[a-z][a-z0-9-]*\\.md$"
          },
          "status": {
            "enum": [
              "pending",
              "running",
              "succeeded",
              "failed",
              "blocked",
              "cancelled",
              "paused"
            ]
          },
          "dispatches": {
            "type": "array",
            "uniqueItems": true,
            "items": {
              "$ref": "#/$defs/dispatchId"
            }
          },
          "current_dispatch_id": {
            "$ref": "#/$defs/dispatchId"
          }
        },
        "allOf": [
          {
            "if": {
              "properties": {
                "status": {
                  "enum": [
                    "running",
                    "succeeded",
                    "failed"
                  ]
                }
              }
            },
            "then": {
              "required": [
                "current_dispatch_id"
              ],
              "properties": {
                "dispatches": {
                  "minItems": 1
                }
              }
            }
          }
        ]
      }
    }
  },
  "$defs": {
    "taskId": {
      "type": "string",
      "pattern": "^t[0-9]{3,}$"
    },
    "dispatchId": {
      "type": "string",
      "pattern": "^d[0-9]{3,}$"
    }
  }
}
```
