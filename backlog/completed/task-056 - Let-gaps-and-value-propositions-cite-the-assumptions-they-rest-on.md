---
id: TASK-056
title: Let gaps and value propositions cite the assumptions they rest on
status: Done
assignee: []
created_date: '2026-10-05 10:29'
updated_date: '2026-10-05 10:31'
labels:
  - docs
dependencies: []
ordinal: 56000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
An ASM-nn entry names the GAP-nn or VP-nn it supports, which points the link the wrong way: a story already cites the ASM-nn it rests on, and the story-only case needed a filler rule naming the story's VP-nn. The artifact that rests on an assumption cites it instead, so the entry carries no back-links.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 No assumption entry in requirements/ or guides/ has a Supports line
- [x] #2 research-requirements.md requires a gap and a value proposition to cite each ASM-nn it rests on under Rests on, and the VP-01 example does
- [x] #3 assumptions-requirements.md has a What Rests On It section with no rule naming a story's VP-nn
- [x] #4 The comparison guide, both assignments, the user-stories anchor, README.md, course/rules.md, and AGENTS.md follow
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
Assumption entries no longer carry Supports. Gaps and value propositions cite each ASM-nn they rest on under Rests on (research-requirements rule 7 in both sections, and the VP-01 example), so every dependent cites what it rests on, as stories already did. The Supports section is now What Rests On It, the story-only VP-nn rule is gone, and Dropped says how to find what still rests on an assumption.
<!-- SECTION:FINAL_SUMMARY:END -->
