---
id: TASK-045
title: Drop Before You Start from assignment 2
status: Done
assignee: []
created_date: '2026-10-05 07:22'
updated_date: '2026-10-05 07:23'
labels: []
dependencies: []
references:
  - assignments/assignment-2.md
priority: medium
type: docs
ordinal: 45000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Every file the Before You Start table in assignments/assignment-2.md links is linked again, at its heading, from the Part that uses it, so the table duplicates the per-Part links and makes the assignment look longer than it is. Only the Week 1 README row has no other home. Assignment 1 keeps its table as the students' first map of requirements/. Supersedes TASK-043 AC #3.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 assignments/assignment-2.md has no Before You Start section and no table-of-contents entry for it
- [x] #2 Part 1 names reports/week-01/README.md beside meeting-report.md as where the customer already disagreed, as a team-repository path rather than a link
- [x] #3 Every file the removed table linked is still linked from a Part, the deadlines line, or the report section
- [x] #4 assignments/assignment-1.md is unchanged
- [x] #5 Every link and heading anchor in assignment-2.md resolves
<!-- AC:END -->

## Definition of Done
<!-- DOD:BEGIN -->
- [ ] #1 All acceptance criteria are satisfied
- [ ] #2 Changed Markdown files are formatted: `pnpm run format:markdown`
- [ ] #3 `pnpm run lint:markdown` passes
- [ ] #4 `pnpm run test:markdown-format` and `pnpm run test:markdown-rules` pass
- [ ] #5 `pnpm run check:lectures` passes
<!-- DOD:END -->

## Implementation Plan

<!-- SECTION:PLAN:BEGIN -->
1. Delete the Before You Start TOC line and section from assignments/assignment-2.md.
2. Add one sentence to Part 1 pointing at reports/week-01/README.md and meeting-report.md.
3. Run the four Markdown gates and check:lectures, and confirm every removed table target is still linked.
<!-- SECTION:PLAN:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Removed the Before You Start section and its table-of-contents entry from assignments/assignment-2.md. Part 1 now names reports/week-01/README.md and meeting-report.md as where the customer already disagreed, the one row with no other home. Every file the table linked is still linked from a Part, the deadlines line, or the report section. Verified with the four Markdown gates, check:lectures, and a github-slugger link and anchor check.
<!-- SECTION:FINAL_SUMMARY:END -->
