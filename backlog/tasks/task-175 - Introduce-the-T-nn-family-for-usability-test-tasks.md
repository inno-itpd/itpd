---
id: TASK-175
title: Introduce the T-nn family for usability test tasks
status: Done
assignee:
  - '@Danila Danko'
created_date: '2026-11-17 15:17'
updated_date: '2026-11-17 15:36'
labels: []
dependencies: []
modified_files:
  - requirements/general-requirements.md
  - requirements/usability-testing-requirements.md
  - requirements/analytics-requirements.md
  - requirements/quality-requirements-requirements.md
  - requirements/weekly-report-requirements.md
  - assignments/assignment-7.md
  - assignments/assignment-8.md
  - guides/usability-testing.md
  - course/decisions/a7.md
  - course/plans/a7-plan.md
priority: medium
type: docs
ordinal: 160000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
A finding's **Tasks:** field promises the tasks the finding came from, but a usability test task has no identifier, so every example carries participant codes only and every artifact names a task by position ("the main task", "the first secondary task"). The course's precedent is AC-nn: an identifier scoped to its parent, numbered within it, with a section anchor and a pair citation. Scoping T-nn to its UT-nn closes the gap without a repository-wide family.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 The identifier rules define T-nn: two digits, scoped to its UT-nn, numbered in the fixed run order with T-01 the main task, its ### T-nn section under ## The Tasks, its #t-nn anchor, its UT-01 T-01 citation, and its retired-number form.
- [x] #2 The usability testing requirements say the three tasks are T-01, T-02, and T-03, each a ### T-nn section with its scenario, start point, end state, time limit, and help rule, and the success criterion stated once for the test.
- [x] #3 A finding's **Tasks:** field names the task by UT-01 T-nn with its participant codes, and the full example's record, session note, results table, findings, and conclusion use the identifiers.
- [x] #4 The weekly report example, the usability quality requirement and its manual test, the event table's task property, and the instrumentation prose use the T-nn identifiers.
- [x] #5 Assignment 7, Assignment 8, and the usability guide carry the identifiers where they write the tasks, the findings, and the results.
- [x] #6 The Assignment 7 decision log records the family and the Assignment 7 plan reflects it.
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
1. `requirements/general-requirements.md`: add `T-nn` to the Week 7 family list in rule 1; insert a new rule after the participant rule defining `T-nn`: two digits, scoped to its `UT-nn`, numbered in the fixed run order with `T-01` the main task, its `### T-nn` section under `## The Tasks`, the identifier alone in the heading so its anchor is `#t-nn`, cited as `UT-01 T-01` and linked as `ut-01/README.md#t-01`, never renumbered or reused, a task removed before the first session retiring its number, exempt from rules 4 and 10 to 12, and not a repository-wide family; renumber the finding and `CFG-nn` rules.
2. `requirements/usability-testing-requirements.md`: add the task-identifier rules to The Tasks; fix the `**Tasks:**` field and its example; convert the full example's record tasks to `### T-01` to `### T-03` with their fields, and carry the identifiers into the session note, the instrumentation and analysis-plan examples, the results table and prose, the findings, and the conclusion.
3. `requirements/analytics-requirements.md`: the `usability_task_started` and `usability_task_ended` rows take the `T-nn` in `task`.
4. `requirements/quality-requirements-requirements.md`: the `QR-05`/`QRT-01` example names `UT-01 T-01` for its main-task scenario, procedure, and pass criterion.
5. `requirements/weekly-report-requirements.md`: the Week 7 design example and the Week 8 results example use `T-01` to `T-03` in the table and the results prose.
6. `assignments/assignment-7.md`, `assignments/assignment-8.md`, and `guides/usability-testing.md`: write the task identifiers where the tasks, the findings, and the results are described, each linking the owning rule.
7. `course/decisions/a7.md` gains the next decision entry; `course/plans/a7-plan.md` and `course/plans/a8-plan.md` stop claiming a single identifier family.
8. Run the format, lint, test, lecture, and link gates; record notes and the final summary; check the acceptance criteria and the Definition of Done, and close the task.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Introduced `T-nn` as the family scoped to a `UT-nn`, modeled on `AC-nn`: two digits, numbered in the fixed run order with the main task first, cited as the pair `UT-01 T-01`, its section `### T-nn` under the record's `## The Tasks` with the `#t-nn` anchor. A task is exempt from rules 4 and 10 to 12 like `AC-nn`: it carries no `**Status:**` field, a task removed before the first session retires its number, and a replacement takes the next free one; there is no repository-wide `T-nn` family. The new rule 29 in the identifier rules sits after the participant rule, so the finding rule and the three `CFG-nn` rules are renumbered to 30 to 33; no material cited the old numbers, so the renumbering breaks no reference.

The `**Tasks:**` field now names the task as `UT-01 T-01` with the participant pairs, and both full-example findings show it (`UT-01 T-01` and `UT-01 T-03`). The record's task list became `### T-01` to `### T-03` sections with scenario, start point, end point, time limit, and help rule fields, and the results table, session note, analysis plan, instrumentation prose, conclusion, weekly-report design and results examples, QR/QRT example, and tracking-plan rows carry the identifiers. The tracking plan's `task` values changed from `main`/`secondary-1`/`secondary-2` to the `T-nn`.

Recorded the decision as `A7-DEC-033` and added it to the A7 plan's decision list; the plan now says two identifier families and names the sections, the fields, and the pair citation in its identifier, task, and requirement-change bullets. Validation: `pnpm run format:markdown`, `format:markdown:check`, and `lint:markdown` pass; `test:markdown-format` and `test:markdown-rules` pass with 34 tests each; `check:lectures` passes with 8 decks; `check:links` reports 4142 total, 921 unique, 4140 OK, 0 errors, 2 excluded, and 1 redirect.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Introduced `T-nn`, a task identifier scoped to its `UT-nn`, so a finding can name the task it came from. The identifier rules define it on the `AC-nn` model: two digits, numbered in the fixed run order with the main task `T-01`, the `### T-nn` section under the record's `## The Tasks` with a `#t-nn` anchor, the pair citation `UT-01 T-01`, and the retirement form. The usability testing requirements write the three tasks as sections with their scenario, start point, end state, time limit, and help rule, state the success values once, and make the `**Tasks:**` field carry the task and the participant codes; the full example's record, session note, results table, findings, and conclusion use the identifiers. The tracking plan's `task` property, the `QR-05`/`QRT-01` example, the weekly-report design and results examples, Assignment 7, Assignment 8, and the usability guide use the same identifiers. `A7-DEC-033` records the decision, and the A7 plan reflects the second family. All Markdown format, lint, and test gates, the lecture check, and the link check pass.
<!-- SECTION:FINAL_SUMMARY:END -->
