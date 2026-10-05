---
id: TASK-047
title: Scope the LICENSE link to Week 1 and settle the coverage cell form
status: Done
assignee: []
created_date: '2026-10-05 07:44'
updated_date: '2026-10-05 07:46'
labels: []
dependencies: []
ordinal: 47000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Weekly-report rule 8 required linking the root LICENSE every week, though it is a Week 1 deliverable, and rule 7 did not say whether a coverage cell is a link or a path. Decision with the user: drop rule 8 and add a License row to the A1 table and the W1 example; every artifact cell is a link whose text is the repo-root path; assignment tables keep naming artifacts by path.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 weekly-report-requirements.md no longer has a rule requiring the LICENSE link every week, and rules 9-13 are renumbered 8-12
- [x] #2 Rule 7 states that each artifact cell is a link, repository files use the repo-root path as link text, other items use descriptive text, and a non-public artifact's row says so
- [x] #3 The W1 example coverage table has a License row and uses repo-root link text for every repository file
- [x] #4 assignment-1.md coverage table has a License row
- [x] #5 assignment-1.md and assignment-2.md coverage tables name every repository file by its repo-root path
<!-- AC:END -->

## Definition of Done
<!-- DOD:BEGIN -->
- [x] #1 All acceptance criteria are satisfied
- [x] #2 Changed Markdown files are formatted: `pnpm run format:markdown`
- [x] #3 `pnpm run lint:markdown` passes
- [x] #4 `pnpm run test:markdown-format` and `pnpm run test:markdown-rules` pass
- [x] #5 `pnpm run check:lectures` passes
<!-- DOD:END -->
