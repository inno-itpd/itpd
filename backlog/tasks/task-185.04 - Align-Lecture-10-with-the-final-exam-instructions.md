---
id: TASK-185.04
title: Align Lecture 10 with the final exam instructions
status: In Progress
assignee:
  - '@codex'
created_date: '2026-11-27 11:47'
updated_date: '2026-11-27 11:48'
labels: []
dependencies: []
documentation:
  - exam/README.md
  - lectures/AGENTS.md
modified_files:
  - lectures/lecture-10.typ
  - lectures/lecture-10.pdf
parent_task_id: TASK-185
type: docs
ordinal: 179000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Students should be able to use the Lecture 10 briefing to prepare their pilot pitch and find the official grading rubric on the exam page.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 The four-minute team exercise is absent from the deck.
- [x] #2 The pitch and Q&A guidance follows the final exam page and links to its grading rubric without displaying point values.
- [x] #3 The Lecture 10 PDF renders one slide per page and matches the Typst source.
<!-- AC:END -->

## Definition of Done
<!-- DOD:BEGIN -->
- [x] #1 All acceptance criteria are satisfied
- [x] #2 Changed Markdown files are formatted: `pnpm run format:markdown`
- [x] #3 `pnpm run lint:markdown` passes
- [x] #4 `pnpm run test:markdown-format` and `pnpm run test:markdown-rules` pass
- [x] #5 `pnpm run check:lectures` passes
- [ ] #6 `pnpm run check:links` passes
- [x] #7 Implementation notes record the decisions made and the validation results
<!-- DOD:END -->

## Implementation Plan

<!-- SECTION:PLAN:BEGIN -->
Update the exam slides against the exam page, remove the timed exercise and point values, and rebuild and verify the PDF.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Removed the timed exercise and point values, aligned the pitch and Q&A guidance with the exam page, and kept the rubric link. Reviewed the rendered exam slides and PDF links. The PDF has 36 pages after removal of one slide, and all ten decks passed the reproducibility check. Markdown formatting passed in a clean snapshot, lint passed, and both Markdown fixture suites passed. The focused offline fragment check passed. The full link check remains open because GitHub returned HTTP 503 for two pre-existing external URLs.
<!-- SECTION:NOTES:END -->
