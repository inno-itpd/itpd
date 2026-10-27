---
id: TASK-154
title: Drop the feature entry's term list for a glossary line and first-use links
status: Done
assignee: []
created_date: '2026-10-27 14:52'
updated_date: '2026-10-27 14:57'
labels:
  - docs
dependencies: []
references:
  - requirements/features-requirements.md
  - requirements/glossary-requirements.md
  - requirements/general-requirements.md
  - course/decisions/a5.md
  - guides/quality-and-architecture.md
  - assignments/assignment-5.md
  - course/syllabus.md
documentation:
  - course/plans/a5-plan.md
  - >-
    backlog/tasks/task-152 -
    Require-feature-documentation-for-users-and-developers.md
  - backlog/tasks/task-153 - Write-feature-entry-headings-in-sentence-case.md
priority: medium
type: docs
ordinal: 140000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
The feature entry's `**Terms:**` field is a list nothing keeps current. It was justified by being the complete declared set a redefinition could follow, but a list nobody maintains is a subset that reads as complete, and a reader cannot tell "this capability uses no fixed word" from "someone forgot". Its other roles are weak: a reading developer meets the word in the opening sentence, where an inline link carries its own context, and the functional requirement that owns the behaviour already reaches the term through the glossary's `**Defined by:**`.

The change removes the field and routes vocabulary two ways: one line in the page's intro links `docs/glossary.md`, and the opening sentence links a glossary term at its first use in that sentence. The heading is exempt, because its anchor is the citation form `docs/features.md#<capability>` and a link in it would put markup where the citation target is. A term the sentence cannot say, such as `Hold`, is no longer listed at all: `FR-001` owns it and the glossary reaches it, so nothing is lost that the partial list was delivering.

The design was settled in discussion before this task: one link per term per entry, the page-specific first-use rule is Required while the glossary's general mention rule stays Recommended, "first use" means first occurrence in the sentence rather than first identical string (word forms and senses diverge, so this is a review rule, not a checkable one), and the field cannot simply be deleted because it is part of `A5-DEC-034`, which the decision log reverses only whole.

Confirmed scope: `requirements/features-requirements.md` (the field table, the omit bullet, the same-pull-request rule, and the full example), the Week 5 traceability row in `requirements/general-requirements.md`, Step 8 and the `docs/features.md` output row in `guides/quality-and-architecture.md`, Assignment 5 Part 6 and its coverage row, Week 5 in `course/syllabus.md`, and a new `A5-DEC-036` in `course/decisions/a5.md` reversing `A5-DEC-034` in full while restating its surviving clauses. Out of scope: the glossary's `**Defined by:**` rule, the feature heading case and the citation rule, the story, functional requirement, and ADR rules, a feature index, and any file under `docs/` or `reports/` in this course repository.

Environment note: `pnpm run check:links` cannot run here, as recorded on TASK-153. Leave that Definition of Done item open and record why in the implementation notes rather than claiming it passed.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 `requirements/features-requirements.md` no longer lists a `**Terms:**` field: the entry carries `**Stories:**`, `**Behavior:**`, and optional `**Decisions:**` in that order, and the omit bullet, the same-pull-request rule, and the full example no longer mention it.
- [x] #2 The requirement puts one glossary link on the page: a page-level rule requires the page to point at `docs/glossary.md` as its route to the project's vocabulary, and the full example shows that line.
- [x] #3 The opening-sentence rule requires a word `docs/glossary.md` defines to link to its term at its first use in that sentence, excludes the heading so a citation stays `docs/features.md#<capability>`, and links to the glossary's term rule rather than restating it; the full example links at least one term in its first entry.
- [x] #4 `requirements/general-requirements.md`'s Week 5 traceability row names the `US-nn`, `FR-nnn`, and `ADR-nnn` an entry links and the glossary term its sentence links at first use, not a term the entry joins.
- [x] #5 `guides/quality-and-architecture.md` carries the method: the term stays one of the owners in Step 8, the page link and the first-use link are the route to it, the output row names the new shape, and the update rule names the sentence's link instead of `**Terms:**`.
- [x] #6 `assignments/assignment-5.md` Part 6, its coverage row, its what-good-looks-like bullet, and its checklist ask for the glossary line and the first-use link and no longer for `**Terms:**`.
- [x] #7 `course/syllabus.md` Week 5's feature documentation deliverable and Submission 5 row describe the new entry shape.
- [x] #8 `course/decisions/a5.md` gains `A5-DEC-036`, which reverses `A5-DEC-034` in full and restates its surviving flat-entry, no-restatement, no-`FEAT-nn`, no-index, no-issue-type, no-report-section, and same-pull-request clauses without the `**Terms:**` clause, and `A5-DEC-034`'s status becomes `Reversed by` it; `course/plans/a5-plan.md` stays the historical design record.
- [x] #9 A search of the maintained material finds no current rule, guide, assignment, syllabus, router, or weekly-report text requiring a per-entry term list; historical records, the reversed decision entries, and Done backlog tasks keep their text.
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
1. Rewrite `requirements/features-requirements.md`: drop the `**Terms:**` row, add the page-level glossary line rule under `Where The Features Live`, add the first-use term rule and the heading exemption under `The Feature Entry`, drop `**Terms:**` from the omit bullet and the same-pull-request rule, and update the full example.
2. Update the Week 5 traceability row in `requirements/general-requirements.md`.
3. Update `guides/quality-and-architecture.md`: the output row, the Step 8 owner list, a sentence in `Write The User Sentence` for the first-use link, and the `Keep The Page Current` rule.
4. Update `assignments/assignment-5.md`: the deliverables list, Part 6 step 3, and the what-good-looks-like bullet.
5. Update `course/syllabus.md` Submission 5 item 5.
6. Add `A5-DEC-036` to `course/decisions/a5.md`, reversing `A5-DEC-034` in full and restating its surviving clauses, and set `A5-DEC-034`'s status to `Reversed by` it.
7. Sweep for stragglers, then run `format:markdown`, `format:markdown:check`, `lint:markdown`, `test:markdown-format`, `test:markdown-rules`, and `check:lectures`; `check:links` stays unrun with its DoD item open.
8. Record implementation notes, check the acceptance criteria against evidence, and close the task.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Decisions: the field is dropped rather than kept and required to stay complete, because completeness cannot be checked and an incomplete list reads as complete. Vocabulary now routes through one page-level line and one first-use link per term. The heading stays link-free so `docs/features.md#<capability>` remains the citation form. The change is recorded as `A5-DEC-036` reversing `A5-DEC-034` in full, because the decision log does not reverse a decision partially; `A5-DEC-035` remains the heading-case decision and is untouched. `TODO.md`'s citation moves from `A5-DEC-034` to `A5-DEC-036`, which now owns the surviving clause it quotes.

Scope check: a repository-wide search finds `**Terms:**` only in the reversed decision entry, the new reversing entry, and the historical `course/plans/a5-plan.md`, which stays as the design record. No router, weekly-report rule, or other assignment names the field.

Validation: `pnpm run format:markdown` rewrote only `requirements/general-requirements.md` (table column widths). On the final tree, `format:markdown:check`, `lint:markdown`, `test:markdown-format` (34 tests), `test:markdown-rules` (34 tests), and `check:lectures` (5 decks match, Typst 0.15.1) all exit 0. `pnpm run check:links` was not run because it cannot run in this environment, as recorded on TASK-153; its Definition of Done item is left open.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
## What changed

- `requirements/features-requirements.md`: the entry no longer carries a `**Terms:**` field. The page's intro links `docs/glossary.md` (new rule 6 under Where The Features Live), and the opening sentence links a glossary term at its first use (new rule 3 under The Feature Entry), with the heading exempt so the anchor stays the citation form. The omit bullet and the same-pull-request rule no longer name the field, and the full example shows the glossary line and a linked `slot`.
- `requirements/general-requirements.md`: the Week 5 traceability row now names the `US-nn`, `FR-nnn`, and `ADR-nnn` an entry links and the term its sentence links at first use.
- `guides/quality-and-architecture.md`: the `docs/features.md` output row, the term-as-owner bullet, a first-use paragraph in Write The User Sentence, and the Keep The Page Current rule.
- `assignments/assignment-5.md`: the deliverable, the Part 6 rules and steps, what good looks like, and the checklist.
- `course/syllabus.md`: Submission 5 item 5.
- `course/decisions/a5.md`: `A5-DEC-036` reverses `A5-DEC-034` in full, restates its surviving clauses, and records the alternatives; `A5-DEC-034`'s status is now `Reversed by` it.
- `TODO.md`: the deferred-feature-issue-type note cites `A5-DEC-036`, which now owns the clause it quotes.

## Why

The field's only load-bearing use was as the complete declared set a redefinition could follow, and nothing kept it complete, so it was a subset that read as a set - worse than no list, because a reader cannot tell an empty capability from a forgotten one. The term is met where it is used, in the one-sentence description, and a link there carries its own context while the page's one-sentence rule bounds the obligation to one link per term.

## Scope

Kept: the fixed page, the flat `##` entry, the user-language sentence, the `**Stories:**` and `**Behavior:**` links, the optional `**Decisions:**`, the same-pull-request rule, and the no-`FEAT-nn`/no-index/no-issue-type/no-report-section rules. Out of scope and unchanged: the glossary's `**Defined by:**` rule, the feature heading case and citation rule, the story, functional requirement, and ADR rules, and any file under `docs/` or `reports/` in this course repository.

## Validation

`format:markdown` rewrote only `requirements/general-requirements.md` (table column widths). `format:markdown:check`, `lint:markdown`, `test:markdown-format` (34 tests), `test:markdown-rules` (34 tests), and `check:lectures` (5 decks match, Typst 0.15.1) all pass on the final tree. `check:links` was not run: it cannot run in this environment, as recorded on TASK-153, so that Definition of Done item is left open rather than claimed.
<!-- SECTION:FINAL_SUMMARY:END -->
