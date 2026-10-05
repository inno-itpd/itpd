---
id: TASK-067
title: Warn students that Assignment 1 changed after the deadline
status: Done
assignee: []
created_date: '2026-10-05 17:00'
updated_date: '2026-10-05 17:03'
labels: []
dependencies: []
ordinal: 67000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Assignment 1 was revised on 5 October 2026, after the Week 1 deadline. A student rereading it would see requirements they never met and think they got Week 1 wrong.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 Assignment 1 opens with a note that it was revised after the Week 1 deadline
- [x] #2 The note says Week 1 is graded against the version published at the deadline and links it by permalink
- [x] #3 The note points at the Assignment 2 catch-up rather than restating it
<!-- AC:END -->

## Definition of Done
<!-- DOD:BEGIN -->
- [x] #1 All acceptance criteria are satisfied
- [x] #2 Changed Markdown files are formatted: `pnpm run format:markdown`
- [x] #3 `pnpm run lint:markdown` passes
- [x] #4 `pnpm run test:markdown-format` and `pnpm run test:markdown-rules` pass
- [x] #5 `pnpm run check:lectures` passes
<!-- DOD:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Added a NOTE alert under the dates in assignments/assignment-1.md: revised on 5 October after the deadline, graded against the fe58ba7 permalink, the main changes named, and Assignment 2 Parts 2 and 3 linked for the catch-up.
<!-- SECTION:FINAL_SUMMARY:END -->
