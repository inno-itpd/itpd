---
id: TASK-179
title: Convert the Week 9 Presenting Project lecture from the 2025 slides
status: Done
assignee: []
created_date: '2026-11-20 11:11'
updated_date: '2026-11-20 11:18'
labels: []
dependencies: []
references:
  - lectures/AGENTS.md
  - tmp/itpd-2025/lectures/lecture-8.pdf
modified_files:
  - README.md
  - lectures/lecture-9.typ
  - lectures/lecture-9.pdf
  - lectures/images/lecture-9/airbnb-business-model.jpg
  - lectures/images/lecture-9/investor-report-evidence.jpg
  - lectures/images/lecture-9/investor-report-pitfalls.jpg
  - lectures/images/lecture-9/investor-review.jpg
  - lectures/images/lecture-9/john-adams.jpg
  - lectures/images/lecture-9/scrum-diagram.jpg
  - lectures/images/lecture-9/simple-mobile-tools.jpg
  - lectures/images/lecture-9/skyfall.jpg
  - lectures/images/lecture-9/three-act-structure.jpg
type: docs
ordinal: 164000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
The source is the 37-slide export at tmp/itpd-2025/lectures/lecture-8.pdf. The 2026 course needs an editable Typst version for Week 9.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 The Week 9 Typst source preserves all 37 slides in order and documents the conversion changes.
- [x] #2 Original raster illustrations accompany the deck and the two quarterly charts are editable Typst content.
- [x] #3 The generated PDF matches the source and the README Lectures table links it.
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
Transcribe the PDF into the current lecture layout, preserve the illustrations, and rebuild the quarterly charts. Label the 2025 course logistics, then build and visually verify the deck and check the README link.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
All 37 rendered slides were reviewed and checked against the source order. Nine distinct JPEGs match the exported image bytes. The two charts use values approximated from the original bar heights. The deck labels the 2025 logistics, awards, and investor report, and omits the 2025 grade-report link. The Markdown format and lint gates, both Markdown test suites (34 each), and the lecture gate (nine matching PDFs) pass. The link gate finished with 4155 OK and zero errors.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Converted Presenting Project into an editable Week 9 Typst deck and generated its 37-page PDF. The README Lecture table links the PDF. Verified the slide order, chart labels, image placement and credits, and repository gates.
<!-- SECTION:FINAL_SUMMARY:END -->
