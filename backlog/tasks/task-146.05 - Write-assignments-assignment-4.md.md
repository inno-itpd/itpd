---
id: TASK-146.05
title: Write assignments/assignment-4.md
status: Done
assignee: []
created_date: '2026-10-20 17:56'
updated_date: '2026-10-20 18:16'
labels: []
dependencies: []
parent_task_id: TASK-146
type: docs
ordinal: 122000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Write `assignments/assignment-4.md` per section 4 of `course/plans/a4-plan.md`, in the shape of `assignments/assignment-3.md`: header with the Saturday 24 October 2026 hard deadline, `## Objectives`, the eleven numbered parts, `## What Good Looks Like`, `## Assignment Report In The Repository` with its coverage table, `## Assignment Report On Moodle` with its wrapper, `### Submission Procedure`, and `## Checklist`.
It is a delta against `requirements/` and cites the rule its part cites.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 Every part cites the rule it relies on, and no rule is restated.
- [x] #2 The coverage table carries the plan rows and the checklist has one item per part and per artifact.
- [x] #3 The date is Saturday 24 October 2026 at 23:59 everywhere it appears, with no soft deadline.
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
Wrote `assignments/assignment-4.md` in the Assignment 3 shape: header with the Saturday 24 October 2026 deadline and no soft deadline, `## Objectives`, Parts 1 to 11, `## What Good Looks Like` with eleven points, the repository report with the plan coverage table, the Moodle wrapper and `### Submission Procedure`, and a checklist that cites each part. Each part links its rule instead of restating it. Validation: the four Markdown gates and `check:links` pass.
<!-- SECTION:NOTES:END -->
