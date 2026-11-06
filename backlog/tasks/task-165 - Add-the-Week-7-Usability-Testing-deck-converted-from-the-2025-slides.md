---
id: TASK-165
title: Add the Week 7 Usability Testing deck converted from the 2025 slides
status: Done
assignee: []
created_date: '2026-11-06 09:18'
updated_date: '2026-11-06 09:21'
labels: []
dependencies: []
references:
  - lectures/AGENTS.md
  - lectures/lecture-3.typ
  - lectures/lecture-4.typ
  - tmp/itpd-2025/lectures/lecture-7.pdf
modified_files:
  - README.md
  - lectures/lecture-7.typ
  - lectures/lecture-7.pdf
  - lectures/images/lecture-7/product-development-cycle.jpg
  - lectures/images/lecture-7/seq-scale.jpg
  - lectures/images/lecture-7/asq-scale.jpg
  - lectures/images/lecture-7/sus-response-format.jpg
  - lectures/images/lecture-7/sus-percentile.jpg
type: docs
ordinal: 151000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Week 7 needs its deck. The 2025 export `tmp/itpd-2025/lectures/lecture-7.pdf` (21 slides, Usability Testing) is the source, as `lecture-2.1.pdf` and `lecture-2.2.pdf` were for the Week 3 and Week 4 decks. The conversion follows `lectures/AGENTS.md` and the lecture-3/lecture-4 precedent: the export's slides are converted by hand, every deviation is recorded in the header, the images are extracted with `pdfimages -j`, the build output is committed beside the source, and the README Lectures table links the deck.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 `lectures/lecture-7.typ` converts `tmp/itpd-2025/lectures/lecture-7.pdf` slide for slide, all 21 slides, with every deviation from the export recorded in its header.
- [x] #2 The five source images the deck shows are the JPEGs from the export, extracted with `pdfimages -j` and committed under `lectures/images/lecture-7/`.
- [x] #3 `lectures/lecture-7.pdf` is the build output of `pnpm run build:lectures` and has 26 pages: the 21 source slides, an Agenda, and four section dividers.
- [x] #4 `README.md` links the deck from its Lectures table as Week 7, under the title from the deck's title slide.
- [x] #5 `pnpm run check:lectures` passes with the new deck included.
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
1. Read `tmp/itpd-2025/lectures/lecture-7.pdf` with `pdftotext -layout`, render its 21 pages, and list its images with `pdfimages -list`.
2. Write `lectures/lecture-7.typ` in the repo deck style, mapping every source slide in order; add an Agenda and four section dividers; record every deviation in the header.
3. Extract the five JPEGs with `pdfimages -j` into `lectures/images/lecture-7/` with descriptive names.
4. Build `lectures/lecture-7.pdf` with `pnpm run build:lectures`, compare the 26-page count with the slides written, and render the dense pages to PNG for review.
5. Add the Week 7 row to the README Lectures table and stage the new deck so `check:lectures` sees it.
6. Run the Markdown gates, both plugin test suites, `pnpm run check:lectures`, `pnpm run check:links`, and `backlog doctor`; record the validation in the task.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Source map: 21 pages; images on pages 4, 10, 11, 12, and 18; the page 14 observation table is vector and is redrawn in Typst.

Deck shape: 21 source slides plus an Agenda and four section dividers (Usability testing, Running the test, Post-test surveys, Analyzing the results) = 26 pages.

Title slide follows the other decks: source subtitle "Product Development" becomes "Lecture 7, IT Product Development", with Innopolis University, 2026.

Validation: `pnpm run build:lectures` built all 7 decks; `lectures/lecture-7.pdf` is 26 pages at 720 x 405 pt and embeds the five source JPEGs on pages 6, 14, 15, 16, and 23 (source slides 4, 10, 11, 12, and 18).

Content check: a word-level comparison of the built deck's `pdftotext -layout` output against the export found only the documented `background` -> `backgrounds` change; the added words are the Agenda and section titles, the title line, `each`, and page numbers above 21.

Render review: pages 1, 2, 5, 6, 9, 10, 13-17, 19-23, and 26 were rendered to PNG and read; no page overflow, merged paragraph, swallowed marker, or clipped image.

Gates: `pnpm run format:markdown:check`, `pnpm run lint:markdown`, `pnpm run test:markdown-format` (34 passed), `pnpm run test:markdown-rules` (34 passed), `pnpm run check:lectures` (7 decks match, Typst 0.15.1), `pnpm run check:links` (3083 OK, 0 errors, 2 excluded, 1 redirect), and `backlog doctor` all pass.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Added `lectures/lecture-7.typ`, converting `tmp/itpd-2025/lectures/lecture-7.pdf` slide for slide (21 slides, Usability testing) with every deviation recorded in the header; added an Agenda and four section dividers for 26 pages; extracted the five source JPEGs with `pdfimages -j` into `lectures/images/lecture-7/`; built `lectures/lecture-7.pdf`; and added the Week 7 row to the README Lectures table. Verified with `pnpm run build:lectures`, `pnpm run check:lectures` (7 decks match, Typst 0.15.1), the Markdown format, lint, and plugin test gates (34 and 34), `pnpm run check:links` (3083 OK, 0 errors), `backlog doctor`, a word-level comparison against the export, and a render review of the dense pages.
<!-- SECTION:FINAL_SUMMARY:END -->
