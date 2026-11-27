---
id: TASK-185.01
title: Add discussions and quizzes to Lecture 10
status: Done
assignee:
  - '@codex'
created_date: '2026-11-27 10:11'
updated_date: '2026-11-27 10:15'
labels: []
dependencies: []
documentation:
  - lectures/AGENTS.md
modified_files:
  - lectures/lecture-10.typ
  - lectures/lecture-10.pdf
parent_task_id: TASK-185
type: docs
ordinal: 175000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
The final lecture should invite students to recall and apply what they learned throughout the course, using the section pattern from earlier lectures.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 An agenda immediately follows the title slide and lists every section in order.
- [x] #2 Every section opens with a discussion and closes with a short quiz followed by key takeaways.
- [x] #3 The original title-slide question introduces the first discussion, and the recap and exam guidance remain available.
- [x] #4 The rebuilt PDF matches the Typst source, with one slide per page.
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
1. Group the recap into Weeks 1–3, 4–6, and 7–10, followed by the pilot pitch and exam.
2. Add section dividers, opening discussions, short scenario quizzes, and takeaways. Use the original title question to open the recap.
3. Rebuild the PDF, inspect the rendered pages, and run the repository checks.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Grouped the recap into Weeks 1–3, 4–6, and 7–10 and ended with the pilot pitch and final exam. The agenda previews those four sections. The original title question opens the first discussion and asks students to connect an observation to a project decision. Each quiz asks two short questions and leads into the section takeaways.

Rendered and inspected all 33 slides. Checked slide order, previous content, and resolution of the four PDF link annotations to the same targets. The pinned Typst check reproduced all ten PDFs. Markdown formatting and lint passed, both fixture suites passed (34 tests each), and the repository link check completed with zero errors.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Restructured Lecture 10 with an agenda, four opening discussions, and quizzes before the takeaways. Rebuilt the PDF and verified the rendered slide order and all repository checks.
<!-- SECTION:FINAL_SUMMARY:END -->
