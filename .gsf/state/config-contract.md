# Configuration contract

`.gsf/GSF_CONFIG.md`, resolved from the repository root, is the only policy source; never discover or fall back to a root-level `GSF_CONFIG.md`. It contains exactly one fenced `yaml` block holding one mapping; other prose is explanatory, never a second policy. Use a real host YAML parser with duplicate-key rejection, no custom tags/constructors, and JSON-compatible scalar types; validate the parsed value with the JSON Schema below using a real host validator supporting Draft 2020-12. Reject malformed, multiple-document, duplicate-key, nonfinite, or non-string-key data. Missing parser/validator is an environment gap, not successful validation. No parser or executable is bundled.

A schema `default` does not insert values: all three permissions must be present, and missing/invalid policy denies privileged actions. Bootstrap with all permissions false, code/security required, applicable UI/UX review, actual protected paths and real typed checks. `profile: framework` uses the existing verification skill; a product profile uses its documented commands and directories or real product verification skills. Never substitute sample package commands or pass an empty gate.

`cwd: .` means repository root. Resolve every `config.paths` value, check directory and skill path from that root, never from the policy's `.gsf/` directory, checking symlinks and junctions for escape before use. Agents/skills/templates/jobs are directories; constraints is a readable Markdown file (normally `.gsf/GSF_CONSTRAINTS.md`); skill checks name an existing `SKILL.md`. Reject blank/whitespace commands, missing targets, jobs paths overlapping source/policy roots, and inaccessible or escaping paths. Paths use forward slashes. Globs in protected_paths are repository-root-relative, not policy-directory-relative, and must not escape the root. Semantic path existence, glob safety and check executability are additional mandatory validations, not claims made by JSON Schema.

Do not interpret a product's similarly named application settings as GSF policy. A missing policy does not authorize bootstrap writes; follow the shared worker authority contract. Never use policy changed by a candidate to reduce that candidate's baseline obligations.

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
    "paths"
  ],
  "properties": {
    "factory": {
      "type": "string",
      "minLength": 1
    },
    "version": {
      "type": "string",
      "minLength": 1
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
              "cwd"
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
              }
            }
          },
          {
            "type": "object",
            "additionalProperties": false,
            "required": [
              "kind",
              "path"
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
              }
            }
          }
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
    }
  },
  "$defs": {
    "relativePath": {
      "type": "string",
      "minLength": 1,
      "pattern": "^(?![/\\\\]|[A-Za-z]:)(?!.*(?:^|[/\\\\])\\.\\.(?:[/\\\\]|$))(?!.*\\\\).+$"
    }
  }
}
```
