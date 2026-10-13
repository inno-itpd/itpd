---
id: TASK-122
title: >-
  Move the candidate into `MLS-03`, soften the milestone size, and record the
  meeting outcome in the weekly report
status: Done
assignee:
  - '@opencode'
created_date: '2026-10-13 04:59'
updated_date: '2026-10-13 05:02'
labels: []
dependencies: []
references:
  - requirements/planning-requirements.md
  - requirements/minimum-usable-product-requirements.md
  - requirements/weekly-report-requirements.md
  - guides/planning-and-tracking.md
modified_files:
  - requirements/planning-requirements.md
  - requirements/minimum-usable-product-requirements.md
  - requirements/weekly-report-requirements.md
  - guides/planning-and-tracking.md
  - README.md
  - course/rules.md
  - AGENTS.md
  - TODO.md
type: docs
ordinal: 118000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
The Week 2 candidate has no stated destination in the plan, and the milestone definition "bigger than one sprint" contradicts the required `MLS-03`, which is delivered inside `SPRINT-03`. The demonstration verdicts also lack an explicit home in the weekly report. This task lands the resolved rules: the candidate is delivered under `MLS-03` with its core task as the first sentence of the milestone description; a milestone may span one or more sprints and closes once its `Done when` check passes; and the weekly report states each story verdict and each candidate story that moved out, citing the `DEC-nnn`.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 The milestone definition in `requirements/planning-requirements.md` reads as an increment on the path to the threshold whose sprints may span one or more sprints, and drops "bigger than one sprint" and "multi-sprint".
- [x] #2 `requirements/planning-requirements.md` adds the rule that the GitHub milestone closes once its `**Done when:**` check passes, and its `MLS-03` example opens the description with the core task.
- [x] #3 `guides/planning-and-tracking.md` rewrites the zoom-level test so a single-sprint increment can be a milestone when it is a checkpoint the customer reacts to, and its Step 4 example opens with the core task.
- [x] #4 `requirements/minimum-usable-product-requirements.md` gains a `**Since: W3**` rule that the candidate is delivered under the MUP milestone, `MLS-03`, with its core task maintained as the first sentence of the milestone description, and its rule 5 report clause links the weekly report instead of restating it.
- [x] #5 `requirements/weekly-report-requirements.md` gains a `**Since: W3**` rule that the report states each story accepted or rejected and each candidate story that moved out, each citing its `DEC-nnn`.
- [x] #6 The routing rows for the minimum usable product requirements in `README.md`, `course/rules.md`, and `AGENTS.md` describe the file scope: the candidate, how it is built, delivered, and released, and the customer verdict.
- [x] #7 The gates pass: `format:markdown:check`, `lint:markdown`, both test suites, `check:lectures`, and `check:links`.
<!-- AC:END -->

## Definition of Done
<!-- DOD:BEGIN -->
- [x] #1 All acceptance criteria are satisfied
- [x] #2 Changed Markdown files are formatted: `pnpm run format:markdown`
- [x] #3 `pnpm run lint:markdown` passes
- [x] #4 `pnpm run test:markdown-format` and `pnpm run test:markdown-rules` pass
- [x] #5 `pnpm run check:lectures` passes
- [x] #6 `pnpm run check:links` passes
- [x] #7 Implementation notes record the decisions made and the validation results
<!-- DOD:END -->

## Implementation Plan

<!-- SECTION:PLAN:BEGIN -->
1. Soften the milestone definition and add the close-on-done rule in `requirements/planning-requirements.md`, and open the `MLS-03` example with the core task.
2. Rewrite the zoom-level test and the Step 4 example in `guides/planning-and-tracking.md`.
3. Add the candidate-to-milestone rule and link the weekly report in `requirements/minimum-usable-product-requirements.md`.
4. Add the meeting-outcome rule to `requirements/weekly-report-requirements.md`.
5. Update the routing rows in `README.md`, `course/rules.md`, and `AGENTS.md`, tick the `TODO.md` item, and record the revision in `handoff.md`.
6. Run the gates and finalize this task.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Decisions: the milestone definition in requirements/planning-requirements.md now reads as an increment on the path to the threshold whose sprints may span one or more sprints, with a new rule that the GitHub milestone closes once its `**Done when:**` check passes, and the `MLS-03` example now opens its description with the core task. The candidate-to-milestone rule landed as a `**Since: W3**` rule in requirements/minimum-usable-product-requirements.md under Where The Candidate Lives, and rule 5 now links the weekly report instead of naming what shipped and moved out. requirements/weekly-report-requirements.md gained rule 12 for the customer-meeting outcome of the week. The guide zoom-level test now allows a single-sprint checkpoint when a threshold goal rests on it, and its Step 4 example opens with the core task. The MUP routing rows in README.md, course/rules.md, and AGENTS.md now name how the file is built, delivered, and released. The TODO.md item is ticked, and handoff.md records the eighth session and the revised D6, D7, and D16.
Validation: format:markdown (it reformatted AGENTS.md, README.md, and course/rules.md), format:markdown:check clean, lint:markdown clean, test:markdown-format 34 passed, test:markdown-rules 34 passed, check:lectures (3 decks, Typst 0.15.1), check:links (985 total, 0 errors, 2 excluded), backlog doctor clean.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Settled the candidate-to-milestone rules and the demonstration outcome: the milestone definition is softened to one or more sprints, `MLS-03` opens its description with the core task maintained from the MUP requirements, the GitHub milestone closes when its done-when check passes, the guide allows a single-sprint checkpoint, the weekly report states each story verdict and moved-out story citing its `DEC-nnn`, and the MUP routing rows in README.md, course/rules.md, and AGENTS.md name how it is built, delivered, and released. Verified with the Markdown gates, both vitest suites (34 and 34), check:lectures, check:links (985 total, 0 errors, 2 excluded), and backlog doctor.
<!-- SECTION:FINAL_SUMMARY:END -->
