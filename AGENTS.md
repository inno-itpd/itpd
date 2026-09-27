# AGENTS.md

Operating instructions for coding agents maintaining the student-facing course materials in `itpd/`.

## Repository Map

### Maintained Here

| File                                      | Owns                                                                                                                                                          |
| ----------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `README.md`                               | Student entry point and routing. Nothing else.                                                                                                                |
| `syllabus.md`                             | The student-facing schedule: week-by-week focus, dates, and submission deadlines. A formatted copy of the instructors syllabus, not a second source of truth. |
| `rules.md`                                | The course contract: public vs private, hygiene, AI policy, deadlines, submission channel. Short, and a router rather than a second rulebook.                 |
| `requirements/artifact-requirements.md`   | Artifact semantics, the `reports/week-NN/` vs `docs/` split, visibility, recurring artifact structures.                                                       |
| `requirements/process-requirements.md`    | What the product work means: alternatives, properties, gaps, value propositions, identifier and traceability rules.                                           |
| `requirements/repository-requirements.md` | Repository and platform mechanics: GitHub, pull requests, branch protection, link checking, permalinks, snapshots, changelog, CI.                             |
| `guides/alternatives-research.md`         | Method for finding and evaluating alternatives. Explanatory, not normative.                                                                                   |
| `guides/comparison-and-synthesis.md`      | Method for building the comparison, finding gaps, writing the value proposition. Explanatory, not normative.                                                  |
| `assignments/assignment-N.md`             | Learner-facing requirements for one week. Deltas, paths, and evidence only.                                                                                   |

### Tooling

Markdown in this directory is formatted and linted from Node.
Run `npm run format:markdown` before committing.
`npm run format:markdown:check` and `npm run lint:markdown` are the gates.

| File                                      | Owns                                                                                        |
| ----------------------------------------- | ------------------------------------------------------------------------------------------- |
| `scripts/markdown.mjs`                    | Formats, checks, and lints every tracked `.md` file except `.opencode/` and `.agents/`.     |
| `prettier/markdown/sentences-per-line.js` | Formatter plugin: one sentence per line, and table rows left on one physical line.          |
| `eslint/markdown/no-split-sentence.js`    | Lint rule for a sentence split across two lines. Registered but off, so it reports nothing. |
| `.vscode/tasks.json`                      | Editor tasks for the same two commands.                                                     |
| `.vscode/keybindings.json`                | Shortcuts for those two tasks. `Ctrl+Alt+M` formats, `Ctrl+Alt+C` checks.                   |

Their fixtures run with `npm run test:markdown-format` and `npm run test:markdown-rules`.
Both plugins are shared verbatim with `../timeful`, so a change to either belongs in both repositories.
`markdown/no-html` runs with `allowed: ['h2']`, so raw HTML is rejected except for the `<h2 id="...">` anchors that carry the stable permalinks `requirements/repository-requirements.md` requires.
`.vscode/settings.json` lints Markdown in the editor, so the sentence and `no-html` rules report while you write, and it disables format-on-save because a bundled Prettier extension would format Markdown without the local `sentences-per-line` plugin.
Editor diagnostics are advisory; the commands above are the gates.

### Maintained Elsewhere

- `../itpd-instructors/syllabus.md` is the authoritative course schedule, deadlines, weighting, and policy.
  The local `syllabus.md` is the same content reformatted so it passes the Markdown gates, so edit the source and copy the result rather than editing the local copy.
  Apart from `syllabus.md` itself, the materials here must not restate the late-submission or attendance policy, only link to it.
- `../backlog.md` is the working list for this directory.
- The `docs/` destination map below describes artifacts in **student** repositories.
  Those files do not exist here and must not be created here.

## Layering

Four layers, strictly ordered.
Each layer links down; none of them restates what is below.

```text
assignments/   what this week requires        (deltas only)
guides/        how to do the work              (explanatory)
requirements/  the rules                       (normative, authoritative)
rules.md       the contract and the router     (short, links into requirements/)
```

1. When a rule already exists in `requirements/`, an assignment points at it and states only the week-specific addition or a stricter minimum.
2. A guide shows the method.
   It does not define requirements, and it links to the requirement rather than repeating it.
3. `rules.md` states the student-facing contract and links into `requirements/`.
   If `rules.md` and a requirements file disagree, fix `rules.md`.
4. Normative text uses `Required` / `Recommended` / `Example` labels so an example is never mistaken for a rule.

## Conventions

- **Filenames** are kebab-case: `assignment-1.md`, `artifact-requirements.md`.
- **Weeks** are zero-padded: `reports/week-01/`, through `reports/week-09/`.
- **Identifiers** are zero-padded and stable: `ALT-01`, `GAP-01`, `VP-01`, `US-01`, `Q-01` for quality goals, `U-01` for usability tasks.
  IDs are never renumbered or reused, including in example text.
- **Headings** are Title Case in requirements files and sentence case in guides and assignments.
- **Applicability markers**: artifact and process semantics carry inline `**Since: W1**` / `**Since: W2**` markers inside a concept-first section.
  Repository mechanics are grouped under `## Required Starting Week N` headings, because repository mechanics arrive as whole blocks rather than as individual refinements.
- **Links** between files in this directory are relative Markdown links, and point at a heading anchor when they refer to a specific rule.
- Prose is plain and specific.
  No filler, no hedging, no restating a rule that already lives in a linked file.
- **Prose** puts one sentence on each line.
  The formatter splits two sentences that share a line, and `sentences-per-line/one` rejects the same case.
  A sentence is not hand-wrapped across lines.
  `proseWrap` is `preserve`, so a soft wrap is left as written and is not currently a lint error, and the rule that would catch it, `no-split-sentence`, is registered but off.

## The Two-Location Rule

1. `reports/week-NN/` holds the evidence for that week.
   It is a historical record and is not rewritten later.
2. `docs/` holds maintained project documentation.
   Anything a later week will reference goes here, in its final location, from the week it is created.
3. **There is no promotion convention and no migration step.**
   The `swp_26/` materials have a `reports/` → `docs/` promotion rule in `Assignment_Design.md` because they were authored incrementally and the destination structure was not known when the early assignments were written.
   Do not port that rule.
   When a maintained artifact's destination is already known, it starts in `docs/`.
4. Never keep the same content in both locations.
   The weekly report links the maintained file; it does not copy it.

## `docs/` Destination Map

Decided now so no week invents a path.
A later assignment may extend this map, but should not silently move an entry.

| Week | Maintained artifacts                                                                                              |
| ---- | ----------------------------------------------------------------------------------------------------------------- |
| W1   | `docs/research/` — `alternatives.md`, `comparison.md`, `gap-analysis.md`, `value-proposition.md`                  |
| W2   | `docs/work-plan.md`                                                                                               |
| W3   | `docs/product-vision.md`, `docs/user-stories.md`, `docs/prototypes/`; `CHANGELOG.md`; SemVer tags begin           |
| W4   | `docs/quality-requirements.md`, `docs/verification-plan.md`, `docs/threshold-of-success.md`, `docs/architecture/` |
| W5   | `docs/testing.md`, `docs/deployment.md`                                                                           |
| W7   | `docs/usability-testing.md`                                                                                       |
| W8   | `docs/configuration-management.md`                                                                                |
| W9   | `docs/reflection.md`                                                                                              |

Weekly reports live at `reports/week-NN/README.md` in every week, and the Moodle PDF is the private wrapper in every week.
Meeting artifacts live at `reports/week-NN/meeting-report.md`, plus a `meeting-transcript.md` or a `meeting-notes.md` beside it.
That shape is fixed; do not redesign it per week.

## Assignment Authoring Checklist

Before writing or editing an assignment:

1. Read `rules.md` and the three requirements files.
   Check whether the rule you are about to write already exists there.
2. Write the delta, not the rule. "Complete all requirements under **Required Starting Week 3** in `requirements/repository-requirements.md`", plus what this week specifically adds.
3. Give the concrete paths and the week-specific minima: how many items, which IDs, which fields.
4. Give the week report contents as a list of links, not as prose describing what is in each linked file.
5. Give the Moodle wrapper contents as a list, including the private-only items for that week.
6. State the deviations requirement and the privacy confirmation line once, and only where the assignment first needs them.
7. Add a short "what good looks like" section.
   It is the only place an assignment gives quality guidance; the detail belongs in a guide.
8. End with a checklist that a student can tick.
9. Check the links, including heading anchors, and check the paths against the destination map above.

## Terminology

Use these words and do not invent local synonyms:

`weekly report`, `weekly public report`, `supporting artifact`, `private-only artifact`, `external-but-indexed artifact`, `repository-resident artifact`, `deviation`, `customer` (never "client" or "stakeholder" when you mean the instructor), `kickoff meeting`, `meeting report`, `meeting transcript`, `meeting notes`, `decision`, `action point`, `open question`, `alternative`, `property`, `gap`, `value proposition`, `threshold of success`, `minimum usable product` (MUP), `minimum viable product` (MVP), `team number`.

Meeting decisions and action points are **not** identifier families.
There is no `DEC-nn` or `ACT-nn`.
A later week cites a meeting report by path and heading anchor, an action point is carried out by a tracked issue, and the identifier families stay `ALT-nn`, `GAP-nn`, `VP-nn`, and `US-nn`.

Note that ITPD has no Scrum.
Do not import Sprint, Product Backlog, PBI, or user-story ceremony from the `swp_26/` materials. `docs/user-stories.md` in W3 is user stories in the plain product sense.

## Do Not

- Do not restate a rule from `requirements/` inside an assignment.
- Do not make a requirement file into a guide or a guide into a requirement.
- Do not add a rule to `rules.md` that is not stated in `requirements/`.
- Do not create files under `docs/` or `reports/` in this directory.
  Those paths belong to student repositories.
- Do not copy the `swp_26/` promotion convention, its artifact-type vocabulary, or its GitLab support into these materials.
- Do not restate the syllabus's late-submission, attendance, or weighting policy in an assignment, a guide, or `rules.md`.
  Link `syllabus.md`.
