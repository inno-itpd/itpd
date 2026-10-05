---
id: TASK-071
title: State the weekly customer meeting in the syllabus
status: Done
assignee: []
created_date: '2026-10-05 19:20'
updated_date: '2026-10-05 19:46'
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
- [x] #1 course/syllabus.md states that the team meets the customer every week from W1, the W1 meeting being the kickoff
- [x] #2 The syllabus's weekly entries and course overview agree with requirements/customer-meetings-requirements.md#every-meeting
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
course/syllabus.md Section 1 now states that each team meets its customer at least once every week from Week 1, the Week 1 meeting being the kickoff, and links Every Meeting. Section 2 and the Week 2 entry no longer call the W2 meeting the second one or the kickoff the only one. W3-W9 entries rely on the Section 1 statement. All gates pass.
<!-- SECTION:FINAL_SUMMARY:END -->
