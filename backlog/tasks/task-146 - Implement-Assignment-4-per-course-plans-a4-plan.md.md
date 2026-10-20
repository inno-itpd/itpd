---
id: TASK-146
title: Implement Assignment 4 per course/plans/a4-plan.md
status: Done
assignee: []
created_date: '2026-10-20 17:55'
updated_date: '2026-10-20 18:16'
labels: []
dependencies: []
priority: high
type: docs
ordinal: 117000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Write Assignment 4 and everything it depends on, as `course/plans/a4-plan.md` specifies: seven new requirements files, the edited requirements files, `guides/quality-and-architecture.md`, `assignments/assignment-4.md`, `course/decisions/a4.md` with the two A3 reversals, and every router and schedule update.
No file is created under `docs/` or `reports/`, since those belong to student repositories.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 Every deliverable in `course/plans/a4-plan.md` exists and states what the plan specifies.
- [x] #2 Every new rule has exactly one owner, and every other mention links it.
- [x] #3 `pnpm run format:markdown:check`, `pnpm run lint:markdown`, `pnpm run test:markdown-format`, `pnpm run test:markdown-rules`, and `pnpm run check:links` pass.
- [x] #4 The plan's audits pass: routing, cross-reference, catch-up, no-fallback, date, link-model, drivers, three-digit, surface, and full-example.
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
All eight streams are done. The deliverables are in place, the seven new requirements files each own their rules, the routers and the schedule are in step, and the four Markdown gates, the link check, the link-anchor script, and `backlog doctor` pass. The backlog task files were reformatted once by an over-broad prettier invocation; the CLI still parses them and rewrites them on its next edit.
<!-- SECTION:NOTES:END -->
