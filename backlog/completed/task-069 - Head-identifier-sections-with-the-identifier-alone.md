---
id: TASK-069
title: Head identifier sections with the identifier alone
status: Done
assignee: []
created_date: '2026-10-05 18:22'
updated_date: '2026-10-05 18:23'
labels: []
dependencies: []
priority: medium
ordinal: 69000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Identifier sections are headed with the identifier and a title, so their GitHub anchors repeat the whole title: typo-prone, and broken whenever an assumption, gap, or value proposition is reworded. Head each section with the identifier alone, so the anchor is #dec-01, and put the statement on the first line under it.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 Identifier Rules in general-requirements.md state that a section's heading is its identifier alone and its statement is the first line under it
- [x] #2 The decisions, assumptions, and meeting report rules use the bare heading and no longer forbid rewording a heading
- [x] #3 Every example heading and link in requirements/ and guides/ uses the bare identifier and its #id anchor
- [x] #4 All four Markdown gates and the deck check pass
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
Identifier Rules now head a section with the identifier alone and put its statement on the first line under it, so links use #dec-06 rather than a title slug. The decisions, assumptions, and meeting report rules follow it, the decisions file keeps its ban on rewording through reversal rather than through the heading, and every example heading and link in requirements/ and guides/ uses the bare form.
<!-- SECTION:FINAL_SUMMARY:END -->
