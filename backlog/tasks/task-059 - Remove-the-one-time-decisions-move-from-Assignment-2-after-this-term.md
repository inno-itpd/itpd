---
id: TASK-059
title: Remove the one-time decisions move from Assignment 2 after this term
status: To Do
assignee: []
created_date: '2026-10-05 12:11'
updated_date: '2026-10-05 15:19'
labels:
  - docs
dependencies:
  - TASK-058
priority: low
ordinal: 59000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
TASK-058 made docs/decisions.md a Week 1 artifact, but this term had already submitted Week 1 with the decisions in the kickoff report table, so Assignment 2 Part 2 tells teams to move them. From next term Week 1 writes DEC-nn entries directly, and the move step is a migration step that AGENTS.md says the course must not have.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [ ] #1 assignment-2.md has no step or checklist item that moves decisions out of the Week 1 reports
- [ ] #2 No file under requirements/, guides/, or assignments/ maps the rows of a Week 1 `## Decisions` table to `DEC-nn` sections, as the Part 2 catch-up in assignment-2.md does
<!-- AC:END -->

## Definition of Done
<!-- DOD:BEGIN -->
- [ ] #1 All acceptance criteria are satisfied
- [ ] #2 Changed Markdown files are formatted: `pnpm run format:markdown`
- [ ] #3 `pnpm run lint:markdown` passes
- [ ] #4 `pnpm run test:markdown-format` and `pnpm run test:markdown-rules` pass
- [ ] #5 `pnpm run check:lectures` passes
<!-- DOD:END -->
