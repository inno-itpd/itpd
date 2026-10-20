# Plan: Assignment 5 — Quality Requirement Tests, The Testing Plan, C4 Views, And Continuous Integration

This plan records the scope Assignment 4 hands to Week 5, and everything that scope depends on, before the work is written.
It covers four groups: the quality requirement tests, the quality requirement testing plan and the progress recorded in it, the container, component, and sequence views, and continuous integration — `actionlint` and the product-code CI.
Assignment 4 is the functional requirements, the quality requirements, the architecture decision records, the architecture document's drivers and decision index, and the Week 4 process work — sprint planning and estimates, the ceremonies, the glossary, the team's `AGENTS.md`, `REL-04`, and the deadlines; [`a4-plan.md`](a4-plan.md) designs that and leaves these four groups out.
The [Design Decisions](#design-decisions) section states the model and the reason for it.
This is a scope plan, not the whole of Assignment 5: Week 5's other work — the unit test suite, the production deployment, `REL-05`, and the 7-minute pitch deck — comes from the syllabus and is designed when the rest of the assignment is written.
Nothing here settles that other work.

The rules this plan adds are `**Since: W5**`.
The requirements files they land in are the ones Assignment 4 creates or edits, so this plan adds sections to existing files and adds no new requirements file.

## Goal And Success Criteria

Write the verification, architecture-view, and CI scope of Assignment 5 and everything it depends on, so Week 5 can hand in the work Assignment 4 deferred.

Done means:

- Every rule has exactly one owner, and no rule that left `a4-plan.md` is lost: the tests in `quality-requirements-requirements.md`, the testing plan in `planning-requirements.md`, the views and their diagram rules in `architecture-requirements.md`, and the CI checks — `actionlint` and the product-code CI — in `repository-requirements.md` and `definition-of-done-requirements.md`.
- `assignments/assignment-5.md` carries the parts in [The Parts These Groups Become](#the-parts-these-groups-become), written as a delta against `requirements/`, and the rest of Week 5's parts join them when that assignment is designed.
- `quality-requirements-requirements.md` gains the `QRT-nn` rules with a `**Since: W5**` marker: the test's level, where it runs, why a manual test is manual, the evidence each level requires, and the rule that a `High` QR has a `CI` or `scripted` test.
- `planning-requirements.md` owns `## Quality Requirement Testing Plan`, with the columns `QR`, `QRT`, `Status`, `Checked`, `Planned for sprint`, and `Evidence`, and `## Progress Monitoring` reads the rows that are not `Passes`.
- `architecture-requirements.md` gains `## Views`, with `### Diagrams And Legends` at its end, and its container view names every container the functional requirements and the ADRs name and adds none they do not name.
- `repository-requirements.md` spells out the `**Since: W5**` CI block — `actionlint` and the five product-code checks — and `definition-of-done-requirements.md`'s W5 item names them.
- `releases-requirements.md` lets a release claim a `QR-nn` only through tests that are `Passes` and `Checked` in the release's sprint, and `weekly-report-requirements.md` points at the testing plan.
- `general-requirements.md` adds a `**Since: W5**` block with `QRT-nn` as the Week 5 identifier family, scoped to its QR, with its status exception and dropped form.
- `adr-requirements.md` gains a `**Since: W5**` sentence that an ADR cites no `QRT-nn`, and the plan's part and decision log carry it.
- `guides/quality-requirement-tests-and-views.md` exists and carries the method.
- `course/decisions/a5.md` records every decision as an `A5-DEC-nnn` entry, including reversing [`A3-DEC-018`](../decisions/a3.md#a3-dec-018-the-vocabulary-and-the-deferrals-follow-the-week-that-teaches-them) in full because its product-code CI clause moves to Week 5, `A5-DEC-017` restates the clauses that survive, and `A5-DEC-018` records that an ADR cites no `QRT-nn`; `course/decisions/a3.md` marks that entry reversed and moves its pointer.
- `course/syllabus.md`, `README.md`, `SKILL.md`, `course/rules.md`, `AGENTS.md`, and `TODO.md` are updated in step with the new guide, the moved deliverables, and the moved `actionlint` rule.
- `pnpm run format:markdown:check`, `pnpm run lint:markdown`, and `pnpm run check:links` pass.

## What Moved, And Where It Lands

[Assignment 4's plan](a4-plan.md) designed these four groups and now leaves them out.
This plan takes them over, with the week marker they carry.

| Group        | What Assignment 4 planned                                                                                                                                                | Where it lands here                                                                                          |
| ------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------ |
| QRT          | `## QRT-nn` sections inside the QR file, with `**Level:**`, `**Runs at:**`, and `**Why Manual:**`, and the rule that a `High` QR has a `CI` or `scripted` test           | `quality-requirements-requirements.md`'s test section, `**Since: W5**`                                       |
| QRT progress | `## Quality Requirement Testing Plan` in `docs/project-plan.md`, with status, last check, planned sprint, and evidence; the release claim; and the weekly-report pointer | `planning-requirements.md`, `releases-requirements.md`, and `weekly-report-requirements.md`, `**Since: W5**` |
| Views        | `## Views` — container, component, and sequence — with `### Diagrams And Legends` at its end                                                                             | `architecture-requirements.md`'s `## Views` and its `### Diagrams And Legends`, `**Since: W5**`              |
| CI           | `actionlint` over `.github/workflows/`, the product-code CI rule, and the Definition of Done's pull request item                                                         | `repository-requirements.md` and `definition-of-done-requirements.md`, `**Since: W5**`                       |

One rule is new rather than moved: `adr-requirements.md` gains the `**Since: W5**` sentence that an ADR cites no `QRT-nn`.

The boundary between the two plans:

- Assignment 4 keeps the architecture document: `docs/architecture/README.md` links the drivers, holds the decision index and the trace chain, and links the product vision for the scope it serves.
- Assignment 4 introduces `**Containers:**` on the FR and ADR records, naming the C4 deployable units.
  The container view here names exactly the containers those records name.
- The context diagram stays where Week 2 put it, under `## System Context` in `docs/product-vision.md`.
  It is the one C4 view the project has before this work, and its rules are the Week 2 rules, which did not move.
- Assignment 4's `## Trace` states the chain from a task to the threshold.
  This plan adds the one link to the testing plan, so the architecture document never restates when a test passes.
- Assignment 4's quality requirements have no tests.
  The rule that every `QR-nn` has at least one `QRT-nn` is `**Since: W5**`, so a Week 4 QR is finished when its scenario is written.

## Design Decisions

The tests live inside the requirement they prove, their state lives in one plan table, the views complete the architecture, and CI is where the tests and the workflow checks run.

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
  `docs/project-plan.md` gains `## Quality Requirement Testing Plan` after `## Releases` and before `## Progress Monitoring`.
  It is one table with the columns `QR`, `QRT`, `Status`, `Checked`, `Planned for sprint`, and `Evidence`, one row per `QRT-nn`, ordered by the quality requirements index and then by `QRT-nn`, with the `QR` and `QRT` cells linking the requirement and the test's section.
  The architecture document links this section once, from its `## Trace`.
- **The statuses.**
  `Status` is the test's state at its last check: `Passes`, `Fails`, `Not verified`, or `Dropped`, where `Not verified` means no check is recorded.
  `Checked` is the `SPRINT-nn` of that check, and `None` on a `Not verified` or `Dropped` row.
  `Planned for sprint` is exactly one `SPRINT-nn`, linked through the plan, and `None` on a `Dropped` row.
  `Evidence` is required for `Passes` and `Fails`, says `None` on a `Not verified` or `Dropped` row, and links the proof the test's level requires, per `quality-requirements-requirements.md`'s evidence rule.
  A row that is not `Passes` keeps its `Status` and its planned sprint; a `Fails` row keeps its `Checked` and `Evidence`, and a `Not verified` or `Dropped` row carries neither.
- **Evidence follows the level.**
  The quality requirements own what evidence each `CI`, `scripted`, and `manual` test must produce.
  A `CI` test links its run on `main`.
  A `scripted` test records the command and its output in a dated section of `reports/week-NN/README.md` or in a week-local supporting file the report links.
  A `manual` test records what was inspected, by whom, and what was observed in the same place, with a screenshot when the evidence is visual.
  The testing plan's `Evidence` cell links that evidence; it never holds the output itself.
- **Tests inherit the priority.**
  A test is not prioritized separately: it inherits its QR's priority, the testing plan's rows follow the order of the quality requirements index, and `Planned for sprint` is the only schedule.
- **Progress.**
  `## Progress Monitoring` gains a sentence that the weekly review reads the testing plan's rows that are not `Passes`.
  The weekly report's summary points at the testing plan rather than copying its rows, and the plan remains the one place the rows live.
- **Releases claim only verified quality.**
  A released changelog section may record a `QRT-nn` it adds, at any status, but it claims a `QR-nn` only when every non-dropped `QRT-nn` for it is `Passes` and `Checked` in the release's sprint, with evidence from the released state.
  It links the tests' sections, and a `QR-nn` name alone is no longer a quality claim.
- **The views.**
  `docs/architecture/README.md` gains `## Views` between `## Drivers` and `## Architectural Decisions`, with `### Diagrams And Legends` at its end and three views:

  1. the container view, embedded from `docs/architecture/container.<ext>`, showing the deployed units and what they exchange;
  2. the component view, embedded from `docs/architecture/component.<ext>`, showing the components inside one named container and the well-defined interfaces they expose;
  3. the sequence view, embedded from `docs/architecture/sequence-<core-task>.<ext>`, showing the core task's main actor flow across the containers, with each step numbered.

  The context view stays in the product vision's `## System Context`, so all four C4 views exist, in the order context, container, component, sequence.

- **The container view.**
  It names every container the functional requirements and the ADRs name, such as `frontend`, `static content`, and `backend`, and it adds none they do not name.
  The set in the view and the set the requirements name are the same.
  A project may add a database or another container, so the set is the team's, not a fixed list.
  The component view expands exactly one of those containers and shows the interfaces it exposes.
- **Diagrams And Legends.**
  The `### Diagrams And Legends` heading sits at the end of `## Views` and is the anchor other files link.
  It owns the diagram rules for the three views in that section:

  - every view under `## Views` carries a legend that names each shape, colour, and arrow it uses; a Markdown legend below the image is allowed when the image is legible without it;
  - the image and its source share a directory and a base name, and are updated in one change;
  - the image is SVG or PNG with an opaque background, so it is legible in both themes;
  - [Structurizr](https://structurizr.com/), [LikeC4](https://github.com/likec4/likec4), and C4-PlantUML are recommended for the container, component, and sequence views; Mermaid, PlantUML, D2, draw.io, and Excalidraw remain allowed;
  - a Mermaid source is committed beside an exported SVG or PNG, because a code fence alone is not the embedded image;
  - the views under `## Views` agree with the document's text and with the boundary;
  - every element the document names in prose appears in a view.

  The context diagram keeps its Week 2 rules in the product vision's `## System Context`, so these rules do not restate them.

- **Continuous integration.**
  `actionlint` checks `.github/workflows/` on pull requests and on `main`, pinned like any other tool.
  The product-code CI is five checks — linting, formatting, type checking, build, and automated tests — on pull requests and on `main`, pinned like any other tool.
  Both join the Definition of Done's pull request list, and both land in Week 5, the week the syllabus gives to testing and CI/CD.
- **The identifier family.**
  `QRT-nn` is a Week 5 family: two digits, scoped to its `QR-nn`, not globally unique, and never renumbered or reused within its QR.
  A dropped test keeps its section and its `**Dropped:**` with the date and the reason, per [Identifier Rules](../../requirements/general-requirements.md#identifier-rules).
- **The guide.**
  The method is a new `guides/quality-requirement-tests-and-views.md`, because the tests and the views are the practice this week adds, and the guide that Assignment 4 adds is about the requirements and the decisions, not about verification.

## Additions To The Requirements

These are additions to files Assignment 4 creates or edits.
No requirements file is added here.

### `quality-requirements-requirements.md`

- The test's placement and numbering as a `## QRT-nn` section inside its QR's file, its fields, its levels, its `**Runs at:**`, its `**Why Manual:**`, its procedure and pass criterion, the evidence each level requires, its dropped form, and the rule that every `QR-nn` has at least one `QRT-nn`, all `**Since: W5**`.
- The evidence rule: what a `CI`, `scripted`, or `manual` test must produce, so the testing plan's `Evidence` cell links it rather than restating it.
- The `High` business-importance rule: at least one `CI` or `scripted` test, and a manual test is a deviation when it is the only possible one.
- The one new clause on the priority matrix's `Status` rule: it is never a test's status; a test's status and last check are in the testing plan only.
  The base rule stays in Assignment 4.
- The full example gains the `QRT-nn` sections for its one QR, with a `CI` test and a `manual` test.

### `general-requirements.md`

- A new `**Since: W5**` block after rule 14, with four new numbered rules: `QRT-nn` is the Week 5 family and takes two digits; it is an exception to rule 10, because the testing plan carries its state and a dropped test carries `**Dropped:**`; a dropped test keeps its heading, its first line, and its procedure, with the date and the reason in `**Dropped:**`; and it is scoped to its `QR-nn` and is not globally unique.
- [Traceability Into Later Weeks](../../requirements/general-requirements.md#traceability-into-later-weeks) gains the test row: a `QRT-nn` traces to its `QR-nn`, and the testing plan carries its state.
  The row sits in the table, not under an earlier week's rule.

### `planning-requirements.md`

- `## Quality Requirement Testing Plan` after `## Releases` and before `## Progress Monitoring`, with its `**Since: W5**` marker, and the ToC and the parts list updated to milestones, sprints, releases, the testing plan, and progress.
- This file owns the table: its columns, its order, its statuses, and its rules for `Checked`, `Planned for sprint`, and the `Evidence` cell.
  The content that cell links is `quality-requirements-requirements.md`'s.
- `## Progress Monitoring` gains the sentence that the weekly review reads the rows that are not `Passes`, and keeps its place as the last part.
- The full example becomes a plan after Week 5, with the table, a `Passes` row checked in `SPRINT-05`, a `Not verified` row, and the later sprint sections and dates that go with it.

### `releases-requirements.md`

- [The Changelog](../../requirements/releases-requirements.md#the-changelog) gains the `**Since: W5**` claim rule: a released section records a `QRT-nn` it adds at any status, and claims a `QR-nn` only when every non-dropped test for it is `Passes` and `Checked` in the release's sprint, with evidence from the released state.
- The full example becomes the changelog after the fifth sprint's release, `REL-05`: a `[0.3.0]` section records a test it adds and a `QR-nn` it claims.

### `weekly-report-requirements.md`

- A new `**Since: W5**` rule 13, after rule 12: the report's summary points at `docs/project-plan.md#quality-requirement-testing-plan` for the tests that are not `Passes`, and copies none of the rows.
- The full example, which Assignment 4 sets in Week 04, becomes a Week 05 report: its summary carries the pointer, and its coverage table lists the Week 5 deliverables, including the testing-plan row.

### `architecture-requirements.md`

- `## Views` between `## Drivers` and `## Architectural Decisions`, with the three views, their paths, and their sources, all `**Since: W5**`.
- `### Diagrams And Legends` at the end of `## Views`, `**Since: W5**`, with the rules above; the context diagram keeps its Week 2 rules under `## System Context` in the product vision.
- The container view names every container the functional requirements and the ADRs name and adds none they do not name, and the component view expands one of them.
- The `## Trace` section gains the one link to `docs/project-plan.md#quality-requirement-testing-plan`, `**Since: W5**`.
- The full example gains a container view, its source, and its legend, and the architecture example's part list gains `## Views`, with the subsection inside it rather than a part of its own.

### `repository-requirements.md`

- The `**Since: W5**` CI block gains `actionlint` over `.github/workflows/` and the five product-code checks spelled out: linting, formatting, type checking, build, and automated tests, on pull requests and on `main`.
- The block keeps its place in [Continuous Integration](../../requirements/repository-requirements.md#continuous-integration), after the Markdown check, and pins its third-party actions per [Pinning Third-Party Actions](../../requirements/repository-requirements.md#pinning-third-party-actions).

### `definition-of-done-requirements.md`

- The `**Since: W5**` pull request item, which Assignment 4 moves out of Week 4, names `actionlint` and the product-code CI among the checks that must be green.
- The full example's `## Pull Request` list gains the item.

### `adr-requirements.md`

- A `**Since: W5**` sentence beside the `**Addresses:**` rule: the record cites no `QRT-nn`, because a test proves a requirement and the decision reaches the test through the requirement it addresses.

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

`## Common Mistakes` covers a test that restates the requirement, a manual test with no reason, a status on the test instead of the plan, output pasted into the `Evidence` cell, a diagram without a legend or a source, a component view that expands nothing, a sequence view that shows internals instead of the flow, a view that names a container the requirements do not, an ADR that cites a `QRT-nn`, and a release that claims a quality requirement its tests have not verified.

## The Parts These Groups Become

`assignments/assignment-5.md` is written as a delta against `requirements/`, in the shape Assignment 4's assignment uses: the header, `## Objectives`, the numbered parts, `## What Good Looks Like`, the repository report with its coverage table, the Moodle wrapper, the submission procedure, and the checklist.

These are the parts this plan settles; the rest of Week 5's parts are added with them when the whole assignment is written, and the parts are numbered then.

- **Write The Quality Requirement Tests.**
  At least one `QRT-nn` inside each QR's file, with its `**Level:**`, its `**Runs at:**`, and its `**Why Manual:**` when it is `manual`.
  Every `High` QR has a `CI` or `scripted` test.
- **Record The Testing Plan.**
  `docs/project-plan.md`'s `## Quality Requirement Testing Plan` with one row per test, its status, its last check, its planned sprint, and the evidence its level requires, linked from the plan's `Evidence` cell, and at least one `Passes` row whose `Checked` is `SPRINT-05` this week.
  Every row that is not `Passes` keeps its status and its planned sprint.
- **Draw The C4 Views.**
  A container view, a component view of one named container with its interfaces, and one sequence view of the core task's main flow, each embedded with its source, its legend, and an opaque SVG or PNG.
  The context view stays in `docs/product-vision.md#system-context`.
- **Add The CI Checks.**
  `actionlint` over `.github/workflows/` and the five product-code checks on pull requests and on `main`, each third-party action pinned, with the Definition of Done's pull request list updated and the latest `main` run green.
- **Link The Testing Plan.**
  The architecture document's `## Trace` links `docs/project-plan.md#quality-requirement-testing-plan` once; the changelog claims a `QR-nn` only through its passing, checked tests; the week's report's summary points at the testing plan; and no ADR cites a `QRT-nn`.

### What Good Looks Like

- a testing plan that says what is verified, when it was last checked, when the rest arrives, and what evidence proves it;
- a test level that matches how the test runs, a `**Why Manual:**` a reviewer accepts, and evidence that follows the level;
- a container view that names exactly the containers the requirements use, a component view that expands one of them, and a sequence view that shows the core task end to end rather than a component's internals;
- a legend that makes each diagram readable without the text, and a diagram that is legible in both themes;
- a CI check that is pinned, runs on pull requests and `main`, appears in the Definition of Done, and passes on the latest `main`;
- a release that claims only the quality requirements its tests have verified.

The rest of Week 5 — the unit tests, the deployment, `REL-05`, the pitch deck, the customer meeting, the action points, and the AI usage report — is not designed here.
`REL-05` is cut under the claim rule above, but its other parts wait for the whole assignment.

## New Maintainer Decision Log `course/decisions/a5.md`

The file follows the format of `course/decisions/a3.md`: a header paragraph, then `A5-DEC-nnn` entries with `**Status:**`, `**Decision:**`, `**Why:**`, `**Alternatives considered:**`, `**Where it lands:**`, and `**Reverses:**` on the entries that reverse an `A3-DEC`.

The entries:

1. The four groups — the tests, the testing plan, the container, component, and sequence views, and continuous integration (`actionlint` and the product-code CI) — move from Assignment 4's scope to Week 5, so Assignment 4 is the functional requirements, the quality requirements, the ADRs, the architecture document's drivers and decision index, and the Week 4 process work — sprint planning and estimates, the ceremonies, the glossary, the team's `AGENTS.md`, `REL-04`, and the deadlines.
2. A quality requirement test is a `## QRT-nn` section inside its QR's file, numbered within the QR and owned by `quality-requirements-requirements.md` with the requirement; no separate tests file is added.
3. A test's `**Level:**` is `CI`, `scripted`, or `manual`, `**Runs at:**` says where it runs, and a manual test carries `**Why Manual:**`; the test carries no state, and the testing plan carries its status, last check, planned sprint, and `Evidence` cell.
4. A `High` QR must have a `CI` or `scripted` test; a `High` QR whose only possible test is manual is a deviation, and the reason is recorded.
5. The testing plan lives in `docs/project-plan.md`'s `## Quality Requirement Testing Plan`, keeps its rows in the order of the quality requirements index, and `planning-requirements.md` owns its rules.
6. Tests inherit their QR's priority; there is no separate test priority, and `Planned for sprint` is the only schedule.
7. The evidence the testing plan records for a test follows its level: a `CI` test links its run, a `scripted` test records the command and its output, and a `manual` test records the inspection.
8. A release claims a `QR-nn` only when every non-dropped test for it is `Passes` and `Checked` in the release's sprint, with evidence from the released state; it may record a test it adds at any status.
9. The architecture's views are C4: the context view stays in the product vision, and the container, component, and sequence views arrive in Week 5; the component view expands one container and shows its interfaces, the sequence view shows the core task end to end, and every view has an opaque SVG or PNG and its source.
10. The container view names exactly the containers the functional requirements and the ADRs name, so the field Assignment 4 introduces and the view Week 5 draws cannot disagree.
11. The diagram rules — the legend, the source beside the image, the opaque image, the tools, the agreement with the text and the boundary, and the prose elements appearing in a view — live in `### Diagrams And Legends` under `## Views` in the architecture requirements.
12. Continuous integration is `actionlint` over `.github/workflows/` plus five product-code checks — linting, formatting, type checking, build, and automated tests — on pull requests and on `main`, pinned, with its Definition of Done item, and it arrives in Week 5.
13. [`A3-DEC-018`](../decisions/a3.md#a3-dec-018-the-vocabulary-and-the-deferrals-follow-the-week-that-teaches-them) is reversed in full, because its product-code CI clause moves from Week 4 to Week 5 and a reversal cannot be partial; entry 17 restates the plan's name, the "next product release" wording, the `MVP` vocabulary, and the deployment in Week 5.
14. `QRT-nn` is the Week 5 identifier family, scoped to its QR and not globally unique, and the general identifier rules gain its section exception and dropped form.
15. The new guide is `guides/quality-requirement-tests-and-views.md`.
16. The syllabus's Week 5 heading becomes "Testing, Verification & Deployment"; its objectives and deliverables gain the tests, the testing plan, the views, and the CI checks; its Submission 5 row becomes a "Verification & Deployment" summary; and the Week 4 deliverables lose the tests, the testing plan, the views, and the CI checks.
17. The surviving `A3-DEC-018` clauses: the syllabus keeps the project plan's name, the "next product release" wording, `MVP` as vocabulary, and the production deployment in Week 5; only the product-code CI clause moves, to Week 5, and the entry's `**Where it lands:**` pointer names the Week 5 CI block in `repository-requirements.md`.
18. An ADR cites no `QRT-nn`: a test proves a requirement, and the decision reaches the test through the `QR-nn` it addresses.

## Edited Files Outside `requirements/`

- **`course/syllabus.md`**: The Week 5 heading becomes `Testing, Verification & Deployment`.
  Its objectives gain the quality requirement tests, the quality requirement testing plan, and the container, component, and sequence views.
  The Week 5 deliverables gain those, and the existing "Test Suite & CI/CD" deliverable gains `actionlint` and the five product-code checks rather than a second CI line.
  The Submission 5 row is a `Verification & Deployment` summary: the quality requirement tests and testing plan, the container, component, and sequence views, the unit tests, the CI/CD checks, the production deployment, `REL-05`, and the pitch deck.
  The Week 4 deliverables lose the tests, the testing plan, the views, and the CI checks; Assignment 4's plan makes that edit, and this plan adds them to Week 5.
  Week 5's hard deadline stays Saturday 31 October 2026 at 23:59, as Assignment 4's schedule change sets it.
- **`README.md`**: The guide row in The Guides, the Assignment 5 row when the assignment is written, and no new requirements file row.
- **`SKILL.md`**: The routing row for the guide and the Week 5 artifacts, with the guide beside each requirements link; the front-matter `description` gains the tests, the views, and the CI checks when the assignment is written.
- **`course/rules.md`**: The new guide in its guide list, and the Week 5 artifacts, including the CI checks, in the routing.
- **`AGENTS.md`**: The Repository Map and the `requirements/` table gain `guides/quality-requirement-tests-and-views.md`; the `docs/` Destination Map's Week 4 architecture row gains the container, component, and sequence images and their sources in a Week 5 note, while the Week 2 row keeps the context diagram; the identifier conventions gain `QRT-nn` and the sentence that it is scoped to its QR; the terminology list gains `quality requirement test`, `quality requirement testing plan`, `container view`, `component view`, `sequence view`, `legend`, and `evidence`; the assignment checklist stays unchanged.
- **`TODO.md`**: The A5 items this work closes are ticked: where to track progress on a QRT, how to prioritize QRTs, product-code CI, `actionlint`, and sequence diagrams.
  The feature issue type and the named architecture-example links stay deferred with a note.
- **`course/decisions/a3.md`**: `A3-DEC-018` gets `**Status:** Reversed by A5-DEC-017`, linked to that entry once `course/decisions/a5.md` exists, and keeps its statement and fields; its `**Where it lands:**` pointer says the product-code CI marker moved from Week 4 to Week 5 and cites `A5-DEC-017`; `A5-DEC-017` restates the clauses that still hold.
- **`course/plans/a4-plan.md`**: It is updated in the same change for the scope boundary, the `actionlint` move, and the example week; it links this plan, and the rules it hands over are not repeated there.

## Edge Cases And Failure Modes

- **A test that is not `Passes` this week:** It stays in the testing plan with its status and its planned sprint; a `Fails` row keeps its `Checked` and `Evidence`, a `Not verified` or `Dropped` row carries neither, and the changelog claims no `QR-nn` through it.
- **A `Passes` test the team has not re-checked:** It keeps its `Checked` sprint; a release that wants to claim its `QR-nn` re-checks it first, and a release that does not claim it leaves the row as it is.
- **A `High` QR whose only possible test is `manual`:** It is a deviation, and the team records the reason; the test still carries `**Why Manual:**` and the evidence the plan records for it, and the changelog claims the requirement only when the test is `Passes` and `Checked` in the release's sprint.
- **A test that cannot run in the product CI in Week 5:** It is `scripted`, with its command or script path in `**Runs at:**`; when it is wired into the product CI in a later week, its `**Level:**` and `**Runs at:**` become `CI` and its workflow step, and the `Evidence` cell follows.
- **A test dropped after it was planned:** It keeps its section and its `**Dropped:**`, and its testing-plan row says `Dropped`, with `None` for `Checked`, `Planned for sprint`, and `Evidence`.
- **A container the team adds:** The functional requirements and the ADRs name it, the container view names it, and the component view expands it; there is no fixed list.
- **A view with no source:** It is not ready, because the image and its source are updated in one change.
- **A screenshot of a diagram:** It needs an opaque background and a legend, or it fails the theme rule and the legend rule.
- **A sequence view that shows a component's internals:** It is the wrong view; the sequence view shows the core task end to end across the containers.
- **A `QR-nn` with no test yet:** It exists only before Week 5's work is written; from Week 5 every `QR-nn` has at least one `QRT-nn`.
- **One rule in two places:** The diagram rule, the testing-plan rule, the evidence content, the `Evidence` cell rule, the release-claim rule, and the test-priority rule each have exactly one owner, and every other file links to it.

## Tests And Validation

- `pnpm run format:markdown`, then `pnpm run format:markdown:check`, `pnpm run lint:markdown`, `pnpm run test:markdown-format`, and `pnpm run test:markdown-rules`.
- `pnpm run check:links`, which checks every heading anchor the new file and the edited files cite.
- `pnpm run lint:actions` only if a workflow in this repository changes; the CI checks this plan adds are the students' rules, not this repository's workflows. `pnpm run check:lectures` only if a deck changes.
- A routing audit: the new guide appears in `README.md`, `SKILL.md`, `course/rules.md`, and both of `AGENTS.md`'s tables.
- A cross-reference audit: every `**Since: W5**` rule has an Assignment 5 part, including the weekly-report pointer and the ADR rule, and every part and coverage row has a rule.
- A move audit: no rule that left `a4-plan.md` is stated twice, and every rule has one owner; the CI group's checks and its Definition of Done item are separate rules.
- A view audit: every view has a legend, a source beside its image, and an opaque image; the container view names exactly the containers the FRs and ADRs name; the component view expands one container; the sequence view shows the core task end to end; and the context diagram still carries its Week 2 rules.
- A level audit: every `manual` test carries `**Why Manual:**`, every `CI` test names a workflow step, every `scripted` test names its script or command, and every testing-plan `Evidence` cell matches its test's level.
- A check audit: every `Passes` or `Fails` row carries a `Checked` sprint and an `Evidence` link, a `Not verified` or `Dropped` row carries neither, and every claimed `QR-nn` has all its non-dropped tests `Passes` and `Checked` in the release's sprint.
- A trace audit: the testing plan is linked once from the architecture's `## Trace`, the week's report points at it, and no test's status appears outside the testing plan.
- A full-example audit: every edited example carries its new field or section, every example is set in the week its new rule belongs to, and the tests example has a `CI` and a `manual` test.
- A CI audit: `actionlint` and the five checks are in the W5 block, pinned, on pull requests and on `main`, and the Definition of Done's W5 item names them.
- `backlog doctor`, after the task changes.

## Assumptions

- This work lands in the `itpd` course repository only, and no file is created under `docs/` or `reports/`, since those belong to student repositories.
- Assignment 5 is Week 5, and Week 5's due date is Saturday 31 October 2026 at 23:59, set by Assignment 4's schedule change.
- Assignment 4 lands first: the quality requirements, the functional requirements, the ADRs, the architecture document with its drivers and decision index, and the priority matrix exist before this work adds to them.
- The requirements files this plan edits are Assignment 4's; no new requirements file is added, because the tests stay inside the QR file and the testing plan stays inside the project plan.
- The context diagram and its Week 2 rules stay with `## System Context` in the product vision; this work adds the other three views under `## Views` in the architecture document and their diagram rules under `### Diagrams And Legends`.
- The Week 4 process work stays in Assignment 4; only `actionlint` and the product-code CI move to Week 5.
- The examples are set in the week their rule belongs to: the planning example after Week 5, the changelog after `REL-05`, and the weekly report a Week 05 report.
- The functional requirements and the ADRs name containers from Week 4, and the container view names exactly that set; there is no fixed container list.
- A test's `**Level:**` is one of `CI`, `scripted`, or `manual`; a `scripted` test names the command a person runs, and it becomes `CI` and names its workflow step when it is wired into the product CI.
- ISO/IEC 25010:2023 stays the standard for the quality requirements, the [Scrum Guide](https://scrumguides.org/scrum-guide.html) stays the ceremony method, and C4 is the view style, with Structurizr, LikeC4, and C4-PlantUML recommended and no diagram tool mandated.
- The meeting-booking example is the example for every full example, as it is in Assignment 4's files.
- The release this week is `REL-05`, the first release was `REL-03`, and the fifth release's example is `0.3.0`.
- Week 5's other work — the unit tests, the deployment, `REL-05`, the pitch deck, the customer meeting, and the AI usage report — is designed when the whole assignment is written, and this plan does not settle it.
- The two review files are local notes and are not committed.

## Sources

### The Course Materials This Plan Changes

- [`course/plans/a4-plan.md`](a4-plan.md), especially its [Design Decisions](a4-plan.md#design-decisions) and [edited requirements files](a4-plan.md#2-edited-requirements-files): the scope this plan takes over.
- [`course/syllabus.md`](../syllabus.md), especially Week 5 and the Submission 5 row: the week's other deliverables and the deadline Assignment 4 sets.
- [`lectures/lecture-4.typ`](../../lectures/lecture-4.typ): ISO 25010, the six-part scenario and its worked test, the drivers, the ADR, and the priority matrix.
- `assignments/assignment-4.md`, once it is written: the shape Assignment 5 follows, as designed in [`a4-plan.md`](a4-plan.md).
- [`course/decisions/a3.md`](../decisions/a3.md), especially `A3-DEC-018` (the product-code CI deferred to Week 4, which this plan reverses to Week 5) and `A3-DEC-022` (the one-way chain), which the tests and the trace extend.

### The Requirements This Plan Extends

- [General Requirements](../../requirements/general-requirements.md), [Planning Requirements](../../requirements/planning-requirements.md), [Releases](../../requirements/releases-requirements.md), [Weekly Report](../../requirements/weekly-report-requirements.md), [Repository Requirements](../../requirements/repository-requirements.md), and [Definition Of Done](../../requirements/definition-of-done-requirements.md), plus `requirements/adr-requirements.md`, which Assignment 4 creates and which is named here in code because the file does not exist until that plan is carried out.

### The Format Reference

- The `timeful` checkout at `/home/eyjafjallajokull/Desktop/gh/timeful`: `docs/requirements/quality/README.md` with `qr/QR-nnn.md`, `docs/design/architecture/README.md` for its views, and `adr/TEMPLATE.md`.
- [MADR 4](https://adr.github.io/madr/), [ISO/IEC 25010:2023](https://iso25000.com/en/iso-25000-standards/iso-25010), the [C4 model](https://c4model.com/), [Structurizr](https://structurizr.com/), [LikeC4](https://github.com/likec4/likec4), and the [Scrum Guide](https://scrumguides.org/scrum-guide.html).

### The Architecture Examples The User Named

- [`EventTicketSystem/Design/Architecture.md`](https://github.com/otrebmuh/EventTicketSystem/blob/2a928d226d43704457ad5be46b1e6b80f5bca8cb/Design/Architecture.md), [`HotelPricingSystem/Design/Architecture.md`](https://github.com/otrebmuh/HotelPricingSystem/blob/433e061f712a8748fdf04a6f767752e12be2f4b9/Design/Architecture.md), and [The Guide](https://github.com/inno-se/the-guide), for the views and their legends.

### The Prior Iterations Consulted

- [`tmp/itpd-2025/assignments/assignment-4.md`](../../tmp/itpd-2025/assignments/assignment-4.md), for the quality requirement evidence it expected and the testing plan.
- [`tmp/swp-2026/assignments/Assignment_04.md`](../../tmp/swp-2026/assignments/Assignment_04.md), for the range of quality requirement evidence it expected.
- The backlog tasks this plan changes: TASK-134 records the Week 3 to Week 4 move, and TASK-145 records the Week 4 to Week 5 move.
