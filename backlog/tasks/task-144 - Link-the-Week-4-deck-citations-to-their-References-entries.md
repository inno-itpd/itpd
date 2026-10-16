---
id: TASK-144
title: Link the Week 4 deck citations to their References entries
status: Done
assignee:
  - '@Danila-Danko'
created_date: '2026-10-16 07:00'
updated_date: '2026-10-16 07:05'
labels: []
dependencies: []
references:
  - lectures/lecture-4.typ
  - lectures/AGENTS.md
type: docs
ordinal: 115000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
lecture-4.typ is the first deck with citations, and the export writes them as bracketed keys such as `[Iso25010]`, `[Bck]`, and `[ScrumGuide]`. In the built PDF they are dead text: a reader who wants the source has to hunt for the References slide by hand. Typst can link to a label, so each citation in the body should jump to its entry on the References slide, with the wording kept as the export has it.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 Every citation in the deck body is a Typst internal link to its label on the References slide, and the visible text is unchanged from the export.
- [x] #2 Every entry on the References slide carries a label, including Pmbok6, which no slide cites.
- [x] #3 lectures/lecture-4.pdf is rebuilt with pnpm run build:lectures, keeps its 34 pages, and pnpm run check:lectures passes.
- [x] #4 Each citation in the built PDF carries a link annotation that targets the References page, checked on the rendered PDF.
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
1. Add a cite(key, rest:) helper to lectures/lecture-4.typ that renders the bracketed key and links it to a label. 2. Label every entry on the References slide, including Pmbok6. 3. Replace each in-body citation with cite(), keeping the visible text identical to the export. 4. Rebuild lectures/lecture-4.pdf with pnpm run build:lectures and check the page count. 5. Verify the link annotations in the built PDF with pdftohtml, then run pnpm run check:lectures and the Markdown gates.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Decisions: citations are Typst links to labels, not refs, because @ref cannot target plain text (Typst errors with "cannot reference text") and the deck carries no bibliography file; a cite(key, rest:) helper keeps the bracketed key and the locator in one clickable link while printing exactly what the export prints; the labels sit immediately after the bracketed key on the References slide, written with no space before them ([Key]<Key>) because a space would render as a stray space before the colon. Validation so far: pnpm run build:lectures rebuilt all four decks and only lecture-4.pdf changed; 34 pages; pdftotext -layout of the built PDF is byte-identical to the previously committed one, so the visible text is unchanged; typst queries show all 11 labels, including Pmbok6, exist exactly once; pdftohtml -xml shows 21 internal link annotations, all targeting page 34; pnpm run check:lectures passes (4 decks, Typst 0.15.1); format:markdown:check, lint:markdown, test:markdown-format (34 passed) and test:markdown-rules (34 passed) pass.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Made every citation in lectures/lecture-4.typ link to its entry on the References slide: the cite(key, rest:) helper prints the bracketed key and links it to a label, all 11 reference entries carry their labels (including the uncited Pmbok6), and the 21 in-body citations now use the helper, with the printed text kept exactly as the export writes it. Rebuilt lectures/lecture-4.pdf through pnpm run build:lectures (34 pages). Verified: the text layer of the new PDF is byte-identical to the committed one, pdftohtml shows 21 internal link annotations all targeting page 34, typst queries find each label exactly once, and check:lectures, the Markdown gates, and check:links (1242 OK, 0 errors) pass.
<!-- SECTION:FINAL_SUMMARY:END -->
