---
id: TASK-040
title: Make the syllabus in this repository the single source of truth
status: Done
assignee: []
created_date: '2026-10-05 02:38'
updated_date: '2026-10-05 02:40'
labels:
  - docs
dependencies: []
priority: medium
ordinal: 40000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
AGENTS.md describes course/syllabus.md as a formatted copy of the instructors' syllabus and not a second source of truth, and calls it and its dashes the instructor's. The syllabus in this repository is now the single source of truth for the schedule, dates, deadlines, and course policies, and it is edited here directly. No tracked file should point maintainers at the instructors' repository or treat the syllabus as someone else's copy.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 AGENTS.md describes course/syllabus.md as the single source of truth for the schedule, dates, deadlines, and course policies, edited in this repository
- [x] #2 No tracked file outside backlog/ calls the syllabus a copy or mentions the instructors' repository or the instructor's syllabus
- [x] #3 The References And Navigation link in course/syllabus.md is labelled for the student README it points at, not as an instructor overview
<!-- AC:END -->

## Definition of Done
<!-- DOD:BEGIN -->
- [x] #1 All acceptance criteria are satisfied
- [x] #2 Changed Markdown files are formatted: `pnpm run format:markdown`
- [x] #3 `pnpm run lint:markdown` passes
- [x] #4 `pnpm run test:markdown-format` and `pnpm run test:markdown-rules` pass
- [x] #5 `pnpm run check:lectures` passes
<!-- DOD:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
AGENTS.md: the repository map row, the md/no-irregular-dash rationale, and the Layering paragraph no longer call the syllabus a copy or the instructor's. course/syllabus.md: the References link to ../README.md is now Course README.
<!-- SECTION:NOTES:END -->
