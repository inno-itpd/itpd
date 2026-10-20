---
id: TASK-148
title: Keep refined items in the product backlog until sprint planning
status: Done
assignee: []
created_date: '2026-10-20 21:17'
updated_date: '2026-10-20 21:21'
labels:
  - docs
dependencies: []
modified_files:
  - requirements/sprint-ceremonies-requirements.md
  - requirements/issue-tracking-requirements.md
  - guides/planning-and-tracking.md
  - assignments/assignment-4.md
  - course/decisions/a4.md
  - course/plans/a4-plan.md
priority: high
ordinal: 127000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
The Week 4 refinement rule put a ready item into its future sprint's milestone. Because the sprint's milestone is its sprint backlog, that made refinement a scheduling act, which obliges the Responsible and Accountable values and both assignees, so Assignment 4's coverage row pointed at the SPRINT-05 and SPRINT-06 milestones sprints early and an unplanned sprint could carry a sprint-backlog link.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 sprint-ceremonies-requirements.md defines the product backlog and refinement leaves an item unscheduled until its planning
- [x] #2 Sprint Planning starts the selection at the top of the product backlog and scheduling is where the issue leaves it
- [x] #3 guides/planning-and-tracking.md#refine-before-you-plan no longer moves a ready item into a future sprint's milestone
- [x] #4 assignments/assignment-4.md Part 1, the coverage row, and the checklist point at the product backlog instead of the SPRINT-05 and SPRINT-06 milestones
- [x] #5 course/decisions/a4.md gains the entry recording the change and course/plans/a4-plan.md follows
- [x] #6 The Markdown gates and the link check pass
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
Refinement now leaves an item unscheduled. The sprint's milestone is its sprint backlog, and scheduling is one act that also sets Responsible, Accountable, and both assignees, so placing a refined item in a future sprint's milestone made refinement a scheduling act: it pre-populated SPRINT-05 and SPRINT-06 before their planning and let an unplanned sprint's plan section carry a sprint-backlog link. Decision: the product backlog is the open issues in no sprint's milestone, sprint planning starts its selection at the top of it, and scheduling is where an issue leaves it; refinement's evidence is the Story Points on a story that stays in the backlog. Files: requirements/sprint-ceremonies-requirements.md (the definition, refinement rules 1 and 4, sprint planning rule 3), requirements/issue-tracking-requirements.md (the unscheduled rule links the definition), guides/planning-and-tracking.md (Refine Before You Plan, Schedule With The Milestone), assignments/assignment-4.md (Part 1 step 4, the coverage row, the checklist, a What Good Looks Like bullet), course/decisions/a4.md (A4-DEC-034; no Reverses line because no earlier entry owned the placement), and course/plans/a4-plan.md (design section and coverage row). Validation: format:markdown (reformatted two coverage tables), format:markdown:check, lint:markdown, test:markdown-format (34), test:markdown-rules (34), check:lectures (4 decks), and check:links (1951 OK, 0 errors).
<!-- SECTION:NOTES:END -->
