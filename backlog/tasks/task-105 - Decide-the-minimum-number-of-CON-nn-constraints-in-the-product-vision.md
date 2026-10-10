---
id: TASK-105
title: Decide the minimum number of CON-nn constraints in the product vision
status: To Do
assignee: []
created_date: '2026-10-07 20:43'
labels: []
dependencies: []
ordinal: 101000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Assignment 2 Part 5 and the checklist ask for docs/product-vision.md with its constraints as CON-nn sections, but neither the assignment nor product-vision-requirements.md sets a minimum count, while BND-nn has at least 3. The autochecker A2 rubric (frozen at a949e8d) requires at least one CON-nn. Decide whether a minimum applies, and whether zero constraints is acceptable when the team declares none exist.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [ ] #1 product-vision-requirements.md states the minimum number of CON-nn sections, or states that none is required
- [ ] #2 The assignment checklist matches the requirement
<!-- AC:END -->

## Definition of Done
<!-- DOD:BEGIN -->
- [ ] #1 All acceptance criteria are satisfied
- [ ] #2 Changed Markdown files are formatted: `pnpm run format:markdown`
- [ ] #3 `pnpm run lint:markdown` passes
- [ ] #4 `pnpm run test:markdown-format` and `pnpm run test:markdown-rules` pass
- [ ] #5 `pnpm run check:lectures` passes
- [ ] #6 `pnpm run check:links` passes
- [ ] #7 Implementation notes record the decisions made and the validation results
<!-- DOD:END -->
