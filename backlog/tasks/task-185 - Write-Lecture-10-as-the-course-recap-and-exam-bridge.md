---
id: TASK-185
title: Write Lecture 10 as the course recap and exam bridge
status: Done
assignee:
  - '@codex'
created_date: '2026-11-27 09:51'
updated_date: '2026-11-27 09:54'
labels: []
dependencies: []
documentation:
  - lectures/AGENTS.md
  - exam/README.md
  - course/syllabus.md
modified_files:
  - lectures/lecture-10.typ
  - lectures/lecture-10.pdf
  - README.md
type: docs
ordinal: 174000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Class 10 closes the course by showing why each week came in its order and how the work supports the final exam. Carry the fictional online consultation booking app forward from Lectures 2 and 9.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 The recap covers Weeks 1–10 and explains what each week enabled.
- [x] #2 The consultation booking example connects customer feedback, the first release, quality and architecture, usability evidence, and a realistic pilot request.
- [x] #3 The exam briefing and exercise map course artifacts to the current exam rubric and deadlines.
- [x] #4 The lecture PDF matches its Typst source and is linked from the README lecture table.
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
1. Reuse the consultation booking story and its illustrative findings from Lectures 2 and 9.
2. Write the chronological recap and exam bridge in the existing lecture layout, then link the PDF from the README.
3. Build through the pinned lecture tooling, inspect the rendered slides, and run the repository checks.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
The deck carries the fictional online consultation booking app from Lectures 2 and 9 through all ten weeks. The pilot targets are labeled illustrative. The exam links and dates match the course materials.
Rendered all 16 slides and inspected the layout and PDF link annotations. The pinned Typst check reproduced all ten PDFs. Markdown formatting and lint, both Markdown test suites, and the repository link check passed.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Added the 16-slide Lecture 10 recap and exam briefing, its reproducible PDF, and the lecture index link. The booking example and team exercise show how to use project evidence to make a specific pilot request. Verified the rendered slides, deck reproducibility, Markdown checks, and links.
<!-- SECTION:FINAL_SUMMARY:END -->
