---
id: TASK-060
title: Make Assignment 2 and its rules agree on the decisions log
status: Done
assignee: []
created_date: '2026-10-05 14:16'
updated_date: '2026-10-05 14:17'
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
- [x] #5 decisions-requirements.md calls a technology choice a team decision only when the team made it
- [x] #6 The validating guide's uncited-decisions mistake exempts confirmations, not accepted stories
- [x] #7 The Previous action points Decision column rule reads correctly
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
Assignment 2 and its rules now agree with decisions-requirements.md. A2 asks Week 1 decisions to be cited only when they changed something, maps None and TBD rows, writes the log from the Week 1 rows instead of moving them, and puts the MUP verdict's substance in its heading. A technology choice is a team decision only when the team made it, the validating guide exempts confirmations rather than accepted stories, and the Decision column rule reads correctly. The unlinked DEC-02 in the small boundary example was left as is: that table is live Markdown in requirements/, where a decisions.md link would not resolve.
<!-- SECTION:FINAL_SUMMARY:END -->
