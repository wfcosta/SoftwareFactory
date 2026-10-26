import json
import os

class GenericOrchestrator:
    def __init__(self, config_path="config.json"):
        with open(os.path.join(os.path.dirname(__file__), config_path), 'r') as f:
            self.config = json.load(f)
            
    def process_request(self, user_request):
        # 1. Intake: Clarify and Understand
        print(f"Orchestrator: Analyzing request -> {user_request}")
        # 2. Planning: Map to agents defined in config
        print(f"Orchestrator: Dispatching to: {list(self.config['agents'].keys())}")
        # 3. Execution: Delegate to agents
        return {"status": "dispatched", "task": user_request}

if __name__ == "__main__":
    o = GenericOrchestrator()
    print("Orchestrator ready for harness...")
