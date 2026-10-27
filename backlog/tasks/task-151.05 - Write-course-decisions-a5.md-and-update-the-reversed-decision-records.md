---
id: TASK-151.05
title: Write course/decisions/a5.md and update the reversed decision records
status: To Do
assignee: []
created_date: '2026-10-27 08:45'
updated_date: '2026-10-27 08:46'
labels: []
dependencies:
  - TASK-151.01
  - TASK-151.02
  - TASK-151.04
references:
  - course/plans/a5-plan.md
  - course/decisions/a4.md
  - course/decisions/a3.md
  - course/plans/a4-plan.md
documentation:
  - course/plans/a5-plan.md
  - course/decisions/a4.md
modified_files:
  - course/decisions/a5.md
  - course/decisions/a3.md
  - course/decisions/a4.md
  - course/plans/a4-plan.md
parent_task_id: TASK-151
priority: high
ordinal: 135000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Write the Assignment 5 maintainer decision log and update the records it reverses, per `course/plans/a5-plan.md`'s `## New Maintainer Decision Log course/decisions/a5.md`, `## Edited Files Outside requirements/`, and `## Scope And Contradictions`.

1. Create `course/decisions/a5.md` following `course/decisions/a4.md`'s format: a header paragraph saying what the file records (maintainer documentation, `A5-DEC-nnn` entries, zero-padded, never renumbered, folded revisions, full reversals) and 33 entries in the plan's order. Each entry carries `**Status:**`, `**Decision:**`, `**Why:**`, `**Alternatives considered:**`, and `**Where it lands:**`, and an entry that reverses a decision also carries `**Reverses:**`. Use the plan's 33 decision summaries as the `**Decision:**` content and write the `**Why:**` and `**Alternatives considered:**` from the plan's stated reasoning; `**Where it lands:**` links the requirement sections the entry lands in, the assignment part, and the guide step it lands in.
   The critical entries: `A5-DEC-009` reverses `A4-DEC-033`'s Week 5 views clause and `A4-DEC-001`'s clause that the component and sequence views are Assignment 5's; `A5-DEC-013` reverses [`A3-DEC-018`](a3.md#a3-dec-018-the-vocabulary-and-the-deferrals-follow-the-week-that-teaches-them) in full; `A5-DEC-017` restates the surviving `A3-DEC-018` clauses; `A5-DEC-018` records that an ADR cites no `QRT-nn`.
2. `course/decisions/a3.md`: `A3-DEC-018`'s `**Status:**` becomes `Reversed by [A5-DEC-013](a5.md#a5-dec-013-...)`, its statement and fields stay, and its `**Where it lands:**` pointer says the product-code CI marker moved from Week 4 to Week 5 and cites `A5-DEC-013`; `A5-DEC-017` restates the clauses that still hold.
3. `course/decisions/a4.md`: `A4-DEC-001`'s `**Status:**` reads `Accepted, with the container clause reversed by A4-DEC-033 and the component and sequence view clauses reversed by A5-DEC-009`; `A4-DEC-033` also points at `A5-DEC-009`; `A4-DEC-024`'s `**Where it lands:**` link is repointed at the renamed Week 5 heading and its "Week 4 adds no CI check" note points at the Week 5 CI block. Both entries keep their statements and fields.
4. `course/plans/a4-plan.md`: add the note that this plan's file changes move the planning, release, weekly-report, and quality full examples to Week 5; confirm its scope boundary, the `actionlint` move, and the non-required views are already stated and do not repeat the rules it hands over.
5. Anchor names for the new entries follow the `#a5-dec-nnn-<slug>` form; compute them from the heading after writing.

Do not edit `assignments/`, `guides/`, or the routers here; later tasks own them.

When done, record implementation notes and set the task to Done.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [ ] #1 `course/decisions/a5.md` exists with a header paragraph in `a3.md`'s format and 33 entries, `A5-DEC-001` to `A5-DEC-033`, each with `**Status:**`, `**Decision:**`, `**Why:**`, `**Alternatives considered:**`, and `**Where it lands:**`, in the plan's design order.
- [ ] #2 Every `A5-DEC` entry states the decision the plan's `## New Maintainer Decision Log` lists, including `A5-DEC-009` reversing the Week 5 views clauses of `A4-DEC-001` and `A4-DEC-033`, `A5-DEC-013` reversing `A3-DEC-018` in full, `A5-DEC-017` restating the surviving clauses, and `A5-DEC-018` recording that an ADR cites no `QRT-nn`.
- [ ] #3 `course/decisions/a3.md`: `A3-DEC-018` reads `Reversed by A5-DEC-013` with the link, keeps its statement and fields, and its `**Where it lands:**` pointer says the product-code CI marker moved from Week 4 to Week 5 and cites `A5-DEC-013`.
- [ ] #4 `course/decisions/a4.md`: `A4-DEC-001`'s `**Status:**` names `A4-DEC-033` for the container clause and `A5-DEC-009` for the component and sequence view clauses, `A4-DEC-033` still points at `A5-DEC-009`, and `A4-DEC-024`'s `**Where it lands:**` links the renamed Week 5 heading and its no-CI note points at the Week 5 CI block.
- [ ] #5 `course/plans/a4-plan.md` gains the note that the Assignment 5 file changes move the planning, release, weekly-report, and quality examples to Week 5, and links `a5-plan.md`; its scope boundary, the `actionlint` move, and the non-required views are confirmed already stated and are not repeated.
- [ ] #6 Every link between the decision logs, and every link from `a5.md` into `requirements/`, `assignments/`, `guides/`, and the plans, resolves to an existing heading.
<!-- AC:END -->

## Definition of Done
<!-- DOD:BEGIN -->
- [ ] #1 All acceptance criteria are satisfied
- [ ] #2 Changed Markdown files are formatted: `pnpm run format:markdown`
- [ ] #3 `pnpm run lint:markdown` passes
- [ ] #4 `pnpm run test:markdown-format` and `pnpm run test:markdown-rules` pass
- [ ] #5 `pnpm run check:lectures` passes
- [ ] #6 `pnpm run check:links` passes
- [ ] #7 Implementation notes record the decisions made and the validation results
<!-- DOD:END -->
