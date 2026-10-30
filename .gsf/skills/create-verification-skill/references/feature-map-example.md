# Worked feature-map example

This fictional notes app demonstrates the required specificity. Names, routes and accessible labels below are example data, not a runnable framework helper or evidence about the current repository. A generated skill must replace them with observed application facts and its actual host harness. No product runtime is bundled here.

## features/README.md

A real index links one file per feature and states coverage, rather than treating the index as proof:

| Feature file | User result | Preconditions | Proof |
| --- | --- | --- | --- |
| `create-note.md` | Create and reopen a persisted note | Signed-in isolated account, empty owned notebook | Save action trace, displayed note ID, reopen result, persisted record |
| `search.md` | Find only matching accessible notes | Two owned notes, search index ready | Query trace, matching result ID, nonmatching exclusion, empty state |

The generated README also names the parent verification skill, shared fixture recipe, current uncovered surfaces, and where durable evidence survives cleanup.

For this example, requirement `NOTE-1` is “an authenticated author can save and reopen the exact title/body”; invariant `TENANT-1` is “another tenant cannot read or search that note.” Selected minimum proof is a public save/reopen journey plus independent persistence/ownership observation and two-tenant authenticated forbidden-request/search integration. A unit-only save handler check does not cover either cross-boundary claim. Load/formal checks are not selected merely because this example exists; select them when actual accepted capacity/state-space risk requires them. Required configured checks and independent reviews remain.

The generated map records actual `effect`/`target`, candidate/policy/environment, fixture, exact command/cwd or skill receipt, loaded artifact and build-input/toolchain/config identities rather than fictional digest values. Local save/seed/cleanup is local-write/null; remote equivalents require accepted observed target and authentic scope. Missing browser/auth/persistence observation is BLOCKED, never a mock success.

Example invalidation dependencies for NOTE-1: editor/save route, request/response serializer, persistence schema/write path, auth/session, fixture ownership, effective flags, loaded artifact/config/toolchain and driver semantics. TENANT-1 additionally depends on all read/search/cache authorization filters and supported account roles. A changed dependency invalidates that proof; matching HEAD or a screenshot cannot establish unchanged behavior. Retained evidence needs exact indexed locators/digests, actual retrieval/ACL/retention/expiry and post-cleanup/cold-resume readability. The real app must enumerate its own complete dependencies before reusing evidence.

## features/create-note.md

### Sub-features

Create a text note, validate its title, and reopen it after navigation. This example does not cover attachments, sharing, offline edits, or concurrent edits; list those separately if the application has them.

### How to get to it (user POV)

Sign into the isolated verification account. Open the Notes page and choose the `New note` button. The editor contains textboxes labelled `Title` and `Body`, a `Save note` button, and a visible save status.

**Preconditions:** Doctor proves the owned server's correct build, completed migrations, valid account, and writable isolated notebook. The account has no real user's data. If authentication or notebook creation fails, report that precondition failure; do not skip directly to an internal write API.

**Fixture:** Allocate a unique run label such as `verification-042`. Through the public app, create an owned notebook named with that label. Record its ID. The note title will be `verification-042 cedar plan`; the body is `Bring the blue notebook`. Ensure the title does not already exist. Fixture setup failures are captured before cleanup.

### Driving it with the browser harness

1. Capture the initial empty notebook and action trace. Activate `New note` by its accessible role and name.
2. Leave `Title` empty, enter the body, and activate `Save note`. Assert `Title is required` is visible, the editor remains open, no note ID is assigned, and the notebook's note count stays zero. This is the negative boundary; a successful save here fails verification.
3. Fill `Title` with the unique fixture title. Save. Wait for the explicit `Saved` status, not a fixed sleep. Record the newly displayed note ID and resulting page URL.
4. Assert title and body render exactly. Navigate to the notebook list, then reopen the saved note through its visible title. Assert the same note ID, title, and body survive navigation.
5. Verify persistence independently using the repository's existing authorized read-only data-inspection tool: one record under the owned notebook and note ID, correct title/body, correct owner. If that observation is unavailable, record the proof gap; the UI alone does not prove all required side effects.

**Proof:** Preserve the input action trace, rejected empty-title save, successful save state, reopen state, and sanitized persistent-record observation in the run's durable evidence. Include source/build identity and notebook/note IDs. Never store account tokens. The success predicate requires all of the above, not merely the presence of a Save button.

### Gotchas

- A database answering health requests before migrations finish is not readiness. Return to Doctor; never drive through initialization failures.
- If Save reports success but reopening loses the body, capture both states as a product regression. Do not rewrite the journey to omit reopening.
- A changed accessible label with equivalent behavior is probable map/harness drift; confirm the actual current label from source and live UI before editing the map.
- On any surprising drive, capture evidence, run Doctor, then reset the owned editor/session or relaunch. Do not keep clicking a wedged UI.
- Cleanup deletes only the run-labelled notebook/note and closes the owned browser/server handles. Failed saves may leave partial owned records; inspect and remove only those. Evidence is outside that scratch directory and must remain readable afterward.

## features/search.md

### Sub-features

Search note titles and body text, handle no matches, and exclude nonmatching notes. Permission filtering is a separate feature if it requires additional accounts.

### How to get to it (user POV)

Open the owned notebook and focus the `Search notes` textbox. Results show a linked title and note ID; the empty state reads `No notes found`.

**Preconditions:** The same ready, owned instance; an authorized account; a documented readiness signal for asynchronous indexing. If the seed lacks a searchable note or the index never becomes ready within the documented bound, report that failure and put the prerequisite gap here. Do not replace the query with one matching accidental global data.

**Fixture:** Create two notes through the valid create-note journey: `verification-042 cedar plan` with body `Bring the blue notebook`, and `verification-042 quartz list` with body `Bring the red folder`. Record IDs C and Q. Wait for the app's actual indexing readiness condition.

### Driving it with the browser harness

1. Search `blue notebook`; wait for the app's result-complete signal. Assert exactly C appears, with its exact title, and Q does not appear.
2. Open C from the result, assert its ID and body, then return to search. This proves the result is actionable rather than stale display text.
3. Search the unique nonexistent term `verification-042-no-such-note`. Assert zero result rows and `No notes found`; no previous result may linger.
4. Clear the query and confirm the documented reset behavior. If this product intentionally requires a submit action or has a minimum query length, the real generated recipe must state it and cover its boundary.

**Expected output and proof:** Capture query input, completed matching results with IDs, opened matching note, completed empty results and reset state. Record result counts and the IDs compared, not just screenshots. Compare against the owned fixture inventory. A result count alone cannot prove that the correct note was found.

### Gotchas

An index delay is a readiness problem, not permission to wait indefinitely. Capture the observed timeout and index diagnostics. Returning Q for `blue notebook`, leaking another account's note, or retaining C after the nonexistent query is a product failure, not documentation drift. Capture the mismatch before cleanup. Delete only the two owned notes/notebook and owned sessions, leaving all durable proof intact. The real map must document its observed empty-query semantics rather than copying this example.
