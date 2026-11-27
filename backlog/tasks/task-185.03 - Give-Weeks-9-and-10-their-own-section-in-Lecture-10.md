---
id: TASK-185.03
title: Give Weeks 9 and 10 their own section in Lecture 10
status: Done
assignee:
  - '@codex'
created_date: '2026-11-27 11:13'
updated_date: '2026-11-27 11:14'
labels: []
dependencies: []
documentation:
  - lectures/AGENTS.md
modified_files:
  - lectures/lecture-10.typ
  - lectures/lecture-10.pdf
parent_task_id: TASK-185
type: docs
ordinal: 177000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
The course recap grouped usability testing, customer acceptance, and handoff into one block. A dedicated final-sprints section makes it easier for students to follow the transition from testing usability to confirming customer journeys and handing over the release.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 The agenda and section dividers group Weeks 7 and 8 under Usability and configuration and Weeks 9 and 10 under Acceptance and handoff.
- [x] #2 Both sections have a discussion, quiz, and key takeaways that match their topics.
- [x] #3 The rebuilt Lecture 10 PDF matches its Typst source and renders one page per slide.
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
1. Split the recap and update the agenda.
2. Give each section its own discussion, quiz, and takeaways.
3. Rebuild and inspect the PDF, then verify reproducibility.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Split the recap into Usability and configuration for Weeks 7 and 8 and Acceptance and handoff for Weeks 9 and 10. Updated the agenda and gave each section its own discussion, quiz, and takeaways.

Verified the PDF agenda and visually reviewed pages 17–28. The 37 PDF pages match the 37 slide calls, and `pnpm run check:lectures` reproduced all ten decks. Markdown format and lint checks passed. Both Markdown fixture suites passed with 34 tests each. The fragment-aware link check reported zero errors.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Gave Weeks 9 and 10 their own Acceptance and handoff section so students can follow the final sprints as a unit. Updated the agenda and exercises, rebuilt and inspected the PDF, and verified the lecture, Markdown, and link checks.
<!-- SECTION:FINAL_SUMMARY:END -->
