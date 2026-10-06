---
id: TASK-077
title: >-
  Put Status first in decision and assumption entries, add an inline decision
  example, and drop the Why sentence cap
status: Done
assignee: []
created_date: '2026-10-06 11:26'
updated_date: '2026-10-06 11:27'
labels: []
dependencies: []
ordinal: 73000
---

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 decisions-requirements.md lists the fields in the order Status, Date, Made by, Source, Why, and every example follows it
- [x] #2 The Decision section has an example entry and links the Full Example
- [x] #3 The Why field has no sentence limit, and Recommended says to keep the discussion in the meeting report
- [x] #4 assumptions-requirements.md puts Status first, before How to check and Outcome, in the rule and the example
- [x] #5 The assumption example in guides/comparison-and-synthesis.md follows the new order
<!-- AC:END -->

## Definition of Done
<!-- DOD:BEGIN -->
- [ ] #1 All acceptance criteria are satisfied
- [ ] #2 Changed Markdown files are formatted: `pnpm run format:markdown`
- [ ] #3 `pnpm run lint:markdown` passes
- [ ] #4 `pnpm run test:markdown-format` and `pnpm run test:markdown-rules` pass
- [ ] #5 `pnpm run check:lectures` passes
<!-- DOD:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Decision entries list Status first, then Date, Made by, Source, and Why, and every example follows that order. The Decision section has a DEC-001 example and links the Full Example. Why has no sentence limit, and a Recommended line keeps the discussion in the meeting report. Assumption entries put Status first in the rule, the Full Example, and the guide's example.
<!-- SECTION:FINAL_SUMMARY:END -->
