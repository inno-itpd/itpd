---
id: TASK-064
title: Remove restated rules from Assignment 2
status: Done
assignee: []
created_date: '2026-10-05 15:49'
updated_date: '2026-10-05 16:03'
labels: []
dependencies: []
ordinal: 64000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Assignment 2 restates rules owned by requirements/ and the guides. Trim the restatements, keep every rules list, add a rules bullet wherever a cut would leave a key rule unmentioned, and move three every-week rules into requirements.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 Assignment 2 cuts restated items and clauses, and every cut rule is still named by a rules bullet
- [x] #2 The Markdown check exclusion, the dropped-candidate priority, and the carried-out outcome rules live in requirements and are linked from Assignment 2
- [x] #3 Assignment 2 requires the change to come from the customer's reaction to the prototype, per Validation
- [x] #4 The two What Good Looks Like sentences copied from the user-stories guide are rephrased
- [x] #5 Markdown gates and the deck check pass
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
Trimmed restated items and clauses in Assignment 2, kept every rules list and added a bullet wherever a cut would leave a key rule unmentioned, moved three every-week rules into repository-, user-stories-, and customer-meetings-requirements, aligned the change rule with Validation, and rephrased two sentences copied from the user-stories guide.
<!-- SECTION:FINAL_SUMMARY:END -->
