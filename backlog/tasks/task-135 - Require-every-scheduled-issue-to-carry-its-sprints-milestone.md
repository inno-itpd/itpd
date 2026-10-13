---
id: TASK-135
title: Require every scheduled issue to carry its sprint's milestone
status: Done
assignee: []
created_date: '2026-10-13 16:29'
updated_date: '2026-10-13 16:35'
labels:
  - docs
dependencies: []
ordinal: 106000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Every issue that carries a `Sprint` value belongs to the milestone that names that sprint: the `**Sprints:**` fields are disjoint and together name every sprint from `SPRINT-03` to `SPRINT-09`, so each sprint belongs to exactly one milestone. Scheduling sets the milestone with the three issue-field values, a reschedule moves both, and an unscheduled issue carries neither. Revises D7 and D33 in the handoff.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 `requirements/planning-requirements.md` states that the `**Sprints:**` fields are disjoint and together name every sprint, and that every issue carrying a `Sprint` value is assigned to the milestone of that sprint, reschedule included.
- [x] #2 `requirements/issue-tracking-requirements.md`, `requirements/user-stories-requirements.md`, and `requirements/task-issues-requirements.md` carry the milestone in their scheduling rules and their reschedule rules, by link.
- [x] #3 `guides/planning-and-tracking.md` carries the milestone in What You Produce, Step 2, the scheduling step, the move table, and Common Mistakes.
- [x] #4 `assignments/assignment-3.md` requires the `**Sprints:**` fields to cover every sprint and the `SPRINT-03` set to land on `MLS-03`, in the part and the checklist.
- [x] #5 `handoff.md` records the fourteenth session and the revisions to D7 and D33.
- [x] #6 All Markdown gates, the lecture check, the link check, and `backlog doctor` pass.
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
Option A (partition) implemented: the `**Sprints:**` fields are disjoint and together name every sprint, so each sprint belongs to exactly one milestone, and every issue carrying a `Sprint` value is assigned to the milestone of that sprint, with a reschedule moving both. The milestone joined the scheduling act in `requirements/issue-tracking-requirements.md` and in the story and task scheduling sections; the guide gained it in Step 2, the scheduling step, a move-table row for a sprint changing hands, and a Common Mistakes entry. Assignment 3 now writes further milestones until the set covers `SPRINT-03` to `SPRINT-09`, and its `SPRINT-03` set lands on `MLS-03`. The handoff records the fourteenth session and revises D7 and D33. Validation: `format:markdown:check`, `lint:markdown`, `test:markdown-format` (34 passed), `test:markdown-rules` (34 passed), `check:lectures` (3 decks), `check:links` (0 errors), and `backlog doctor` all pass.
<!-- SECTION:NOTES:END -->
