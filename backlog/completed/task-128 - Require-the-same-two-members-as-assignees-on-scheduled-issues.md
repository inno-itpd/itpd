---
id: TASK-128
title: Require the same two members as assignees on scheduled issues
status: Done
assignee: []
created_date: '2026-10-13 08:25'
updated_date: '2026-10-13 08:30'
labels: []
dependencies:
  - TASK-114
references:
  - requirements/repository-requirements.md
  - requirements/task-issues-requirements.md
  - requirements/user-stories-requirements.md
  - guides/planning-and-tracking.md
  - course/syllabus.md
  - TODO.md
modified_files:
  - requirements/repository-requirements.md
  - requirements/task-issues-requirements.md
  - requirements/user-stories-requirements.md
  - guides/planning-and-tracking.md
  - course/syllabus.md
  - TODO.md
type: docs
ordinal: 124000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
The `Responsible` and `Accountable` fields carry the roles, because a GitHub assignee carries no role of its own; the assignees stay required as the standard GitHub surface, set to the same two members. The rule lands in `requirements/repository-requirements.md` as `### Assignees`, with the pointers in the task and story requirement sections, the guide, the syllabus, and TASK-119, and the table view of the GitHub project gains the built-in `Assignees` column. This revises D14 and D36 of the Week 3 handoff.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 `requirements/repository-requirements.md` gains `### Assignees` under Issue Tracking, `**Since: W3**` and listed in the TOC: the assignees are the same two members as `Responsible` and `Accountable`, exactly those two, set in the same act as the values and updated with them; an unscheduled open issue needs none; an already closed issue needs none; the assignees stay after close; pull requests are not assigned this way; and the label fallback sets them too
- [x] #2 Issue Fields says an already closed issue needs none, with the values staying after close, and GitHub Projects requires the built-in `Assignees` in the table view
- [x] #3 The task and story sections name the matching assignees with links to `#assignees`, and their maintenance and close sentences are in step; the guide names the assignees where it names the values, and the syllabus names them in the Week 3 deliverables and the Submission 3 row
- [x] #4 TASK-119 names the assignees in its acceptance criteria and depends on this task, and the `TODO.md` items for the assignees and the "keeps none" wording are answered
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
Wrote `### Assignees` in `requirements/repository-requirements.md` with the TOC row: the assignees are the two members the `Responsible` and `Accountable` values name, exactly those two, set in the same act and updated with them; an unscheduled open issue carries none; an already closed issue needs none; the assignees stay after close; pull requests are not assigned this way; and the label fallback sets them. Fixed the Issue Fields close wording and added the built-in `Assignees` to the GitHub Projects table view. The task and story sections and their scope sentences name the assignees with links to `#assignees`; the guide and syllabus name them. TASK-119 carries the assignees in its criteria and depends on TASK-128; the two TODO items are answered. Handoff D14 and D36 carry the twelfth session revision, Ordered Work item 20, and the assignees source. Verified: `format:markdown:check`, `lint:markdown`, both vitest suites (34 and 34), `check:links` (0 errors), `check:lectures` (3 decks match), `backlog doctor` clean.
<!-- SECTION:NOTES:END -->
