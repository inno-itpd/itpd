---
id: TASK-176
title: 'Name the usability test tasks Task 1, Task 2, and Task 3'
status: Done
assignee:
  - '@Danila Danko'
created_date: '2026-11-17 16:05'
updated_date: '2026-11-17 16:08'
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
ordinal: 161000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
A usability test task was turned into the `T-nn` identifier family, scoped to its `UT-nn`, on the `AC-nn` model. That spends an identifier family, an exception to five identifier rules, and the letter the course already uses for task issues on a three-item list inside one record, while the identical construct, a finding, is a numbered position in the record with no identifier family. `Task 1` is the course's own term and is already fixed in run order, so a finding's `**Tasks:**` field can name it as `UT-01 Task 1` without a second name. Reverse `A7-DEC-033` and carry the names through the same artifacts.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 The identifier rules no longer list `T-nn`: a task is `Task 1`, `Task 2`, or `Task 3`, a position in its test's task list, cited as `UT-01 Task 1` and linked by its `#task-1` anchor.
- [x] #2 The usability testing requirements write the tasks as `### Task 1` to `### Task 3` with their scenario, start point, end state, time limit, and help rule, and the `**Tasks:**` field names the task as `UT-01 Task 1` with the participant codes; the full example uses the names in its record, session note, results table, findings, and conclusion.
- [x] #3 The analytics `task` property, the QR/QRT example, the weekly report design and results examples, Assignment 7, Assignment 8, and the usability guide use `Task 1` to `Task 3`, and no student-facing file mentions `T-nn` except the reversed decision entry.
- [x] #4 `A7-DEC-034` reverses `A7-DEC-033` in full, `A7-DEC-033` carries the reversing status, and the A7 plan reflects one identifier family and the task positions.
- [x] #5 All project Definition of Done gates pass.
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
1. `requirements/general-requirements.md`: drop `T-nn` from the Week 7 family list; replace rule 29 with the `Task 1`, `Task 2`, `Task 3` position and citation rule; the finding and `CFG-nn` rules keep their numbers.
2. `requirements/usability-testing-requirements.md`: rewrite The Tasks rules 11 to 13; fix the `**Tasks:**` field and the full example's record, session note, instrumentation, analysis plan, results table, findings, and conclusion.
3. `requirements/analytics-requirements.md`: the `task` property takes the task's name, `Task 1` to `Task 3`.
4. `requirements/quality-requirements-requirements.md`: the QR/QRT example names `UT-01 Task 1`.
5. `requirements/weekly-report-requirements.md`: the Week 7 design and Week 8 results examples use the names in their prose and table.
6. `assignments/assignment-7.md`, `assignments/assignment-8.md`, and `guides/usability-testing.md`: use the names where the tasks, findings, and results are written, and correct the guide's citation rationale.
7. `course/decisions/a7.md`: `A7-DEC-034` reverses `A7-DEC-033` in full, `A7-DEC-033` carries the reversing status, and `course/plans/a7-plan.md` reflects one identifier family and the task positions.
8. Run the format, lint, test, lecture, and link gates; record notes and the final summary; check the criteria and the Definition of Done, and close the task.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Replaced `T-nn` with the `Task 1`, `Task 2`, `Task 3` position names and reversed `A7-DEC-033` in full with `A7-DEC-034`. The identifier rules drop the `T-nn` family line, and rule 29 now says a task is a position rather than an identifier, with the `#task-1` anchor and the `UT-01 Task 1` citation; the finding and `CFG-nn` rules keep their numbers. The Tasks rules 11 to 13 write the names, the section form, and the citation; the `**Tasks:**` field names `UT-01 Task 1` with the participant codes; the example's record, session note, instrumentation, analysis plan, results table, findings, and conclusion use the names.

The analytics `task` property takes the task's name, and the QR/QRT example, the weekly-report design and results examples, Assignments 7 and 8, and the guide use the same names. The guide's pitfall no longer claims a role-only name cannot be cited; it now gives the real reason, that it has no anchor. Decision notes: the family's exceptions to rules 4, 5, and 10 to 12 disappear, and the three tasks are fixed once the first session runs.

Validation: `pnpm run format:markdown` (no further changes), `format:markdown:check`, and `lint:markdown` pass; `test:markdown-format` and `test:markdown-rules` pass with 34 tests each; `check:lectures` passes with 8 decks; `check:links` reports 4152 total, 923 unique, 4150 OK, 0 errors, 2 excluded, and 1 redirect. One earlier link run saw three transient 503s on external GitHub permalinks, and the retry was clean.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Reversed the `T-nn` family and named the three usability test tasks `Task 1`, `Task 2`, and `Task 3`, positions in the test record like the findings. The identifier rules drop the family and say a task is not an identifier, with the `#task-1` anchor and the `UT-01 Task 1` citation. The usability testing requirements write each task as a `### Task 1` section with its scenario, start point, end state, time limit, and help rule, state the success values once, and make the finding's `**Tasks:**` field carry the task and the participant codes; the full example's record, session note, results table, findings, and conclusion use the names. The analytics `task` property, the `QR-05`/`QRT-01` example, the weekly-report design and results examples, Assignment 7, Assignment 8, and the guide use the same names. `A7-DEC-034` reverses `A7-DEC-033` in full, and the A7 plan reflects one identifier family. All Markdown format, lint, and test gates, the lecture check, and the link check pass.
<!-- SECTION:FINAL_SUMMARY:END -->
