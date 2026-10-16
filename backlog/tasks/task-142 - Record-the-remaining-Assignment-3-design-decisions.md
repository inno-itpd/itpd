---
id: TASK-142
title: Record the remaining Assignment 3 design decisions
status: Done
assignee: []
created_date: '2026-10-16 05:20'
updated_date: '2026-10-16 05:21'
labels: []
dependencies: []
modified_files:
  - course/decisions/a3.md
  - AGENTS.md
  - TODO.md
type: docs
ordinal: 113000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
After the first eighteen entries, a gap analysis of `course/decisions/a3.md` against the planning log found decisions that no entry carried: the course tooling page, the weekly report's meeting-verdict rule, the sprint milestone lifecycle, the assignment's part order and week minima, and the one-way traceability chain the week completes. Two questions were open as well: whether a risk needs an owner, and whether `MLS-nn` stays bound to its due week; both were settled by keeping the recorded design, so neither needed a reversal entry.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 `course/decisions/a3.md` carries `A3-DEC-019` for the course tooling page, `A3-DEC-020` for the weekly report's meeting verdicts, `A3-DEC-021` for the assignment's part order and week minima, and `A3-DEC-022` for the chain from a commit to the threshold.
- [x] #2 `A3-DEC-006` records the seven sprint milestones being created when the plan is written; `A3-DEC-007` records the milestone closing with its release, after any open issue is rescheduled; and `A3-DEC-015` records the site's linking rules.
- [x] #3 The risk-owner question is resolved as rejected: the `a3.md` TODO comment is gone, and `TODO.md` records the outcome.
- [x] #4 The repository map in `AGENTS.md` lists `course/decisions/a3.md`.
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

## Implementation Plan

<!-- SECTION:PLAN:BEGIN -->
1. Draft `A3-DEC-019` to `A3-DEC-022`: the course tooling page, the weekly report's meeting verdicts, the assignment's part order and minima, and the chain from a commit to the threshold.
2. Fold the sprint milestone lifecycle into `A3-DEC-006` and `A3-DEC-007`, and the site's linking rules into `A3-DEC-015`.
3. Resolve the risk-owner question as rejected and close the `TODO.md` item.
4. Run the gates, record the validation, and commit the decisions with the new task.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Decisions: `A3-DEC-019` records the tooling page as a suggestions list, because a rule that named a tool would make one product obligatory; `A3-DEC-020` records the weekly report carrying each meeting verdict and each move-out with its `DEC-nnn`; `A3-DEC-021` records the assignment as a delta whose ten parts follow the order of work, with the week's minima; and `A3-DEC-022` records the one-way chain from a commit to the threshold, whose reverse direction is found by search. `A3-DEC-006` and `A3-DEC-007` gain the sprint milestone lifecycle (created with the plan, closed with the release after a reschedule), and `A3-DEC-015` gains the site's linking rules (no weekly reports, GitHub URLs for files outside `docs/`). The risk-owner question stays rejected, because responsibility lives on task and story issues and Progress Monitoring names the checker, and `MLS-nn` keeps its due-week numbering; both were settled by keeping the recorded design, so no entry needed `**Reverses:**`. Modified files: `course/decisions/a3.md`, `AGENTS.md`, `TODO.md`.

Validation: `pnpm run format:markdown` reported no changes; `pnpm run format:markdown:check`, `pnpm run lint:markdown`, `pnpm run test:markdown-format` (34 passed), `pnpm run test:markdown-rules` (34 passed), `pnpm run check:lectures` (3 decks, Typst 0.15.1), `pnpm run check:links` (1242 total, 0 errors, 2 excluded, 1 redirect, fragments included), and `backlog doctor` (no duplicates, self-references, or cycles) all pass.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Added `A3-DEC-019` to `A3-DEC-022` to `course/decisions/a3.md` for the course tooling page, the weekly report's meeting verdicts, the assignment's part order and week minima, and the commit-to-threshold chain; folded the sprint milestone lifecycle into `A3-DEC-006` and `A3-DEC-007` and the site's linking rules into `A3-DEC-015`; and resolved the risk-owner question as rejected in `TODO.md`, with `AGENTS.md` gaining the decisions-file row. Verified with the Markdown format and lint gates, both vitest suites (34 and 34), the deck check (3 decks), the link check (1242 total, 0 errors, fragments included), and `backlog doctor`.
<!-- SECTION:FINAL_SUMMARY:END -->
