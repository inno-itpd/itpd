---
id: TASK-181
title: Teach students to judge the evidence in a product pitch
status: Done
assignee:
  - '@codex'
created_date: '2026-11-20 12:38'
updated_date: '2026-11-20 12:42'
labels: []
dependencies: []
type: docs
ordinal: 166000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Teams preparing a seven-minute pitch need to connect each claim to the decision to back a pilot.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 Each section opens with a discussion and closes with key takeaways.
- [x] #2 The audience questions guide the pitch and rehearsal, including switching, timing, credibility and the pilot decision.
- [x] #3 The PDF shows a full screen and a crop, and staged examples of usability and hypothetical pilot evidence.
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
Revise the five sections in place using the booking example, rebuild the PDF, and verify the visuals and gates.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Reviewed all 32 rendered slides and inspected the seven questions, full booking screen and crop, and chart reveal at presentation size. Each section opens with a discussion and ends with takeaways. The five-person usability test and the hypothetical two-week comparison answer different questions. All nine PDFs match their sources. Markdown format check and lint passed, both fixture suites passed (68 tests), and the link check passed on retry.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Revised Lecture 9 and rebuilt its 32-slide PDF. Verified the section structure, pitch rehearsal checklist, booking demo and pilot data examples.
<!-- SECTION:FINAL_SUMMARY:END -->
