---
id: TASK-146.07
title: 'Update the routers, the schedule, and the outstanding state for Week 4'
status: Done
assignee: []
created_date: '2026-10-20 17:56'
updated_date: '2026-10-20 18:16'
labels: []
dependencies: []
parent_task_id: TASK-146
type: docs
ordinal: 124000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Update `course/syllabus.md`, `README.md`, `SKILL.md`, `course/rules.md`, `AGENTS.md`, `TODO.md`, and `course/plans/a5-plan.md` per sections 6 and 10 of `course/plans/a4-plan.md`.
The syllabus names the Week 4 deliverables by path, gains its `Objectives` list, moves Submission 4 and Weeks 4 to 9 to Saturdays, and moves every date string with them.
The routers name the seven new requirements files and the new guide. `AGENTS.md` gains the repository-map rows, the destination-map Week 4 row, the identifiers, the terminology, and the rewritten Scrum paragraph. `TODO.md` ticks the A4 items this work closes.
The A5 plan moves its `## Trace` references to the quality requirements index.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 Every new file appears in `README.md`, `SKILL.md`, `course/rules.md`, and both of `AGENTS.md` tables.
- [x] #2 Every Week 4 to Week 9 deadline is a Saturday at 23:59, and every date string agrees across the syllabus, the README, the assignment, and the plan.
- [x] #3 No router names a rule the requirements do not state, and the A5 plan carries no architecture `## Trace` reference.
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
Updated `course/syllabus.md` (Week 4 deliverables by path and its Objectives, Submission 4 row, Saturdays 24 October to 28 November, the global policy block and the late-submission example), `README.md`, `SKILL.md`, `course/rules.md`, `AGENTS.md` (both tables, the W4 destination row, identifiers, terminology, the Scrum paragraph, the deadline bullet), `TODO.md` (the A4 items ticked, the feature type deferred, the lecture skipped, the catch-up annotated), and `course/plans/a5-plan.md` (its trace references moved to the quality requirements index). Validation: routing audit clean; the four Markdown gates and `check:links` pass.
<!-- SECTION:NOTES:END -->
