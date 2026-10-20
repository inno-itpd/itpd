# Plan: Assignment 5 — Quality Requirement Tests, The Testing Plan, C4 Views, And Product CI

This plan records the scope Assignment 4 hands to Week 5, and everything that scope depends on, before the work is written.
It covers four groups: the quality requirement tests, the quality requirement testing plan and the progress recorded in it, the C4 views, and product-code CI.
Assignment 4 stays about functional requirements, quality requirements, and architecture decision records; [`a4-plan.md`](a4-plan.md) designs those and leaves these four groups out.
The [Design Decisions](#design-decisions) section states the model and the reason for it.
This is a scope plan, not the whole of Assignment 5: Week 5's other work — the unit test suite, the production deployment, `REL-05`, and the 7-minute pitch deck — comes from the syllabus and is designed when the rest of the assignment is written.
Nothing here settles that other work.

The rules this plan adds are `**Since: W5**`.
The requirements files they land in are the ones Assignment 4 creates or edits, so this plan adds sections to existing files and adds no new requirements file.

## Goal And Success Criteria

Write the verification and architecture-view scope of Assignment 5 and everything it depends on, so Week 5 can hand in the work Assignment 4 deferred.

Done means:

- The four groups have exactly one owner each, and no rule that left `a4-plan.md` is lost: the tests in `quality-requirements-requirements.md`, the testing plan in `planning-requirements.md`, the views and their diagram rules in `architecture-requirements.md`, and product-code CI in `repository-requirements.md` and `definition-of-done-requirements.md`.
- `assignments/assignment-5.md` carries the parts in [The Parts These Groups Become](#the-parts-these-groups-become), written as a delta against `requirements/`, and the rest of Week 5's parts join them when that assignment is designed.
- `quality-requirements-requirements.md` gains the `QRT-nn` rules with a `**Since: W5**` marker: the test's level, where it runs, why a manual test is manual, its evidence, and the rule that a `High` QR has a `CI` or `scripted` test.
- `planning-requirements.md` owns `## Quality Requirement Testing Plan`, with the columns `QR`, `QRT`, `Status`, `Checked`, `Planned for sprint`, and `Evidence`, and `## Progress Monitoring` reads the rows that are not `Passes`.
- `architecture-requirements.md` gains `## Views` and `## Diagrams And Legends`, and its container view names every container the functional requirements and the ADRs name.
- `repository-requirements.md` spells out the five checks in the product-code CI block that Assignment 4 marks `**Since: W5**`, and `definition-of-done-requirements.md` gains the matching pull request item.
- `releases-requirements.md` lets a release claim a `QR-nn` only through tests that are `Passes` and `Checked` in the release's sprint, and `weekly-report-requirements.md` points at the testing plan.
- `general-requirements.md` adds `QRT-nn` as the Week 5 identifier family, scoped to its QR.
- `guides/quality-requirement-tests-and-views.md` exists and carries the method.
- `course/decisions/a5.md` records every decision as an `A5-DEC-nnn` entry, including reversing [`A3-DEC-018`](../decisions/a3.md#a3-dec-018-the-vocabulary-and-the-deferrals-follow-the-week-that-teaches-them) in full because its product-code CI clause moves to Week 5, and `course/decisions/a3.md` marks that entry reversed.
- `course/syllabus.md`, `README.md`, `SKILL.md`, `course/rules.md`, `AGENTS.md`, and `TODO.md` are updated in step with the new guide and the moved deliverables.
- `pnpm run format:markdown:check`, `pnpm run lint:markdown`, and `pnpm run check:links` pass.

## What Moved, And Where It Lands

[Assignment 4's plan](a4-plan.md) designed these four groups and now leaves them out.
This plan takes them over, with the week marker they carry.

| Group        | What Assignment 4 planned                                                                                                                                                | Where it lands here                                                                                          |
| ------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------ |
| QRT          | `## QRT-nn` sections inside the QR file, with `**Level:**`, `**Runs at:**`, and `**Why Manual:**`, and the rule that a `High` QR has a `CI` or `scripted` test           | `quality-requirements-requirements.md`'s test section, `**Since: W5**`                                       |
| QRT progress | `## Quality Requirement Testing Plan` in `docs/project-plan.md`, with status, last check, planned sprint, and evidence; the release claim; and the weekly-report pointer | `planning-requirements.md`, `releases-requirements.md`, and `weekly-report-requirements.md`, `**Since: W5**` |
| Diagrams     | `## Views` — container, component, and sequence — and `## Diagrams And Legends` in the architecture document                                                             | `architecture-requirements.md`'s `## Views` and `## Diagrams And Legends`, `**Since: W5**`                   |
| Product CI   | The product-code CI rule and the Definition of Done's pull request item                                                                                                  | `repository-requirements.md` and `definition-of-done-requirements.md`, `**Since: W5**`                       |

The boundary between the two plans:

- Assignment 4 keeps the architecture document: `docs/architecture/README.md` owns the constraints, boundary, and system context, with the context diagram and its Week 2 rules, then the drivers, the decision index, and the trace chain.
- Assignment 4 introduces `**Containers:**` on the FR and ADR records, naming the C4 deployable units.
  The container view here must name every container those records name.
- The context diagram stays where Assignment 4 puts it, under `## System Context`.
  It is the one view the architecture document has before this work, and its rules are the Week 2 rules moved with the section.
- Assignment 4's `## Trace` states the chain from a task to the threshold.
  This plan adds the one link to the testing plan, so the architecture document never restates when a test passes.
- Assignment 4's quality requirements have no tests.
  The rule that every `QR-nn` has at least one `QRT-nn` is `**Since: W5**`, so a Week 4 QR is finished when its scenario is written.

## Design Decisions

The tests live inside the requirement they prove, their state lives in one plan table, the views complete the architecture, and CI is the check that runs the tests.

- **QRT.**
  A quality requirement test is a `## QRT-nn` section inside its `QR-nn` file, numbered within that QR from `QRT-01` upward and never globally unique.
  Cite it as `QR-01 QRT-02`, and link it as `QR-01.md#qrt-02`.
  It is not a file of its own, so `quality-requirements-requirements.md` owns the requirement and its tests together, as `user-stories-requirements.md` owns a story and its acceptance criteria.
  The test sections follow the QR's `## Scenario`.
- **The test's shape.**
  Its first line below the heading is the test in one sentence.
  It carries `**Level:**`, `**Runs at:**`, `**Why Manual:**` only on a manual test, and `**Dropped:**` only on a dropped test, in that order.
  Its body is a numbered procedure and one `**Pass when:**` criterion, which restates the QR's response measure in a form a stranger can run.
- **The levels.**
  `**Level:**` is `CI`, `scripted`, or `manual`: `CI` runs in a workflow, `scripted` is automated by a script a person runs, not by CI, and `manual` is a person's inspection.
  `**Runs at:**` says what runs the test in one line: the workflow and step for `CI`, the script path or the command for `scripted`, and the inspection step for `manual`.
  A `High` business-importance QR must have at least one `CI` or `scripted` test, so a command checks the requirement rather than a person.
  A lower-importance QR may have a `manual` test, which carries its `**Why Manual:**` reason in one sentence.
- **No state on the test.**
  A test carries no `**Status:**`, no `**Checked:**`, no `**Planned for sprint:**`, and no `**Evidence:**`: the testing plan carries all four, and `planning-requirements.md` owns its columns and statuses.
- **The testing plan.**
  `docs/project-plan.md` gains `## Quality Requirement Testing Plan` between `## Sprints` and `## Progress Monitoring`.
  It is one table with the columns `QR`, `QRT`, `Status`, `Checked`, `Planned for sprint`, and `Evidence`, one row per `QRT-nn`, in the quality index order and then `QRT-nn` order, with the `QR` and `QRT` cells linking the requirement and the test's section.
  The architecture document links this section once, from its `## Trace`.
- **The statuses.**
  `Status` is the test's state at its last check: `Passes`, `Fails`, `Not verified`, or `Dropped`, where `Not verified` means no check is recorded.
  `Checked` is the `SPRINT-nn` of that check, and `None` on a `Not verified` or `Dropped` row.
  `Planned for sprint` is exactly one `SPRINT-nn`, linked through the plan, and `None` on a `Dropped` row.
  `Evidence` is required for `Passes` and `Fails`, says `None` on a `Not verified` or `Dropped` row, and links the proof the test's level requires.
  A row that is not `Passes` stays with its `Status` and its planned sprint.
- **Evidence follows the level.**
  A `CI` test links its run on `main`.
  A `scripted` test records the command and its output in a dated section of `reports/week-NN/README.md` or in a week-local supporting file the report links.
  A `manual` test records what was inspected, by whom, and what was observed in the same place, with a screenshot when the evidence is visual.
  The testing plan's `Evidence` cell links that evidence; it never holds the output itself.
- **Tests inherit the priority.**
  A test is not prioritized separately: it inherits its QR's priority, the testing plan's rows follow the quality index order, and `Planned for sprint` is the only schedule.
- **Progress.**
  `## Progress Monitoring` gains a sentence that the weekly review reads the testing plan's rows that are not `Passes`.
  The weekly report's summary points at the testing plan rather than copying its rows, and the plan remains the one place the rows live.
- **Releases claim only verified quality.**
  A released changelog section may record a `QRT-nn` it adds, at any status, but it claims a `QR-nn` only when every non-dropped `QRT-nn` for it is `Passes` and `Checked` in the release's sprint, with evidence from the released state.
  It links the tests' sections, and a `QR-nn` name alone is no longer a quality claim.
- **The views.**
  `docs/architecture/README.md` gains `## Views` between `## Drivers` and `## Architectural Decisions`, with three views:

  1. the container view, embedded from `docs/architecture/container.<ext>`, showing the deployed units and what they exchange;
  2. the component view, embedded from `docs/architecture/component.<ext>`, showing the components inside one named container and the well-defined interfaces they expose;
  3. the sequence view, embedded from `docs/architecture/sequence-<core-task>.<ext>`, showing the core task's main actor flow across the containers, with each step numbered.

  The context view stays in Assignment 4's `## System Context`, so all four C4 views exist, in the order context, container, component, sequence.

- **The container view.**
  It names the containers the functional requirements and the ADRs use, such as `frontend`, `static content`, and `backend`.
  A project may add a database or another container, so the set is the team's, not a fixed list.
  The component view expands exactly one of those containers and shows the interfaces it exposes.
- **Diagrams And Legends.**
  The `## Diagrams And Legends` heading is the anchor other files link, and it owns the diagram rules for the views:

  - every view under `## Views` carries a legend that names each shape, colour, and arrow it uses; a Markdown legend below the image is allowed when the image is legible without it;
  - the image and its source share a directory and a base name, and are updated in one change;
  - the image is SVG or PNG with an opaque background, so it is legible in both themes;
  - [Structurizr](https://structurizr.com/), [LikeC4](https://github.com/likec4/likec4), and C4-PlantUML are recommended for the C4 views; Mermaid, PlantUML, D2, draw.io, and Excalidraw remain allowed;
  - a Mermaid source is committed beside an exported SVG or PNG, because a code fence alone is not the embedded image;
  - the views under `## Views` agree with the document's text and with the boundary;
  - every element the document names in prose appears in a view.

  The context diagram keeps the Week 2 rules that Assignment 4 moved with `## System Context`.

- **Product CI.**
  The product-code CI is five checks — linting, formatting, type checking, build, and automated tests — on pull requests and on `main`, pinned like any other tool.
  It joins the Definition of Done's pull request list, and it lands in Week 5, the week the syllabus gives to testing and CI/CD.
- **The identifier family.**
  `QRT-nn` is a Week 5 family: two digits, scoped to its `QR-nn`, not globally unique, and never renumbered or reused within its QR.
  A dropped test keeps its section and its `**Dropped:**` with the date and the reason, per [Identifier Rules](../../requirements/general-requirements.md#identifier-rules).
- **The guide.**
  The method is a new `guides/quality-requirement-tests-and-views.md`, because the tests and the views are the practice this week adds, and the guide that Assignment 4 adds is about the requirements and the decisions, not about verification.

## Additions To The Requirements

These are additions to files Assignment 4 creates or edits.
No requirements file is added here.

### `quality-requirements-requirements.md`

- The test's placement and numbering as a `## QRT-nn` section inside its QR's file, its fields, its levels, its `**Runs at:**`, its `**Why Manual:**`, its procedure and pass criterion, its evidence, its dropped form, and the rule that every `QR-nn` has at least one `QRT-nn`, all `**Since: W5**`.
- The `High` business-importance rule: at least one `CI` or `scripted` test, and a manual test is a deviation when it is the only possible one.
- The priority matrix's status rule: the `Status` column is the QR's own `Active` or `Dropped`, never a test's status, and a test's status and last check are in the testing plan only.
- The full example gains the `QRT-nn` sections for its one QR, with a `CI` test and a `manual` test.

### `general-requirements.md`

- Rule 1 gains `QRT-nn` as the Week 5 family; it takes two digits.
- Rule 10 gains the `QRT-nn` section exception, because the testing plan carries its state and a dropped test carries `**Dropped:**`.
- Rule 11's dropped form covers a `QRT-nn`, and rule 14 says a `QRT-nn` is scoped to its QR and is not globally unique.
- [Traceability Into Later Weeks](../../requirements/general-requirements.md#traceability-into-later-weeks) gains the test row: a `QRT-nn` traces to its `QR-nn`, and the testing plan carries its state.

### `planning-requirements.md`

- `## Quality Requirement Testing Plan` between `## Sprints` and `## Progress Monitoring`, with its `**Since: W5**` marker, and the ToC and the parts list updated.
- This file owns the table: its columns, its order, its statuses, and its rules for `Checked`, `Planned for sprint`, and `Evidence`.
- `## Progress Monitoring` gains the sentence that the weekly review reads the rows that are not `Passes`, and keeps its place as the last part.
- The full example gains the table, with a `Passes` row and a `Not verified` row.

### `releases-requirements.md`

- [The Changelog](../../requirements/releases-requirements.md#the-changelog) gains the `**Since: W5**` claim rule: a released section records a `QRT-nn` it adds at any status, and claims a `QR-nn` only when every non-dropped test for it is `Passes` and `Checked` in the release's sprint, with evidence from the released state.
- The full example records a test it adds and a requirement it claims.

### `weekly-report-requirements.md`

- Rule 5's summary gains a `**Since: W5**` sentence: it points at `docs/project-plan.md#quality-requirement-testing-plan` for the tests that are not `Passes`, and copies none of the rows.
- The full example gains that pointer.

### `architecture-requirements.md`

- `## Views` between `## Drivers` and `## Architectural Decisions`, with the three views, their paths, and their sources, all `**Since: W5**`.
- `## Diagrams And Legends`, `**Since: W5**`, with the rules above.
- The container view names every container the functional requirements and the ADRs name, and the component view expands one of them.
- The `## Trace` section gains the one link to `docs/project-plan.md#quality-requirement-testing-plan`, `**Since: W5**`.
- The full example gains a container view and its legend, and the architecture example's part list gains `## Views`.

### `repository-requirements.md`

- The product-code CI block, which Assignment 4 marks `**Since: W5**`, gains its five checks spelled out: linting, formatting, type checking, build, and automated tests, on pull requests and on `main`.
- The rule keeps its place in [Continuous Integration](../../requirements/repository-requirements.md#continuous-integration), after the Markdown check, and pins its third-party actions per [Pinning Third-Party Actions](../../requirements/repository-requirements.md#pinning-third-party-actions).

### `definition-of-done-requirements.md`

- A new pull request item, `**Since: W5**`, names the product-code CI among the checks that must be green.
- The full example's `## Pull Request` list gains the item.

### `adr-requirements.md`

- A `**Since: W5**` sentence: the record cites no `QRT-nn`, because a test proves a requirement and the decision reaches the test through the requirement it addresses.

## New Guide

`guides/quality-requirement-tests-and-views.md` follows the shape of `guides/planning-and-tracking.md`: a short preamble, `## What You Produce`, numbered `## Step N:` sections with their `###` sub-sections, and `## Common Mistakes`.
The steps:

1. **Make the requirement testable.**
   The response measure a stranger can run, the pass condition, and the difference between a test and a restatement of the requirement.
2. **Write the test.**
   The `QRT-nn` section inside the QR's file, its `**Level:**` and `**Runs at:**`, its `**Why Manual:**` when no command can run it, its numbered procedure, and its `**Pass when:**` criterion.
3. **Record the progress.**
   The testing plan's row, its status, its last check, its planned sprint, and the evidence its level requires; what the weekly report points at; and what the test itself must not carry.
4. **Draw the views.**
   The container, component, and sequence views, the context view that already exists, the component view that expands one container and shows its interfaces, the sequence that shows the core task end to end, the legend, the source beside the image, and the opaque SVG or PNG.
5. **Keep the views honest.**
   The agreement with the boundary and the text, every element named in prose appearing in a view, and the release that claims only what its tests verified.

`## Common Mistakes` covers a test that restates the requirement, a manual test with no reason, a status on the test instead of the plan, output pasted into the `Evidence` cell, a diagram without a legend or a source, a component view that expands nothing, a sequence view that shows internals instead of the flow, a view that names a container the requirements do not, and a release that claims a quality requirement its tests have not verified.

## The Parts These Groups Become

`assignments/assignment-5.md` is written as a delta against `requirements/`, in the shape Assignment 4's assignment uses: the header, `## Objectives`, the numbered parts, `## What Good Looks Like`, the repository report with its coverage table, the Moodle wrapper, the submission procedure, and the checklist.

These are the parts this plan settles; the rest of Week 5's parts are added with them when the whole assignment is written, and the parts are numbered then.

- **Write The Quality Requirement Tests.**
  At least one `QRT-nn` inside each QR's file, with its `**Level:**`, its `**Runs at:**`, and its `**Why Manual:**` when it is `manual`.
  Every `High` QR has a `CI` or `scripted` test.
- **Record The Testing Plan.**
  `docs/project-plan.md`'s `## Quality Requirement Testing Plan` with one row per test, its status, its last check, its planned sprint, and its evidence, and at least one `Passes` row whose `Checked` is `SPRINT-05` this week.
  Every row that is not `Passes` keeps its status and its planned sprint.
- **Draw The C4 Views.**
  A container view, a component view of one named container with its interfaces, and one sequence view of the core task's main flow, each embedded with its source, its legend, and an opaque SVG or PNG.
  The context view stays in `docs/architecture/README.md#system-context`.
- **Add The Product-Code CI.**
  The five checks on pull requests and on `main`, each third-party action pinned, with the Definition of Done's pull request list updated and the latest `main` run green.
- **Link The Testing Plan.**
  The architecture document's `## Trace` links `docs/project-plan.md#quality-requirement-testing-plan` once, and the changelog claims a `QR-nn` only through its passing, checked tests.

### What Good Looks Like

- a testing plan that says what is verified, when it was last checked, when the rest arrives, and what evidence proves it;
- a test level that matches how the test runs, a `**Why Manual:**` a reviewer accepts, and evidence that follows the level;
- a container view that names every container the requirements use, a component view that expands one of them, and a sequence view that shows the core task end to end rather than a component's internals;
- a legend that makes each diagram readable without the text, and a diagram that is legible in both themes;
- a release that claims only the quality requirements its tests have verified.

The rest of Week 5 — the unit tests, the deployment, `REL-05`, the pitch deck, the customer meeting, the action points, and the AI usage report — is not designed here.
`REL-05` is cut under the claim rule above, but its other parts wait for the whole assignment.

## New Maintainer Decision Log `course/decisions/a5.md`

The file follows the format of `course/decisions/a3.md`: a header paragraph, then `A5-DEC-nnn` entries with `**Status:**`, `**Decision:**`, `**Why:**`, `**Alternatives considered:**`, `**Where it lands:**`, and `**Reverses:**` on the entries that reverse an `A3-DEC`.

The entries:

1. The four groups — the tests, the testing plan, the C4 views, and product-code CI — move from Assignment 4's scope to Week 5, so Assignment 4 is the functional requirements, the quality requirements, and the ADRs; Week 4 keeps the architecture document with its scope, drivers, index, and trace.
2. A quality requirement test is a `## QRT-nn` section inside its QR's file, numbered within the QR and owned by `quality-requirements-requirements.md` with the requirement; no separate tests file is added.
3. A test's `**Level:**` is `CI`, `scripted`, or `manual`, `**Runs at:**` says where it runs, and a manual test carries `**Why Manual:**`; the test carries no state, and the testing plan carries its status, last check, planned sprint, and evidence.
4. A `High` QR must have a `CI` or `scripted` test; a `High` QR whose only possible test is manual is a deviation, and the reason is recorded.
5. The testing plan lives in `docs/project-plan.md`'s `## Quality Requirement Testing Plan`, keeps its rows in the quality index order, and `planning-requirements.md` owns its rules.
6. Tests inherit their QR's priority; there is no separate test priority, and `Planned for sprint` is the only schedule.
7. A test's evidence follows its level: a `CI` test links its run, a `scripted` test records the command and its output, and a `manual` test records the inspection.
8. A release claims a `QR-nn` only when every non-dropped test for it is `Passes` and `Checked` in the release's sprint, with evidence from the released state; it may record a test it adds at any status.
9. The architecture's views are C4: the context view stays in Assignment 4, and the container, component, and sequence views arrive in Week 5; the component view expands one container and shows its interfaces, the sequence view shows the core task end to end, and every view has an opaque SVG or PNG and its source.
10. The container view names every container the functional requirements and the ADRs name, so the field Assignment 4 introduces and the view Week 5 draws cannot disagree.
11. The diagram rules — the legend, the source beside the image, the opaque image, the tools, the agreement with the text and the boundary, and the prose elements appearing in a view — live in `## Diagrams And Legends` in the architecture requirements.
12. Product-code CI is five checks — linting, formatting, type checking, build, and automated tests — on pull requests and on `main`, pinned, with its Definition of Done item, and it arrives in Week 5.
13. [`A3-DEC-018`](../decisions/a3.md#a3-dec-018-the-vocabulary-and-the-deferrals-follow-the-week-that-teaches-them) is reversed in full, because its product-code CI clause moves from Week 4 to Week 5 and a reversal cannot be partial; a surviving-clause entry restates the plan's name, the "next product release" wording, the `MVP` vocabulary, and the deployment in Week 5.
14. `QRT-nn` is the Week 5 identifier family, scoped to its QR and not globally unique, and the general identifier rules gain its section exception and dropped form.
15. The new guide is `guides/quality-requirement-tests-and-views.md`.
16. The syllabus's Week 5 deliverables gain the tests, the testing plan, the views, and product-code CI, and the Week 4 deliverables lose them.

## Edited Files Outside `requirements/`

- **`course/syllabus.md`**: The Week 5 deliverables gain the quality requirement tests, the quality requirement testing plan, the C4 views, and the product-code CI with its five checks.
  The Submission 5 row is a short category summary in the same order.
  The Week 4 deliverables lose the tests, the testing plan, the views, and the product-code CI; Assignment 4's plan makes that edit, and this plan adds them to Week 5.
  Week 5's hard deadline stays Saturday 31 October 2026 at 23:59, as Assignment 4's schedule change sets it.
- **`README.md`**: The guide row in The Guides, the Assignment 5 row when the assignment is written, and no new requirements file row.
- **`SKILL.md`**: The routing row for the guide and the Week 5 artifacts, with the guide beside each requirements link; the front-matter `description` gains the tests and the views when the assignment is written.
- **`course/rules.md`**: The new guide in its guide list, and the Week 5 artifacts in the routing.
- **`AGENTS.md`**: The Repository Map and the `requirements/` table gain `guides/quality-requirement-tests-and-views.md`; the `docs/` Destination Map's Week 4 architecture row keeps the context diagram and gains the container, component, and sequence images in a Week 5 note; the identifier conventions gain `QRT-nn` and the sentence that it is scoped to its QR; the terminology list gains `quality requirement test`, `quality requirement testing plan`, `container view`, `component view`, `sequence view`, `legend`, and `evidence`; the assignment checklist stays unchanged.
- **`TODO.md`**: The A5 items this work closes are ticked: where to track progress on a QRT, how to prioritize QRTs, product-code CI, and sequence diagrams.
  The feature issue type and the named architecture-example links stay deferred with a note.
- **`course/decisions/a3.md`**: `A3-DEC-018` gets `**Status:** Reversed by A5-DEC-nnn`, linked, and keeps its statement and fields; the surviving-clause entry restates the clauses that still hold.
- **`course/plans/a4-plan.md`**: No further change; it links this plan, and the rules it hands over are not repeated there.

## Edge Cases And Failure Modes

- **A test that is not `Passes` this week:** It stays in the testing plan with its status, its last check, and its planned sprint, and the changelog claims no `QR-nn` through it.
- **A `Passes` test the team has not re-checked:** It keeps its `Checked` sprint; a release that wants to claim its `QR-nn` re-checks it first, and a release that does not claim it leaves the row as it is.
- **A `High` QR whose only possible test is `manual`:** It is a deviation, and the team records the reason; the test still carries `**Why Manual:**` and its evidence, and the changelog claims the requirement only when the test is `Passes` and `Checked` in the release's sprint.
- **A test that cannot run in CI:** It is `scripted`, with its command or script path in `**Runs at:**`; when it is wired into the product CI, its `**Level:**` and `**Runs at:**` become `CI` and its workflow step, and the `Evidence` cell follows.
- **A test dropped after it was planned:** It keeps its section and its `**Dropped:**`, and its testing-plan row says `Dropped`, with `None` for `Checked`, `Planned for sprint`, and `Evidence`.
- **A container the team adds:** The container view names it, the functional requirements and the ADRs name it, and the component view expands it; there is no fixed list.
- **A view with no source:** It is not ready, because the image and its source are updated in one change.
- **A screenshot of a diagram:** It needs an opaque background and a legend, or it fails the theme rule and the legend rule.
- **A sequence view that shows a component's internals:** It is the wrong view; the sequence view shows the core task end to end across the containers.
- **A `QR-nn` with no test yet:** It exists only before Week 5's work is written; from Week 5 every `QR-nn` has at least one `QRT-nn`.
- **One rule in two places:** The diagram rule, the testing-plan rule, the evidence rule, the release-claim rule, and the test-priority rule each have exactly one owner, and every other file links to it.

## Tests And Validation

- `pnpm run format:markdown`, then `pnpm run format:markdown:check`, `pnpm run lint:markdown`, `pnpm run test:markdown-format`, and `pnpm run test:markdown-rules`.
- `pnpm run check:links`, which checks every heading anchor the new file and the edited files cite.
- `pnpm run lint:actions` for the product-code CI workflow change, and `pnpm run check:lectures` only if a deck changes.
- A routing audit: the new guide appears in `README.md`, `SKILL.md`, `course/rules.md`, and both of `AGENTS.md`'s tables.
- A cross-reference audit: every `**Since: W5**` rule has an Assignment 5 part, and every part and coverage row has a rule.
- A move audit: no rule that left `a4-plan.md` is stated twice, and every one of the four groups has one owner.
- A view audit: every view has a legend, a source beside its image, and an opaque image; the container view names every container the FRs and ADRs name; the component view expands one container; the sequence view shows the core task end to end.
- A level audit: every `manual` test carries `**Why Manual:**`, every `CI` test names a workflow step, every `scripted` test names its script or command, and every testing-plan `Evidence` cell matches its test's level.
- A check audit: every `Passes` or `Fails` row carries a `Checked` sprint and an `Evidence` link, a `Not verified` or `Dropped` row carries neither, and every claimed `QR-nn` has all its non-dropped tests `Passes` and `Checked` in the release's sprint.
- A trace audit: the testing plan is linked once from the architecture's `## Trace`, and no test's status appears outside the testing plan.
- A full-example audit: every edited example carries its new field or section, and the tests example has a `CI` and a `manual` test.
- `backlog doctor`, after the task changes.

## Assumptions

- This work lands in the `itpd` course repository only, and no file is created under `docs/` or `reports/`, since those belong to student repositories.
- Assignment 5 is Week 5, and Week 5's due date is Saturday 31 October 2026 at 23:59, set by Assignment 4's schedule change.
- Assignment 4 lands first: the quality requirements, the functional requirements, the ADRs, the architecture document with its scope and drivers, and the priority matrix exist before this work adds to them.
- The requirements files this plan edits are Assignment 4's; no new requirements file is added, because the tests stay inside the QR file and the testing plan stays inside the project plan.
- The context diagram and its Week 2 rules stay with `## System Context` in Assignment 4; this work adds the other three views and the diagram rules that govern them.
- The functional requirements and the ADRs name containers from Week 4, and the container view must name them all; there is no fixed container list.
- A test's `**Level:**` is one of `CI`, `scripted`, or `manual`; a `scripted` test names the command a person runs, and it becomes `CI` and names its workflow step when it is wired into the product CI.
- ISO/IEC 25010:2023 stays the standard for the quality requirements, the [Scrum Guide](https://scrumguides.org/scrum-guide.html) stays the ceremony method, and C4 is the view style, with Structurizr, LikeC4, and C4-PlantUML recommended and no diagram tool mandated.
- The meeting-booking example is the example for every full example, as it is in Assignment 4's files.
- The release this week is `REL-05`, and the first release was `REL-03`.
- Week 5's other work — the unit tests, the deployment, `REL-05`, the pitch deck, the customer meeting, and the AI usage report — is designed when the whole assignment is written, and this plan does not settle it.
- The two review files are local notes and are not committed.

## Sources

### The Course Materials This Plan Changes

- [`course/plans/a4-plan.md`](a4-plan.md), especially its [Design Decisions](a4-plan.md#design-decisions) and [edited requirements files](a4-plan.md#2-edited-requirements-files): the scope this plan takes over.
- [`course/syllabus.md`](../syllabus.md), especially Week 5 and the Submission 5 row: the week's other deliverables and the deadline Assignment 4 sets.
- [`lectures/lecture-4.typ`](../../lectures/lecture-4.typ): ISO 25010, the six-part scenario and its worked test, the drivers, the ADR, and the priority matrix.
- `assignments/assignment-4.md`, once it is written: the shape Assignment 5 follows, as designed in [`a4-plan.md`](a4-plan.md).
- [`course/decisions/a3.md`](../decisions/a3.md), especially `A3-DEC-018` (the product-code CI moves to Week 4) and `A3-DEC-022` (the one-way chain), which the tests and the trace extend.

### The Requirements This Plan Extends

- [General Requirements](../../requirements/general-requirements.md), [Planning Requirements](../../requirements/planning-requirements.md), [Releases](../../requirements/releases-requirements.md), [Weekly Report](../../requirements/weekly-report-requirements.md), [Repository Requirements](../../requirements/repository-requirements.md), [Definition Of Done](../../requirements/definition-of-done-requirements.md), and [Decisions Requirements](../../requirements/decisions-requirements.md).

### The Format Reference

- The `timeful` checkout at `/home/eyjafjallajokull/Desktop/gh/timeful`: `docs/requirements/quality/README.md` with `qr/QR-nnn.md`, `docs/design/architecture/README.md` for its views, and `adr/TEMPLATE.md`.
- [MADR 4](https://adr.github.io/madr/), [ISO/IEC 25010:2023](https://iso25000.com/en/iso-25000-standards/iso-25010), the [C4 model](https://c4model.com/), [Structurizr](https://structurizr.com/), [LikeC4](https://github.com/likec4/likec4), and the [Scrum Guide](https://scrumguides.org/scrum-guide.html).

### The Architecture Examples The User Named

- [`EventTicketSystem/Design/Architecture.md`](https://github.com/otrebmuh/EventTicketSystem/blob/2a928d226d43704457ad5be46b1e6b80f5bca8cb/Design/Architecture.md), [`HotelPricingSystem/Design/Architecture.md`](https://github.com/otrebmuh/HotelPricingSystem/blob/433e061f712a8748fdf04a6f767752e12be2f4b9/Design/Architecture.md), and [The Guide](https://github.com/inno-se/the-guide), for the views and their legends.

### The Prior Iterations Consulted

- [`tmp/itpd-2025/assignments/assignment-4.md`](../../tmp/itpd-2025/assignments/assignment-4.md), for the quality requirement evidence it expected and the testing plan.
- [`tmp/swp-2026/assignments/Assignment_04.md`](../../tmp/swp-2026/assignments/Assignment_04.md), for the range of quality requirement evidence it expected.
- The backlog task this plan closes or changes: TASK-134.
