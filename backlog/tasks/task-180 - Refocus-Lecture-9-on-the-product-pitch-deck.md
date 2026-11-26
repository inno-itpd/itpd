---
id: TASK-180
title: Refocus Lecture 9 on the product pitch deck
status: Done
assignee: []
created_date: '2026-11-20 12:19'
updated_date: '2026-11-20 12:23'
labels: []
dependencies: []
references:
  - lectures/AGENTS.md
  - course/syllabus.md
modified_files:
  - README.md
  - lectures/lecture-9.typ
  - lectures/lecture-9.pdf
type: docs
ordinal: 165000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Week 9 prepares teams with a working product and usability test results to pitch to their final-exam panel using an investor lens.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 The lecture opens with an agenda and five sections on audience, opportunity, demo, evidence, and continuation.
- [x] #2 The booking example illustrates an initial audience estimate, a live demonstration of a product quality and tradeoff, interpretation of usability results, and a pilot ask.
- [x] #3 The lecture covers funding asks and credible ways to sustain internal, open-source, open-core, and proprietary products.
- [x] #4 The rebuilt PDF and lecture listing match the new deck title.
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
Restructure the Typst deck around the five agreed sections, use a fictional consultation-booking product throughout, update the lecture listing, and verify the rebuilt slides.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
The fictional booking app links the audience estimate, live demo, tradeoff, staged usability result, and pilot ask. The deck covers internal sponsorship, open source, open core, and proprietary distribution. Reviewed all 23 rendered pages and confirmed one 720 × 405 pt page per slide. Markdown formatting and lint pass, both Markdown suites pass 34 tests each, all nine lecture PDFs match their sources, and the repository link check reports zero errors.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Restructured Lecture 9 as The Product Pitch Deck, rebuilt the PDF, and updated its README listing. Verified the rendered slides and passed the repository gates.
<!-- SECTION:FINAL_SUMMARY:END -->
