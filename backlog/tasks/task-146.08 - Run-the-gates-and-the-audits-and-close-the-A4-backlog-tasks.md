---
id: TASK-146.08
title: 'Run the gates and the audits, and close the A4 backlog tasks'
status: Done
assignee: []
created_date: '2026-10-20 17:56'
updated_date: '2026-10-20 18:16'
labels: []
dependencies: []
parent_task_id: TASK-146
type: docs
ordinal: 125000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Run the plan section 9 gates and audits: `pnpm run format:markdown`, `pnpm run format:markdown:check`, `pnpm run lint:markdown`, `pnpm run test:markdown-format`, `pnpm run test:markdown-rules`, and `pnpm run check:links`, then the routing, cross-reference, catch-up, no-fallback, date, link-model, drivers, three-digit, surface, and full-example audits.
Record what each found.
Then check the acceptance criteria and move the A4 tasks to Done.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 All five gates pass.
- [x] #2 Every audit finds no remaining defect, or the fix it required is made.
- [x] #3 The implementation notes record the decisions made and the validation results.
<!-- AC:END -->

## Definition of Done
<!-- DOD:BEGIN -->
- [x] #1 All acceptance criteria are satisfied
- [x] #2 Changed Markdown files are formatted: `pnpm run format:markdown`
- [x] #3 `pnpm run lint:markdown` passes
- [x] #4 `pnpm run test:markdown-format` and `pnpm run test:markdown-rules` pass
- [x] #5 `pnpm run check:lectures` passes
- [x] #6 `pnpm run check:links` passes
- [x] #7 Implementation notes record the decisions made and the validation results
<!-- DOD:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Gates: `format:markdown:check`, `lint:markdown`, `test:markdown-format` (34 tests), `test:markdown-rules` (34 tests), and `check:links` (1888 OK, 0 errors) all pass. Audits: a script checked 1275 relative links and their anchors across the repository; the routing audit covers the seven new files in README, SKILL, course/rules.md, and both AGENTS.md tables; the date audit finds 24 October 2026 in the syllabus, the README, the assignment, the plan, and the planning example; the three-digit audit finds no short `FR-nnn` or `ADR-nnn`; the full-example audit finds a full example in all seven new files and no `Labels:` line. `backlog doctor` reports no duplicate IDs, self-references, or cycles.
<!-- SECTION:NOTES:END -->
