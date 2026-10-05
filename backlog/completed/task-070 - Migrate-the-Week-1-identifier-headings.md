---
id: TASK-070
title: Migrate the Week 1 identifier headings
status: Done
assignee: []
created_date: '2026-10-05 18:35'
updated_date: '2026-10-05 18:41'
labels: []
dependencies: []
priority: medium
ordinal: 70000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Commit 3f53f01 heads each identifier section with the identifier alone and a title on the line under it. Teams' Week 1 research still uses titled headings and title-slug anchors, including links from reports/week-01/, which only a formatting-only change may touch. Count a repointed link as formatting-only, and give Assignment 2 a one-time step to migrate the headings.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 A repointed link counts as a formatting-only change
- [x] #2 Assignment 2 Part 4 and its checklist ask teams to cut their Week 1 headings to the identifier and repoint the links, including in reports/week-01/
- [x] #3 All four Markdown gates and the deck check pass
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
A link repointed at the same section after its anchor changed now counts as formatting-only, and Assignment 2 Part 4 and its checklist ask teams, once, to cut their Week 1 ALT, GAP, and VP headings to the identifier with the title on the line under it, and to repoint the links, including in reports/week-01/.
<!-- SECTION:FINAL_SUMMARY:END -->
