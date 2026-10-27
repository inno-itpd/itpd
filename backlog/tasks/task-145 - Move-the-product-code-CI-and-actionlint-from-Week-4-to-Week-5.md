---
id: TASK-145
title: Move the product-code CI and actionlint from Week 4 to Week 5
status: Done
assignee: []
created_date: '2026-10-20 15:33'
updated_date: '2026-10-27 12:48'
labels: []
dependencies: []
references:
  - course/plans/a5-plan.md
  - course/plans/a4-plan.md
  - course/decisions/a3.md
modified_files:
  - requirements/repository-requirements.md
  - requirements/definition-of-done-requirements.md
  - course/syllabus.md
  - course/decisions/a3.md
  - TODO.md
type: docs
ordinal: 116000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
TASK-134 moved the product-code CI from Week 3 to Week 4, but the A5 plan moves the quality requirement tests, the testing plan, and CI to Week 5, because the Week 5 lecture is testing and automation. The CI half moves with it: the product-code CI marker in `requirements/repository-requirements.md`, the Definition of Done item, and `actionlint`, which the A4 plan had put in Week 4. The move also corrects the syllabus, the TODO notes, `A3-DEC-018`'s pointer, and the A5 decision log's surviving-clause entry. The component and sequence views are no longer part of the move: they are not required, per its `A5-DEC-009`.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 `requirements/repository-requirements.md`: the product-code CI item is in a `**Since: W5**` block, and that block names `actionlint` and the five checks (linting, formatting, type checking, build, and automated tests) on pull requests and on `main`, with the third-party actions pinned.
- [x] #2 `requirements/definition-of-done-requirements.md`: the pull request item that names the product-code CI is `**Since: W5**` and names `actionlint` too, and the full example's `## Pull Request` list carries it.
- [x] #3 `course/syllabus.md`: the Week 4 deliverables lose `actionlint` and the product-code CI, the Week 5 deliverables and Submission 5 row gain them, and the Week 5 heading is `Testing, Verification & Deployment`.
- [x] #4 `course/decisions/a3.md`: `A3-DEC-018` is `Reversed by A5-DEC-013`, and its `**Where it lands:**` pointer says the product-code CI marker moved from Week 4 to Week 5.
- [x] #5 `TODO.md`: the product-code CI notes say Week 5 and the `Since: W5` block, and the actionlint item points at Assignment 5.
- [x] #6 The four Markdown gates, `pnpm run check:links`, and `backlog doctor` pass.
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
Settled by TASK-151.07 after the Assignment 5 work landed, per `course/plans/a5-plan.md`'s `## Edited Files Outside requirements/`.

**Edits to this task**
- Criterion #4 repointed from `A5-DEC-017` to `A5-DEC-013`, because `A5-DEC-013` is the entry that reverses `A3-DEC-018` in full and `A5-DEC-017` restates the clauses that survive it.
- Description now says the component and sequence views are not required rather than removed, which is what `A5-DEC-009` records.

**Criteria verified**
- #1: `requirements/repository-requirements.md`'s `**Since: W5**` block is rules 8–12. Rule 8 requires `actionlint` over `.github/workflows/` on pull requests and every push to `main`, pinned; rule 9 names the five checks (linting, formatting, type checking, build, automated tests), runs them on pull requests and on `main`, and pins every third-party action; rules 10–12 carry the not-applicable record, the critical modules from a clean checkout, and no deployment job.
- #2: `requirements/definition-of-done-requirements.md`'s `**Since: W5**` pull request rule names `actionlint` and the applicable product-code CI checks, and the full example's `## Pull Request` list carries it.
- #3: the Week 4 section of `course/syllabus.md` carries no `actionlint` or product-code CI; the Week 5 deliverables (item 2), the Submission 5 row, and the focus row carry them; the Week 5 heading and its ToC entry read `Testing, Verification & Deployment`.
- #4: `course/decisions/a3.md`'s `A3-DEC-018` reads `**Status:** Reversed by [A5-DEC-013]` and its `**Where it lands:**` pointer says the product-code CI marker has moved from Week 4 to Week 5.
- #5: `TODO.md`'s product-code CI item says Week 5 and cites the `**Since: W5**` block, and the actionlint note now names Assignment 5's Part 2.
- #6: the four Markdown gates pass, `pnpm run check:links` passes with 2426 links OK and 0 errors, and `backlog doctor` passes.

**Two deviations from the task text**
- The task and `course/plans/a5-plan.md` expected this checkout's `backlog` to be 1.45 with no `doctor` command. The installed CLI is 1.52.0 and `backlog doctor` exists, so it was run and reports no duplicate IDs, no self-referential dependencies, and no cycles.
- `backlog sequence list --plain` is not a command in 1.52.0 either (`sequence` is unknown), so the tree was verified with `backlog task list`, `backlog task view`, and `backlog doctor` instead.

**One edit outside the task record**
`TODO.md`'s actionlint note gained "and Assignment 5's Part 2 asks the team for it", so the note points at Assignment 5 as criterion #5 asks.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
## Summary

The product-code CI and `actionlint` moved from Week 4 to Week 5 in the course materials, and this task now records that move as done after the Assignment 5 work landed.

## Changes

- `requirements/repository-requirements.md`: the `**Since: W5**` block requires `actionlint` over `.github/workflows/` and the five product-code checks, on pull requests and on `main`, pinned, with no deployment job.
- `requirements/definition-of-done-requirements.md`: the `**Since: W5**` pull request rule and the full example name `actionlint` and the applicable product-code CI checks.
- `course/syllabus.md`: Week 4 no longer carries the checks, Week 5 does, and the Week 5 heading reads `Testing, Verification & Deployment`.
- `course/decisions/a3.md`: `A3-DEC-018` reads `**Status:** Reversed by [A5-DEC-013]` and its pointer says the marker moved from Week 4 to Week 5.
- `TODO.md`: the product-code CI notes say Week 5 and cite the `**Since: W5**` block; the actionlint item now points at Assignment 5's Part 2.
- The task itself was repointed from `A5-DEC-017` to `A5-DEC-013` and its description now says the component and sequence views are not required.

## Validation

`format:markdown:check`, `lint:markdown`, `test:markdown-format` (34 tests), `test:markdown-rules` (34 tests), `check:lectures` (5 decks), and `check:links` (2426 links, 0 errors) pass. `backlog doctor` on `backlog` 1.52.0 reports no duplicate IDs, self-referential dependencies, or cycles.

## Notes

The task and `course/plans/a5-plan.md` expected `backlog` 1.45 without a `doctor` command; the installed CLI is 1.52.0, where `doctor` exists and `sequence` does not, so the tree is verified with `backlog task list`, `backlog task view`, and `backlog doctor`.
<!-- SECTION:FINAL_SUMMARY:END -->
