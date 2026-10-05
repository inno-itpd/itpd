---
id: TASK-046
title: Exempt in-report deliverables from the coverage table
status: Done
assignee: []
created_date: '2026-10-05 07:36'
updated_date: '2026-10-05 07:37'
labels: []
dependencies: []
ordinal: 46000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Weekly-report rule 7 maps each required deliverable to an artifact, and rule 13 (Since: W2) records the minimum usable product candidate in the report itself, so assignment-2's coverage table has a row pointing at a section of the same file. Decision with the user: keep the candidate in the README, exempt in-report deliverables in rule 7, and drop the row.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 weekly-report-requirements.md rule 7 states that a deliverable the report records in its own section has no coverage row
- [x] #2 assignment-2.md coverage table has no Minimum usable product candidate row; item 3, Part 4, and the checklist still name the section
- [x] #3 Markdown gates and deck check pass
<!-- AC:END -->

## Definition of Done
<!-- DOD:BEGIN -->
- [x] #1 All acceptance criteria are satisfied
- [x] #2 Changed Markdown files are formatted: `pnpm run format:markdown`
- [x] #3 `pnpm run lint:markdown` passes
- [x] #4 `pnpm run test:markdown-format` and `pnpm run test:markdown-rules` pass
- [x] #5 `pnpm run check:lectures` passes
<!-- DOD:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Rule 7 in weekly-report-requirements.md gains one sentence: a deliverable the report records in its own section has no row. The Minimum usable product candidate row is removed from assignment-2's coverage table, which the formatter realigned; item 3, Part 4 step 1, and the checklist still name ## Minimum Usable Product Candidate. assignment-1 is unchanged because Week 1 has no in-report deliverable. All four Markdown gates and the deck check pass.
<!-- SECTION:NOTES:END -->
