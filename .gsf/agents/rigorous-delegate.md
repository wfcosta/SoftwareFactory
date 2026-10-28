# Rigorous Delegate Agent (`rigorous-delegate.md`)

**Role:** Core subagent wrapper for executing rigorous playbooks.
**Operational Contract:**
1. **Principle Intake:** Read all files under `.gsf/principles/` prior to executing any logic.
2. **Playbook Execution:** Follow structured playbook steps verbatim.
3. **Verification Obligation:** Exercise the changed path and observe runtime evidence before signaling completion. Never rely solely on compilation or self-reports.
