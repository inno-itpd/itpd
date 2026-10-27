---
id: TASK-153
title: Write feature entry headings in sentence case
status: Done
assignee: []
created_date: '2026-10-27 14:49'
updated_date: '2026-10-27 14:49'
labels: []
dependencies: []
modified_files:
  - requirements/features-requirements.md
  - course/decisions/a5.md
type: docs
ordinal: 139000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
The `docs/features.md` example headed each entry in start case — `## Book And Pay In One Flow` — capitalising articles and prepositions, and no requirement said which case a heading should use. A team copying the example could not apply that rule twice, and the heading is read by the user the page is written for rather than being a section label, so it should read the way that user would write it. The page's prose is already sentence case, so the headings were the only part of the page in another convention. The page's other headings and the glossary stay as they are: this is a choice about the one heading family that names a capability rather than an artifact or a section.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 A `docs/features.md` entry heading is the capability's name in sentence case, with only the first word, proper nouns, and acronyms capitalised.
- [x] #2 The full example in the feature documentation requirement shows sentence-case headings, and each anchor still matches the citation form `docs/features.md#<capability>`.
- [x] #3 The choice has a recorded design decision in `course/decisions/a5.md` that states the reason and the alternatives it turned down.
- [x] #4 The glossary's headings and every other artifact example keep the case they already had.
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
1. Read the feature documentation requirement and `A5-DEC-034`, which owns the entry shape.
2. State the case in the heading rule and switch the three example headings, leaving the anchor text alone because GitHub lowercases the slug.
3. Record the choice as `A5-DEC-035` with its reason and the alternatives it turned down.
4. Confirm the scope with a search: no glossary heading or other artifact example carries a feature heading.
5. Run the Markdown format, lint, and test gates and the deck check; skip the link check, which cannot run in this environment.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Scope was settled before the edit: feature headings only, proper nouns and acronyms excepted, and the glossary's headings left alone.

The three example headings are sentence case, and every citation still reads `#book-and-pay-in-one-flow`, the slug GitHub derives from the new heading, so no citation changed.

`A5-DEC-035` records the start case it replaces and the title case it turned down, so a later change finds the reason on file rather than re-arguing it.

Validation: `pnpm run format:markdown` rewrote the file (table column widths only), `pnpm run format:markdown:check` passed, `pnpm run lint:markdown` passed, `pnpm run test:markdown-format` and `pnpm run test:markdown-rules` passed (34 tests each), and `pnpm run check:lectures` reported 5 decks matching their sources.

`pnpm run check:links` was not run: the user confirmed it cannot run in this environment, so the link-check Definition of Done item is left open.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
## What changed

- `requirements/features-requirements.md`: the heading rule now names the case — first word, proper nouns, and acronyms capitalised — and the three headings in the full example are sentence case (`## Book and pay in one flow`, `## Reschedule a session`, `## Cancel a session`).
- `course/decisions/a5.md`: new `A5-DEC-035` records the choice, why start case and title case were turned down, and where it lands.

## Why

The example was in start case, capitalising articles and prepositions, and no requirement stated a case at all, so a team had no rule to apply twice. The heading is the capability's name read by the user the page is written for, and the page's prose is already sentence case.

## Scope

Feature headings only. The glossary's domain and term headings and every other artifact example keep the case they had. Anchors are unchanged, because GitHub lowercases the slug, so `docs/features.md#book-and-pay-in-one-flow` stays the citation form.

## Validation

`format:markdown` (rewrote table widths), `format:markdown:check`, `lint:markdown`, `test:markdown-format`, `test:markdown-rules` (34 tests each), and `check:lectures` (5 decks match) all pass. `check:links` was skipped: it cannot run in this environment, so that DoD item stays open.
<!-- SECTION:FINAL_SUMMARY:END -->
