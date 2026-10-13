---
id: TASK-085
title: Record a reversal in a Reverses field
status: Done
assignee: []
created_date: '2026-10-06 12:26'
updated_date: '2026-10-06 12:45'
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
- [x] #1 decisions-requirements.md field table has **Reverses:** after Status, only on a reversing entry
- [x] #2 Reversing A Decision rule 1 moves the link from Why to Reverses
- [x] #3 The DEC-011 example carries Reverses
- [x] #4 The four Markdown gates pass
<!-- AC:END -->

## Definition of Done
<!-- DOD:BEGIN -->
- [x] #1 All acceptance criteria are satisfied
- [x] #2 Changed Markdown files are formatted: `pnpm run format:markdown`
- [x] #3 `pnpm run lint:markdown` passes
- [x] #4 `pnpm run test:markdown-format` and `pnpm run test:markdown-rules` pass
- [x] #5 `pnpm run check:lectures` passes
<!-- DOD:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
The Decision rule 5 adds **Reverses:** after Status, only on an entry that reverses a decision, linking the DEC-nnn it reverses. Reversing A Decision rule 1 moves that link from Why to Reverses, so Why only says why. The DEC-011 example carries Reverses: DEC-002.
<!-- SECTION:FINAL_SUMMARY:END -->
