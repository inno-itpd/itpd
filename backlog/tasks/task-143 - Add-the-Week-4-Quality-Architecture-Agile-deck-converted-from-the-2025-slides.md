---
id: TASK-143
title: >-
  Add the Week 4 Quality, Architecture & Agile deck, converted from the 2025
  slides
status: Done
assignee: []
created_date: '2026-10-16 06:52'
updated_date: '2026-10-16 06:52'
labels: []
dependencies: []
references:
  - lectures/AGENTS.md
  - lectures/lecture-3.typ
  - tmp/itpd-2025/lectures/lecture-2.2.pdf
modified_files:
  - README.md
  - lectures/lecture-4.typ
  - lectures/lecture-4.pdf
  - lectures/images/lecture-4/iso-25010-model.jpg
  - lectures/images/lecture-4/q42-model.jpg
  - lectures/images/lecture-4/availability-scenario.jpg
  - lectures/images/lecture-4/design-effort.jpg
type: docs
ordinal: 114000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
The Week 4 lecture needs its deck, and the 2025 export `tmp/itpd-2025/lectures/lecture-2.2.pdf` (34 slides, Quality, Architecture & Agile) is the source, as `tmp/itpd-2025/lectures/lecture-2.1.pdf` was for the Week 3 deck. `lecture-3.typ` set the conversion shape: slide for slide, every deviation from the export recorded in the header, the images taken from the export rather than redrawn, and the build output committed beside the source. The deck explains the week and links the 2025 course guide for further reading; the rules it touches stay in `requirements/`.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 `lectures/lecture-4.typ` converts `tmp/itpd-2025/lectures/lecture-2.2.pdf` slide for slide, all 34 slides, with every deviation from the export recorded in its header.
- [x] #2 The four images the deck shows are the JPEGs from the export, extracted with `pdfimages -j` and committed under `lectures/images/lecture-4/`.
- [x] #3 `lectures/lecture-4.pdf` is the build output of `pnpm run build:lectures`, and it has 34 pages, one per slide.
- [x] #4 `README.md` links the deck from its Lectures table as Week 4, under the title from the deck title slide.
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
1. Run pdftotext -layout and pdfimages -list over the export, and read the rendered pages of the source. 2. Write lectures/lecture-4.typ against the layout contract, recording every deviation from the export in the header. 3. Extract the four images with pdfimages -j into lectures/images/lecture-4/. 4. Build with pnpm run build:lectures, compare the page count with the slides written, and read the rendered dense slides. 5. Link the deck from the README Lectures table and run the gates.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Decisions: the deck follows the lecture-3 conversion precedent, slide for slide, with the deviations recorded in the header; the title slide drops the author line and adds Innopolis University, 2026, as lecture-1.typ does; the quizzes use the quiz() shape; the curly brace on source slide 6 becomes a centered note; the tables on source slides 12 and 14 are Typst tables at 12pt, and the references list is at 12.5pt; the Scrum Guide quotation uses the quoted() callout; the references keep all 11 entries, including Pmbok6, which no slide cites; the links to the 2025 course guide and to the two example architecture documents are kept as the export has them, and every URL and anchor was checked to be reachable; the 2025 in-class references, including NavProject, stay verbatim. Validation: pnpm run build:lectures built 4 decks; a word-level diff of the built PDF against the pdftotext export found only the intended deviations (the dropped author line, the added university line, and the unnumbered quiz questions); pnpm run check:lectures (4 decks match, Typst 0.15.1) passes; pnpm run format:markdown:check and pnpm run lint:markdown pass; pnpm run test:markdown-format and pnpm run test:markdown-rules pass (34 and 34); pnpm run check:links reports 1242 OK, 0 errors, 1 redirect, 2 excluded, fragments included; the dense slides were rendered to PNG and read; backlog doctor reports no duplicates, self-references, or cycles.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Added `lectures/lecture-4.typ`, converting `tmp/itpd-2025/lectures/lecture-2.2.pdf` slide for slide (34 slides, Quality, Architecture & Agile) with the deviations recorded in the header; extracted the four source JPEGs with `pdfimages -j` into `lectures/images/lecture-4/`; built `lectures/lecture-4.pdf`; and added the Week 4 row to the README Lectures table. Verified with `pnpm run check:lectures`, the Markdown format, lint, and test gates, `pnpm run check:links`, a word-level diff of the built deck against the export, and a render review of the dense slides.
<!-- SECTION:FINAL_SUMMARY:END -->
