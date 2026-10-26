import json
import sys
from orchestrator import GenericOrchestrator

if __name__ == "__main__":
    if len(sys.argv) > 1:
        request = " ".join(sys.argv[1:])
        orchestrator = GenericOrchestrator()
        result = orchestrator.process_request(request)
        print(json.dumps(result))
