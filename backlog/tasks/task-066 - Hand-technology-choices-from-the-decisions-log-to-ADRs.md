---
id: TASK-066
title: Hand technology choices from the decisions log to ADRs
status: To Do
assignee: []
created_date: '2026-10-05 16:47'
labels: []
dependencies: []
ordinal: 66000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Decided on 2026-10-05: a DEC-nn entry does not record the options it turned down. Technology choices will move to ADRs, introduced together with the functional and quality requirements, and the ADR owns the considered options. A field in docs/decisions.md now would give that rule two owners or be withdrawn mid-term, and "alternative" is already the course term for a competing product (ALT-nn).
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [ ] #1 The ADR requirements own the considered options: each option turned down and why it lost, and the word "alternative" stays reserved for ALT-nn
- [ ] #2 In requirements/decisions-requirements.md, The Decision's "it is a technology choice" trigger links to the ADR rule instead of requiring a DEC-nn entry, or states how a DEC-nn and an ADR relate
- [ ] #3 The Full Example's technology choices (DEC-04 VPS, DEC-05 hosted checkout) move to or link to the ADR example, and the product-vision constraint and customer-meetings example that cite DEC-04 match
- [ ] #4 The four Markdown gates pass
<!-- AC:END -->

## Definition of Done
<!-- DOD:BEGIN -->
- [ ] #1 All acceptance criteria are satisfied
- [ ] #2 Changed Markdown files are formatted: `pnpm run format:markdown`
- [ ] #3 `pnpm run lint:markdown` passes
- [ ] #4 `pnpm run test:markdown-format` and `pnpm run test:markdown-rules` pass
- [ ] #5 `pnpm run check:lectures` passes
<!-- DOD:END -->
