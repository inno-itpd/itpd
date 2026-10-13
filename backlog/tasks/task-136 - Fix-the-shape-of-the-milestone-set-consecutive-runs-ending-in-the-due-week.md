---
id: TASK-136
title: 'Fix the shape of the milestone set: consecutive runs ending in the due week'
status: Done
assignee: []
created_date: '2026-10-13 16:42'
updated_date: '2026-10-13 16:45'
labels:
  - docs
dependencies: []
ordinal: 107000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Each milestone `**Sprints:**` field is a consecutive run of sprints that ends in the week the milestone is due, the runs are disjoint and together name every sprint, and identifiers are never renumbered: a step that slips keeps its number, closes late, and has its leftover work rescheduled into a later sprint milestone rather than the run being extended past its due week. Revises D7 again.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 `requirements/planning-requirements.md` requires each `**Sprints:**` run to be consecutive and to end in the week its milestone is due.
- [x] #2 `guides/planning-and-tracking.md` carries the consecutive-run and due-week rules and drops the row that let a sprint change hands.
- [x] #3 `assignments/assignment-3.md` states the consecutive runs and the due-week end for the Week 3 milestone set, in the part and the checklist.
- [x] #4 `handoff.md` records the fifteenth session and the further revision to D7.
- [x] #5 All Markdown gates, the lecture check, the link check, and `backlog doctor` pass.
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

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Both tightenings implemented: rule 8 and the `**Sprints:**` field cell in `requirements/planning-requirements.md` require consecutive runs, each ending in the week its milestone is due, with the runs disjoint and covering `SPRINT-03` to `SPRINT-09`. The guide gained the staircase example (`MLS-03` over `SPRINT-03`, `MLS-05` over `SPRINT-04` to `SPRINT-05`) and the slip rule, and lost the "A sprint changes hands" row, because extending a run past its due week would break its number and identifiers are never renumbered: the leftover work moves to a later sprint milestone and the step closes late. Assignment 3 states the run shape in Part 2 item 4 and the checklist. The handoff records the fifteenth session and revises D7 again. Validation: `format:markdown` (no changes), `lint:markdown`, `test:markdown-format` and `test:markdown-rules` (34 each), `check:lectures` (3 decks), `check:links` (0 errors), and `backlog doctor` all pass.
<!-- SECTION:NOTES:END -->
