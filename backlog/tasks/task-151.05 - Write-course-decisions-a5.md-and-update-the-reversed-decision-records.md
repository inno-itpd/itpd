---
id: TASK-151.05
title: Write course/decisions/a5.md and update the reversed decision records
status: Done
assignee: []
created_date: '2026-10-27 08:45'
updated_date: '2026-10-27 12:07'
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
  - course/syllabus.md
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
- [x] #1 `course/decisions/a5.md` exists with a header paragraph in `a3.md`'s format and 33 entries, `A5-DEC-001` to `A5-DEC-033`, each with `**Status:**`, `**Decision:**`, `**Why:**`, `**Alternatives considered:**`, and `**Where it lands:**`, in the plan's design order.
- [x] #2 Every `A5-DEC` entry states the decision the plan's `## New Maintainer Decision Log` lists, including `A5-DEC-009` reversing the Week 5 views clauses of `A4-DEC-001` and `A4-DEC-033`, `A5-DEC-013` reversing `A3-DEC-018` in full, `A5-DEC-017` restating the surviving clauses, and `A5-DEC-018` recording that an ADR cites no `QRT-nn`.
- [x] #3 `course/decisions/a3.md`: `A3-DEC-018` reads `Reversed by A5-DEC-013` with the link, keeps its statement and fields, and its `**Where it lands:**` pointer says the product-code CI marker moved from Week 4 to Week 5 and cites `A5-DEC-013`.
- [x] #4 `course/decisions/a4.md`: `A4-DEC-001`'s `**Status:**` names `A4-DEC-033` for the container clause and `A5-DEC-009` for the component and sequence view clauses, `A4-DEC-033` still points at `A5-DEC-009`, and `A4-DEC-024`'s `**Where it lands:**` links the renamed Week 5 heading and its no-CI note points at the Week 5 CI block.
- [x] #5 `course/plans/a4-plan.md` gains the note that the Assignment 5 file changes move the planning, release, weekly-report, and quality examples to Week 5, and links `a5-plan.md`; its scope boundary, the `actionlint` move, and the non-required views are confirmed already stated and are not repeated.
- [x] #6 Every link between the decision logs, and every link from `a5.md` into `requirements/`, `assignments/`, `guides/`, and the plans, resolves to an existing heading.
<!-- AC:END -->

## Definition of Done
<!-- DOD:BEGIN -->
- [x] #1 All acceptance criteria are satisfied
- [x] #2 Changed Markdown files are formatted: `pnpm run format:markdown`
- [x] #3 `pnpm run lint:markdown` passes
- [x] #4 `pnpm run test:markdown-format` and `pnpm run test:markdown-rules` pass
- [x] #5 `pnpm run check:lectures` passes
- [ ] #6 `pnpm run check:links` passes
- [x] #7 Implementation notes record the decisions made and the validation results
<!-- DOD:END -->

## Implementation Plan

<!-- SECTION:PLAN:BEGIN -->
Implementation plan (recorded before implementation):

1. Research (done): `course/plans/a5-plan.md` (Scope And Contradictions, Design Decisions, New Maintainer Decision Log, Edited Files Outside `requirements/`), the `a3.md`/`a4.md` entry format, `A3-DEC-018`, `A4-DEC-001`, `A4-DEC-024`, `A4-DEC-033`, and the current headings of every target file.
2. Create `course/decisions/a5.md`: header paragraph in `a3.md`'s format, naming the `A5-DEC-nnn` family, the folded revisions, the full reversals, and `A5-DEC-013`/`A5-DEC-017` as the reversal and the surviving clauses. Then 33 entries `A5-DEC-001` to `A5-DEC-033` in the plan's order, each with `**Status:**`, `**Decision:**`, `**Why:**`, `**Alternatives considered:**`, and `**Where it lands:**`, plus `**Reverses:**` on `A5-DEC-009` (`A4-DEC-033`'s Week 5 views clause and `A4-DEC-001`'s clause) and `A5-DEC-013` (`A3-DEC-018` in full). The `**Where it lands:**` links go to the requirement section, the assignment part, and the guide step the entry reaches, plus the plans and the syllabus where the entry is one of the Week 5 scope/editing decisions.
3. Edit `course/decisions/a3.md`: `A3-DEC-018`'s `**Status:**` becomes `Reversed by [A5-DEC-013](a5.md#...)`; its statement/fields stay; `**Where it lands:**` says the product-code CI marker moved from Week 4 to Week 5 and cites `A5-DEC-013`.
4. Edit `course/decisions/a4.md`: `A4-DEC-001`'s `**Status:**` names `A4-DEC-033` for the container clause and `A5-DEC-009` for the component and sequence view clauses; `A4-DEC-033` keeps its status and adds the `A5-DEC-009` pointer (its current status text already names it, so it is aligned with the entry); `A4-DEC-024`'s `**Where it lands:**` repoints the syllabus link at the renamed Week 5 heading and makes the no-CI note point at the Week 5 CI block. Both entries keep their statements and fields.
   Sequencing: TASK-151.06 renames the syllabus heading; the new anchor is written here per the Acceptance Criterion, and the link resolves once that task lands.
5. Edit `course/plans/a4-plan.md`: add the note that Assignment 5's file changes move the planning, release, weekly-report, and quality full examples to Week 5, linking `a5-plan.md`; verify (and do not repeat) the scope boundary, the `actionlint` move, and the non-required views already stated.
6. Validate: compute every new anchor from the final headings, then `pnpm run format:markdown`, `pnpm run format:markdown:check`, `pnpm run lint:markdown`, `pnpm run test:markdown-format`, `pnpm run test:markdown-rules`, and `pnpm run check:links`; run a decision-log audit that every `A5-DEC` cited by the plan's contradiction table exists and states its resolution.
7. Record implementation notes, check the acceptance criteria with evidence, and set the task Done.

Executed deviation (user-approved): the Week 5 syllabus heading and its ToC entry were renamed in this task, not deferred to TASK-151.06, because the decision-log links name the renamed heading and `pnpm run check:links` must resolve them here. TASK-151.06 still owns the rest of the Week 5 syllabus section and the Week 6/7 moves.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Implementation
- Wrote `course/decisions/a5.md`: a header in `a3.md`'s format (maintainer documentation, `A5-DEC-nnn` entries, zero-padded and never renumbered, folded revisions, full reversals) and 33 entries `A5-DEC-001` to `A5-DEC-033` in the plan's order, each with `**Status:**`, `**Decision:**`, `**Why:**`, `**Alternatives considered:**`, and `**Where it lands:**`; `A5-DEC-009` and `A5-DEC-013` also carry `**Reverses:**`. `A5-DEC-009` reverses `A4-DEC-033`'s Week 5 views clause and `A4-DEC-001`'s component-and-sequence clause; `A5-DEC-013` reverses `A3-DEC-018` in full; `A5-DEC-017` restates the surviving clauses; `A5-DEC-018` records that an ADR cites no `QRT-nn`. Each `Where it lands` links the requirement section, the Assignment 5 part, and the guide step the entry reaches; scope and guide-only entries land in the assignment, the syllabus, and the plans.
- `course/decisions/a3.md`: `A3-DEC-018` reads `Reversed by [A5-DEC-013](a5.md#a5-dec-013-a3-dec-018-is-reversed-in-full)`; its statement and other fields are unchanged, and its `Where it lands` pointer now says the product-code CI marker moved from Week 4 to Week 5 and cites `A5-DEC-013`.
- `course/decisions/a4.md`: `A4-DEC-001`'s `Status` names `A4-DEC-033` for the container clause and `A5-DEC-009` for the component and sequence view clauses; `A4-DEC-033`'s `Status` now links `A5-DEC-009` and keeps its statement and fields; `A4-DEC-024`'s `Where it lands` links the renamed Week 5 heading and its no-CI note points at the `**Since: W5**` block in `repository-requirements.md`.
- `course/plans/a4-plan.md`: added the note in `## 2. Edited Requirements Files` that Assignment 5's file changes move the planning, release, weekly-report, and quality full examples to Week 5, linking `a5-plan.md#changes-to-the-requirements`; verified its scope boundary (intro, Goal, Design Decisions), the `actionlint` move (Design Decisions), and the no-further-view statements are already stated, so none is repeated or restated.
- `course/syllabus.md` (user-approved): renamed only the Week 5 heading and its ToC entry to `Testing, Verification & Deployment`, so the new decision-log anchors resolve in this task. The rest of the Week 5 section (focus row, objectives, deliverables, Submission 5 row) and the Week 6/7 moves stay with TASK-151.06, which owns them; the task's `modified_files` now names the syllabus.
- Anchor names follow `#a5-dec-nnn-<slug>` and were computed from the headings after writing; the cross-log links were checked against the generated headings.

Validation
- `pnpm run format:markdown` clean; `pnpm run format:markdown:check` passes.
- `pnpm run lint:markdown` passes.
- `pnpm run test:markdown-format` 34 tests pass; `pnpm run test:markdown-rules` 34 tests pass.
- `pnpm run check:lectures` passes: 5 decks match their sources.
- Local link and anchor audit over `a3.md`, `a4.md`, `a5.md`, `a4-plan.md`, `a5-plan.md`, and `syllabus.md`: 471 local links checked, 0 broken (`a5.md` alone: 123, all resolving). `lychee --offline --include-fragments .` reports 2422 links and 0 errors. The 5 anchors that pointed at the yet-to-be-renamed Week 5 heading before the syllabus edit now resolve.
- `pnpm run check:links`: 0 link errors and 0 fragment errors; the command exits 2 only on 4 `TIMEOUT`s to `https://iso25000.com/en/iso-25000-standards/iso-25010`, a pre-existing external URL in `a4-plan.md`, `a5-plan.md`, and `quality-requirements-requirements.md` that this task did not add and that this machine cannot reach (curl also times out; the pre-change baseline run had the same timeouts). DoD #6 is left unchecked for that environmental reason: the repository's own links and anchors are clean, but the command cannot exit 0 while the external host is unreachable.
- Decision-log audit: 33 entries, IDs contiguous `A5-DEC-001` to `A5-DEC-033`, every entry with all five fields, `**Reverses:**` on `A5-DEC-009` and `A5-DEC-013` only, and every `A5-DEC` the plan cites (22 distinct IDs) exists in `a5.md` and states the resolution it is cited for.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Added `course/decisions/a5.md`: a header in `a3.md`'s format and 33 entries, `A5-DEC-001` to `A5-DEC-033`, in the plan's design order, each with `Status`, `Decision`, `Why`, `Alternatives considered`, and `Where it lands`. `A5-DEC-009` reverses `A4-DEC-033`'s Week 5 views clause and `A4-DEC-001`'s component-and-sequence clause; `A5-DEC-013` reverses `A3-DEC-018` in full; `A5-DEC-017` restates the surviving clauses; `A5-DEC-018` records that an ADR cites no `QRT-nn`.\nUpdated the records the plan reverses: `A3-DEC-018` now reads `Reversed by A5-DEC-013` and its pointer says the product-code CI marker moved from Week 4 to Week 5; `A4-DEC-001` names `A4-DEC-033` and `A5-DEC-009` in its status; `A4-DEC-033` links `A5-DEC-009`; `A4-DEC-024`'s pointer links the renamed Week 5 heading and its no-CI note points at the Week 5 CI block.\nAdded the `a4-plan.md` note that Assignment 5's file changes move the planning, release, weekly-report, and quality full examples to Week 5, and confirmed its scope boundary, `actionlint` move, and non-required views were already stated rather than repeated.\nRenamed the Week 5 syllabus heading and its ToC entry (user-approved) so the new anchors resolve; the rest of the Week 5 syllabus update and the Week 6/7 moves remain TASK-151.06's.\nValidation: format, format check, lint, both Markdown fixtures, and `check:lectures` pass; 471 local links checked with 0 broken and `lychee --offline` reporting 0 errors. `check:links` reports 0 link and fragment errors and exits 2 only on 4 timeouts to the pre-existing external `iso25000.com` URL, which this machine cannot reach (the pre-change baseline had the same timeouts), so DoD #6 is left unchecked. Follow-up: TASK-151.06 completes the syllabus body, routers, `AGENTS.md`, and `TODO.md`; TASK-151.07 reruns the gates.
<!-- SECTION:FINAL_SUMMARY:END -->
