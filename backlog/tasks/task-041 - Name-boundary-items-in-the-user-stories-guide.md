---
id: TASK-041
title: Name boundary items in the user stories guide
status: Done
assignee: []
created_date: '2026-10-05 02:44'
updated_date: '2026-10-05 02:45'
labels:
  - docs
dependencies: []
references:
  - guides/user-stories-and-prototyping.md
  - requirements/product-vision-requirements.md
priority: medium
ordinal: 41000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Step 1 of guides/user-stories-and-prototyping.md says "the items" without saying what an item is, and restates the Boundary and System Context rules that requirements/product-vision-requirements.md owns.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 The guide defines "boundary item" before it first uses "item"
- [x] #2 Step 1 links Boundary for what an item must record and no longer restates who handles the job or why it is outside
- [x] #3 Step 1 links System Context for what the diagram must show and keeps only the method of drawing the diagram from the list
- [x] #4 The TODO comment in Step 1 is removed
<!-- AC:END -->

## Definition of Done
<!-- DOD:BEGIN -->
- [x] #1 All acceptance criteria are satisfied
- [x] #2 Changed Markdown files are formatted: `pnpm run format:markdown`
- [x] #3 `pnpm run lint:markdown` passes
- [x] #4 `pnpm run test:markdown-format` and `pnpm run test:markdown-rules` pass
- [x] #5 `pnpm run check:lectures` passes
<!-- DOD:END -->

## Implementation Plan

<!-- SECTION:PLAN:BEGIN -->
Define boundary item in Step 1, link Boundary and System Context, drop the restated Required items, keep the method.
<!-- SECTION:PLAN:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Step 1 of guides/user-stories-and-prototyping.md now defines a boundary item as one job the product will not do, and links Boundary for what an item records. The restated rules on who handles the job, why it is outside, and what the diagram must show are replaced by links to Boundary and System Context. The guide keeps the method: where to look for items, why "nobody" deserves attention, and drawing the diagram from the list. The TODO is removed.
<!-- SECTION:FINAL_SUMMARY:END -->
