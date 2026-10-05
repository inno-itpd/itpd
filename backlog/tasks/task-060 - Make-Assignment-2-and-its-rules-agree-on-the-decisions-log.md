---
id: TASK-060
title: Make Assignment 2 and its rules agree on the decisions log
status: In Progress
assignee: []
created_date: '2026-10-05 14:16'
updated_date: '2026-10-05 14:16'
labels:
  - docs
dependencies: []
priority: medium
ordinal: 60000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
After TASK-058 moved decisions to docs/decisions.md, Assignment 2 and several rules still disagreed with decisions-requirements.md: the Week 1 move over-required citations and had no mapping for TBD and None rows, the MUP verdict's Why listed what changed, a technology choice was always a team decision despite the customer-made DEC-04, the validating guide exempted accepted stories that are in fact cited, a boundary example left DEC-02 unlinked, and the Decision column rule was garbled.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 A2 checklist asks each Week 1 DEC-nn to be cited only when it changed something
- [x] #2 A2 Part 1 step 1 says how a None row and a TBD row become entries
- [x] #3 A2 Part 1 step 1 writes entries from the Week 1 rows rather than moving them
- [x] #4 A2 Part 4 puts what the customer decided about the candidate in the verdict's heading, and only the reason in its Why
- [ ] #5 decisions-requirements.md calls a technology choice a team decision only when the team made it
- [ ] #6 The validating guide's uncited-decisions mistake exempts confirmations, not accepted stories
- [ ] #7 The small boundary example links DEC-02
- [ ] #8 The Previous action points Decision column rule reads correctly
<!-- AC:END -->

## Definition of Done
<!-- DOD:BEGIN -->
- [ ] #1 All acceptance criteria are satisfied
- [ ] #2 Changed Markdown files are formatted: `pnpm run format:markdown`
- [ ] #3 `pnpm run lint:markdown` passes
- [ ] #4 `pnpm run test:markdown-format` and `pnpm run test:markdown-rules` pass
- [ ] #5 `pnpm run check:lectures` passes
<!-- DOD:END -->
