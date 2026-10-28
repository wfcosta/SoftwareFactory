# Event contract

Each event occupies its own `## <event_id>` heading followed by exactly one fenced `yaml` mapping in `inbox.md`, `outbox.md`, or a dispatch's `events.md`. Ledgers may contain many events, unlike policy/plan/model files. The heading must equal event_id. Parse each complete block with config-contract.md's strict rules and validate below; enable date-time format assertion and require a real UTC timestamp. Validate references and lifecycle rules in WORKER_CONTRACT.md as a separate semantic pass.

The sole coordinator writes coordinator events (role orchestrator, IDs c-eNNN); each assigned worker writes only its own dispatch events (IDs dNNN-eNNN, role exactly the assigned agent). Worker events copied into inbox retain source, role, ID and all parsed fields. Dispatch/task IDs must match the event source and current or historical assignment; events may never rebind identities.

Same payload means semantic equality of fully parsed mappings: mapping key order, indentation, quoting and equivalent scalar spellings do not create a conflict. Arrays remain ordered, scalar types remain significant, duplicate keys are forbidden, and no field may be silently dropped. An identical event ID with a different parsed payload blocks the job as factory_bug. Byte equality is neither necessary nor sufficient for acceptance. Accept no partial fenced block; preserve an interrupted tail as evidence and repair from an authoritative complete source, never guess missing content.

worker_done fields are exclusive to completion; reason is for pause events; receipt is for publication_receipt. Do not attach misleading unused fields to other types. report_path dispatch must match dispatch_id and resolve inside JOB_DIR; files_modified must contain exact safe repository-relative paths and use an empty array for read-only work. Gate/publication identities must match the accepted candidate and effective policy. Additional conditional rules and durable ordering below are mandatory even where JSON Schema cannot express cross-record relationships.

```json
{
  "$schema": "https://json-schema.org/draft/2020-12/schema",
  "type": "object",
  "additionalProperties": false,
  "title": "GSF durable event",
  "required": [
    "event_id",
    "timestamp",
    "job_id",
    "source",
    "role",
    "type",
    "subject",
    "body"
  ],
  "properties": {
    "event_id": {
      "type": "string",
      "pattern": "^(?:c|d[0-9]{3,})-e[0-9]{3,}$"
    },
    "timestamp": {
      "type": "string",
      "format": "date-time"
    },
    "job_id": {
      "type": "string",
      "pattern": "^job-[0-9]{8}-[0-9]{6}(?:-[0-9]{2,})?$"
    },
    "task_id": {
      "type": "string",
      "pattern": "^t[0-9]{3,}$"
    },
    "dispatch_id": {
      "type": "string",
      "pattern": "^d[0-9]{3,}$"
    },
    "source": {
      "enum": [
        "coordinator",
        "worker"
      ]
    },
    "role": {
      "type": "string",
      "pattern": "^[a-z][a-z0-9-]*$"
    },
    "type": {
      "enum": [
        "job_initialized",
        "job_resumed",
        "dispatched",
        "dispatch_failed",
        "answer",
        "cancelled",
        "acknowledged",
        "pause_requested",
        "job_paused",
        "completion_accepted",
        "report_promoted",
        "gate_passed",
        "gate_blocked",
        "job_completed",
        "job_blocked",
        "publication_intent",
        "publication_receipt",
        "worker_started",
        "question",
        "checkpoint",
        "worker_paused",
        "worker_done"
      ]
    },
    "subject": {
      "type": "string",
      "minLength": 1
    },
    "body": {
      "type": "string",
      "minLength": 1
    },
    "reply_to": {
      "type": "string",
      "pattern": "^(?:c|d[0-9]{3,})-e[0-9]{3,}$"
    },
    "outcome": {
      "enum": [
        "succeeded",
        "failed"
      ]
    },
    "report_path": {
      "type": "string",
      "pattern": "^dispatches/d[0-9]{3,}/report\\.md$"
    },
    "files_modified": {
      "type": "array",
      "uniqueItems": true,
      "items": {
        "$ref": "#/$defs/relativePath"
      }
    },
    "candidate_id": {
      "type": "string",
      "pattern": "^sha256:[0-9a-f]{64}$"
    },
    "policy_id": {
      "type": "string",
      "pattern": "^sha256:[0-9a-f]{64}$"
    },
    "reason": {
      "enum": [
        "operator",
        "capability"
      ]
    },
    "receipt": {
      "type": "string",
      "minLength": 1
    }
  },
  "$defs": {
    "relativePath": {
      "type": "string",
      "minLength": 1,
      "pattern": "^(?![/\\\\]|[A-Za-z]:)(?!.*(?:^|[/\\\\])\\.\\.(?:[/\\\\]|$))(?!.*\\\\).+$"
    }
  },
  "allOf": [
    {
      "if": {
        "properties": {
          "source": {
            "const": "worker"
          }
        }
      },
      "then": {
        "required": [
          "task_id",
          "dispatch_id"
        ],
        "properties": {
          "type": {
            "enum": [
              "worker_started",
              "question",
              "checkpoint",
              "worker_paused",
              "worker_done"
            ]
          },
          "event_id": {
            "pattern": "^d[0-9]{3,}-e[0-9]{3,}$"
          }
        }
      },
      "else": {
        "properties": {
          "type": {
            "enum": [
              "job_initialized",
              "job_resumed",
              "dispatched",
              "dispatch_failed",
              "answer",
              "cancelled",
              "acknowledged",
              "pause_requested",
              "job_paused",
              "completion_accepted",
              "report_promoted",
              "gate_passed",
              "gate_blocked",
              "job_completed",
              "job_blocked",
              "publication_intent",
              "publication_receipt"
            ]
          },
          "event_id": {
            "pattern": "^c-e[0-9]{3,}$"
          },
          "role": {
            "const": "orchestrator"
          }
        }
      }
    },
    {
      "if": {
        "properties": {
          "type": {
            "enum": [
              "dispatched",
              "dispatch_failed",
              "answer",
              "cancelled",
              "pause_requested",
              "completion_accepted",
              "report_promoted"
            ]
          }
        }
      },
      "then": {
        "required": [
          "task_id",
          "dispatch_id"
        ]
      }
    },
    {
      "if": {
        "properties": {
          "type": {
            "enum": [
              "answer",
              "acknowledged",
              "completion_accepted",
              "report_promoted"
            ]
          }
        }
      },
      "then": {
        "required": [
          "reply_to"
        ]
      }
    },
    {
      "if": {
        "properties": {
          "type": {
            "const": "worker_done"
          }
        }
      },
      "then": {
        "required": [
          "outcome",
          "report_path",
          "files_modified"
        ]
      }
    },
    {
      "if": {
        "properties": {
          "type": {
            "enum": [
              "pause_requested",
              "worker_paused",
              "job_paused"
            ]
          }
        }
      },
      "then": {
        "required": [
          "reason"
        ]
      }
    },
    {
      "if": {
        "properties": {
          "type": {
            "enum": [
              "gate_passed",
              "gate_blocked",
              "publication_intent",
              "publication_receipt"
            ]
          }
        }
      },
      "then": {
        "required": [
          "candidate_id",
          "policy_id"
        ]
      }
    },
    {
      "if": {
        "properties": {
          "type": {
            "const": "publication_receipt"
          }
        }
      },
      "then": {
        "required": [
          "receipt"
        ]
      }
    }
  ]
}
```
