---
id: TASK-072
title: Give decisions three-digit DEC-nnn identifiers
status: Done
assignee: []
created_date: '2026-10-05 19:57'
updated_date: '2026-10-05 19:58'
labels: []
dependencies: []
type: docs
ordinal: 68000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
A team meets the customer every week and every meeting settles at least one decision, so docs/decisions.md can pass 99 entries and DEC-nn caps it at DEC-99. Settled with the course owner on 2026-10-05: decisions take three digits, DEC-nnn, and every other family (ALT, GAP, VP, ASM, US, AC) keeps two, because none of them grows per meeting and a story already has its unbounded issue number.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 general-requirements.md#identifier-rules lists DEC-nnn, states that it has three digits and why, and its examples are DEC-001 and #dec-001
- [x] #2 No `DEC-nn` placeholder and no two-digit DEC- example or #dec- anchor remains outside backlog/
- [x] #3 Every #dec- link in decisions-requirements.md resolves to a heading in that file
- [x] #4 The open tasks that name the decision identifier use DEC-nnn
- [x] #5 AGENTS.md Conventions and Terminology use DEC-nnn
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
Decisions take three digits. general-requirements.md#identifier-rules owns the width and its reason, rule 5 and the traceability example use DEC-001/#dec-006, and AGENTS.md Conventions says decisions take three digits while every other family takes two. Every DEC-nn placeholder became DEC-nnn and every example DEC-0N/DEC-11 and #dec-0N anchor became DEC-00N/DEC-011 and #dec-00N across requirements/, guides/, assignments/, and AGENTS.md; the reversal example links #dec-002 and #dec-011 resolve. TASK-059 and TASK-066 name DEC-nnn, DEC-004, and DEC-005; completed tasks keep their history. No transition clause: this term writes docs/decisions.md for the first time in Assignment 2 Part 2. Gates and deck check pass.
<!-- SECTION:FINAL_SUMMARY:END -->
