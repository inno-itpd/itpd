---
id: TASK-146.06
title: Write course/decisions/a4.md and reverse the two A3 decisions
status: Done
assignee: []
created_date: '2026-10-20 17:56'
updated_date: '2026-10-20 18:16'
labels: []
dependencies: []
parent_task_id: TASK-146
type: docs
ordinal: 123000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Write `course/decisions/a4.md` per section 5 of `course/plans/a4-plan.md`, following the format of `course/decisions/a3.md`: a header paragraph, then the `A4-DEC-nnn` entries with `**Status:**`, `**Decision:**`, `**Why:**`, `**Alternatives considered:**`, `**Where it lands:**`, and `**Reverses:**` where an entry reverses an `A3-DEC`.
Mark `A3-DEC-014` and `A3-DEC-022` reversed in `course/decisions/a3.md`, keeping their statements and fields.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 Every decision in the plan section 5 has an entry, numbered `A4-DEC-001` upward, and each names where it lands.
- [x] #2 `A3-DEC-014` and `A3-DEC-022` carry `**Status:** Reversed by ...`, linked, and keep their statements.
- [x] #3 `A4-DEC-027` restates the stack, `.gitignore`, and Dependabot clauses that `A3-DEC-014` leaves standing.
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
Wrote `course/decisions/a4.md` with `A4-DEC-001` to `A4-DEC-032` and marked `A3-DEC-014` and `A3-DEC-022` reversed, keeping their statements and appended landing notes. Decisions: `**Reverses:**` follows `**Status:**`; `A4-DEC-027` restates the surviving clauses of `A3-DEC-014` without being a reversal; the entries cite the Week 4 files and the assignment parts. Validation: every relative link and anchor resolves, and `check:links` passes.
<!-- SECTION:NOTES:END -->
