### Pause Safely

**You own the clean suspension.** Suspend in-flight work cleanly so it can be resumed later. This is for when you need to stop work mid-task without losing progress.

1. **Assess the current state.** What phase is the work in? What's completed? What's in progress? What's the next step?
2. **Record the state explicitly.** Write down:
   - Where you are in the playbook
   - What's been done (with evidence if possible)
   - What's pending
   - What the next step is when resuming
   - Any decisions made and their rationale
3. **Commit or save the evidence.** Ensure all work is committed to git or saved to the job directory. Don't leave uncommitted changes that could be lost.
4. **Document the resume point.** Create a clear marker (a comment in the inbox, a note in the project plan, a dedicated RESUME.md) that tells the next agent exactly where to pick up.
5. **Verify the resume point.** Ask yourself: if I were a new agent reading this, would I know exactly what to do next? If not, add more detail.
6. **Report the pause.** Tell the operator that work is paused cleanly, where it is, and how to resume.

**Reply:** current state, what's recorded, resume point location, how to resume.
