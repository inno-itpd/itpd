---
id: TASK-051
title: Remove the one-time assumptions move from Assignment 2 after this term
status: To Do
assignee: []
created_date: '2026-10-05 09:14'
labels:
  - docs
dependencies:
  - TASK-050
priority: low
ordinal: 51000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
TASK-050 moved assumptions to docs/assumptions.md as a Week 1 artifact, but this term had already submitted Week 1 with the table in docs/research/value-proposition.md, so Assignment 2 tells teams to move it. From next term Week 1 creates docs/assumptions.md directly, and the move step is a migration step that AGENTS.md says the course must not have.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [ ] #1 assignment-2.md has no step that moves assumptions out of docs/research/value-proposition.md
- [ ] #2 No file under requirements/, guides/, or assignments/ mentions an assumptions table in value-proposition.md
<!-- AC:END -->

## Definition of Done
<!-- DOD:BEGIN -->
- [ ] #1 All acceptance criteria are satisfied
- [ ] #2 Changed Markdown files are formatted: `pnpm run format:markdown`
- [ ] #3 `pnpm run lint:markdown` passes
- [ ] #4 `pnpm run test:markdown-format` and `pnpm run test:markdown-rules` pass
- [ ] #5 `pnpm run check:lectures` passes
<!-- DOD:END -->
