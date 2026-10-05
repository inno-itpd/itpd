---
id: TASK-071
title: State the weekly customer meeting in the syllabus
status: To Do
assignee: []
created_date: '2026-10-05 19:20'
labels: []
dependencies: []
references:
  - course/syllabus.md
  - requirements/customer-meetings-requirements.md
priority: medium
type: docs
ordinal: 67000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
requirements/customer-meetings-requirements.md#every-meeting requires one meeting with the customer every week from W1, but course/syllabus.md, the single source of truth for the schedule, names only the W1 kickoff and the W2 validation meeting. Found while closing TASK-033.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [ ] #1 course/syllabus.md states that the team meets the customer every week from W1, the W1 meeting being the kickoff
- [ ] #2 The syllabus's weekly entries and course overview agree with requirements/customer-meetings-requirements.md#every-meeting
<!-- AC:END -->

## Definition of Done
<!-- DOD:BEGIN -->
- [ ] #1 All acceptance criteria are satisfied
- [ ] #2 Changed Markdown files are formatted: `pnpm run format:markdown`
- [ ] #3 `pnpm run lint:markdown` passes
- [ ] #4 `pnpm run test:markdown-format` and `pnpm run test:markdown-rules` pass
- [ ] #5 `pnpm run check:lectures` passes
<!-- DOD:END -->
