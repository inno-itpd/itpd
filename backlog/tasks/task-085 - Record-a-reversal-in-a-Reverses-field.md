---
id: TASK-085
title: Record a reversal in a Reverses field
status: To Do
assignee: []
created_date: '2026-10-06 12:26'
labels: []
dependencies: []
ordinal: 81000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Decided on 2026-10-06.
Problem: a reversing entry named the DEC it reverses only inside its free-text `Why`, while the reversed entry got a structured `Status: Reversed by`.
Decisions:
- A reversing entry carries `**Reverses:**` right after `Status`, linking the DEC-nnn it reverses.
- `Why` still says why.
- An entry that reverses nothing has no Reverses field.
- Since W2.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [ ] #1 decisions-requirements.md field table has **Reverses:** after Status, only on a reversing entry
- [ ] #2 Reversing A Decision rule 1 moves the link from Why to Reverses
- [ ] #3 The DEC-011 example carries Reverses
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
