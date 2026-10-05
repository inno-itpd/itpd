---
id: TASK-073
title: State how a new story takes its US-nn
status: Done
assignee: []
created_date: '2026-10-05 20:03'
updated_date: '2026-10-05 20:04'
labels:
  - docs
dependencies: []
ordinal: 69000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
No rule said how a new story picks its US-nn, or whether it is the issue number. Keep US-nn independent of issue numbers, because issues and pull requests share one sequence, and state the allocation rule.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 user-stories-requirements.md Where Stories Live rule 4 states that a new story takes one above the highest US-nn in the registry, open and closed
- [x] #2 The same rule states that the US-nn is not the issue number, and how a duplicate US-nn is resolved without contradicting the Identifier Rules
- [x] #3 guides/user-stories-and-prototyping.md Step 2 links the rule and gives a gh command that prints the highest issued US-nn
- [x] #4 The Markdown format check and lint pass
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
Rule 4 of Where Stories Live now allocates the next free US-nn from the registry, says it is not the issue number, and resolves a duplicate as never issued. The guide's Step 2 links it and gives the gh lookup command.
<!-- SECTION:FINAL_SUMMARY:END -->
