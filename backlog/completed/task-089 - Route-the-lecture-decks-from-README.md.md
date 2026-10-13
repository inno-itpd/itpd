---
id: TASK-089
title: Route the lecture decks from README.md
status: Done
assignee: []
created_date: '2026-10-06 13:35'
updated_date: '2026-10-06 13:36'
labels: []
dependencies: []
ordinal: 85000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
README.md routes students to assignments, rules, guides, and course documents, but not to the lecture decks. Add a Lectures section below Assignments, and reverse the lectures/AGENTS.md rule that kept deck links out of README.md.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 README.md has a Lectures section directly below Assignments, with one row per deck linking its committed PDF
- [x] #2 lectures/AGENTS.md no longer says nothing in lectures/ is routed from README.md
- [x] #3 The lectures/AGENTS.md Do Not item against deck links is replaced by a rule that a new deck adds its row to the README.md Lectures table
<!-- AC:END -->

## Definition of Done
<!-- DOD:BEGIN -->
- [x] #1 All acceptance criteria are satisfied
- [x] #2 Changed Markdown files are formatted: `pnpm run format:markdown`
- [x] #3 `pnpm run lint:markdown` passes
- [x] #4 `pnpm run test:markdown-format` and `pnpm run test:markdown-rules` pass
- [x] #5 `pnpm run check:lectures` passes
- [x] #6 Implementation notes record the decisions made and the validation results
<!-- DOD:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Added a Lectures section to README.md between Assignments and The Rules: a Week/Lecture table linking lectures/lecture-1.pdf and lecture-2.pdf, with titles from each deck's title slide, and one line saying the slides explain the week while the rules are what work is checked against. Linked the committed PDFs rather than the .typ sources, because students read the PDF. lectures/AGENTS.md: replaced the 'nothing here is routed from README.md' sentence, and turned the Do Not item against deck links into a rule that a new deck adds its row to the README.md Lectures table. Root AGENTS.md left unchanged: its 'Not student-facing' describes lectures/AGENTS.md itself, which is still true. Validation: format:markdown, format:markdown:check, lint:markdown, test:markdown-format, test:markdown-rules, and check:lectures (2 decks, Typst 0.15.1) all pass.
<!-- SECTION:NOTES:END -->
