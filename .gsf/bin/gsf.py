#!/usr/bin/env python3
import sys
import json
import argparse
import os
import time

# Get absolute path to the GSF repository root
SCRIPT_DIR = os.path.dirname(os.path.abspath(__file__))
REPO_ROOT = os.path.dirname(os.path.dirname(SCRIPT_DIR))
STATE_DIR = os.path.join(REPO_ROOT, ".gsf", "state")
JOBS_DIR = os.path.join(REPO_ROOT, ".gsf", "jobs")

def log_event(job_id, role, event_type, data):
    # Ensure relative to repo root, though this script might be run from root
    job_path = os.path.join(JOBS_DIR, job_id)
    os.makedirs(job_path, exist_ok=True)
    inbox_file = os.path.join(job_path, "inbox.md")
    
    with open(inbox_file, "a", encoding="utf-8") as f:
        timestamp = time.strftime("%Y-%m-%d %H:%M:%S")
        f.write(f"\n[{timestamp}] {role.upper()} | {event_type.upper()}\n")
        f.write(json.dumps(data, indent=2) + "\n")

def handle_send(args):
    data = {
        "type": args.type,
        "subject": args.subject,
        "body": args.body,
        "task_id": args.task_id,
        "dispatch_id": args.dispatch_id,
        "outcome": args.outcome
    }
    job_id = args.task_id.split('-')[0] if args.task_id else "unknown"
    log_event(job_id, "WORKER", args.type, data)
    print(json.dumps({"status": "success", "event": args.type}))

def handle_check(args):
    print(json.dumps({"status": "ready", "role": args.handle, "state": "active"}))

def main():
    parser = argparse.ArgumentParser(description="GSF Coordination CLI")
    subparsers = parser.add_subparsers(dest="command")

    # Orchestration command
    orch = subparsers.add_parser("orchestration")
    sub = orch.add_subparsers(dest="subcommand")
    
    # Send
    send = sub.add_parser("send")
    send.add_argument("--type", required=True)
    send.add_argument("--subject")
    send.add_argument("--body")
    send.add_argument("--task-id")
    send.add_argument("--dispatch-id")
    send.add_argument("--outcome")
    send.add_argument("--json", action="store_true")
    
    # Check
    check = sub.add_parser("check")
    check.add_argument("--terminal", dest="handle", required=True)
    check.add_argument("--json", action="store_true")
    
    args = parser.parse_args()

    if args.command == "orchestration":
        if args.subcommand == "send":
            handle_send(args)
        elif args.subcommand == "check":
            handle_check(args)
        else:
            parser.print_help()
    else:
        parser.print_help()

if __name__ == "__main__":
    main()
