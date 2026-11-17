---
id: TASK-177
title: Remove the superseded-design phrases from the Assignment 8 materials
status: Done
assignee: []
created_date: '2026-11-17 16:51'
updated_date: '2026-11-17 17:00'
labels: []
dependencies: []
references:
  - assignments/assignment-8.md
  - requirements/configuration-management-requirements.md
  - guides/configuration-management.md
documentation:
  - course/decisions/a8.md
  - course/plans/a8-plan.md
priority: medium
type: docs
ordinal: 162000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
The Assignment 8 text still carries prohibitions that name the configuration review's earlier design, which the 2026 student never sees: a change table, a per-item verdict, a cost table, a graph paragraph, a plan `Baseline:`, `Properties:` and `Version:` fields, a connections table, a dropped-items section, a second coverage row, two wrapper appendices, and a separate improvement plan. They are tombstones of the revised design in commit c7d7a41 and A8-DEC-004/005/009/017/018: they cannot be acted on by a team holding only the current materials, they teach the vocabulary of an abandoned shape, and one of them ("forbidden fields") is a back-reference that dangles once its list is cut. The same lines sit in `requirements/configuration-management-requirements.md` and `guides/configuration-management.md`, where the assignment copied them, so the cleanup must reach all three layers and keep each rule in its owner. The genuine rules survive: no implementation is required and the evaluation schedules no work, stated once and linked to The Recommendation.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 `assignments/assignment-8.md` no longer contains `change table`, `per-item verdict`, `cost table`, `graph paragraph`, `**Properties:**`, `**Version:**`, `## Dropped Items`, `forbidden fields`, `connections table`, `configuration appendix`, `separate plan`, or `no row for the configuration plan`
- [x] #2 `requirements/configuration-management-requirements.md` and `guides/configuration-management.md` carry the same positive shape: the field list and the four goal fields are the only enumeration, and no clause names the abolished improvement plan, implementation, or removed fields
- [x] #3 The no-implementation and no-work-scheduled rule is stated once in the assignment, in the part where a team could otherwise add the change to `SPRINT-09`, and links [The Recommendation]
- [x] #4 Every fact the cut sentences carried is still stated positively in its owner file: the field list, the single connections record, the one coverage row, the evaluation's baseline, and the sanitized public review
- [x] #5 The six project gates pass: `format:markdown:check`, `lint:markdown`, `test:markdown-format`, `test:markdown-rules`, `check:lectures`, and `check:links`
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
1. Reread the four files the phrases live in and confirm each cut against its owner: `requirements/configuration-management-requirements.md` owns the fields, the connections record, the coverage shape, and the no-work rule; the assignment and the guide may only link and apply them.
2. Cut in `assignments/assignment-8.md`: the `Properties`/`Version`/`Baseline`/dropped-items/connections-table prohibition (Part 7 step 4), the evaluation shape list (Part 8 step 6), the "not a change plan" clause (Part 7 step 1), the "separate plan" words and the "no scheduled work" wording; collapse the twelve statements of the no-implementation/no-work rule to the one at Part 8's rules bullet, which already links The Recommendation.
3. Reword rather than delete where a fact survives: the intro says the deliverable is the evaluation; the coverage table keeps its one row; the wrapper keeps the participant-identity line; What Good Looks Like and the checklist keep the positive contents and lose the absence checks.
4. Cut in the requirements: the plan's "schedules none", the removed-fields rule and renumber the remaining rules, the connections-table sentence, the evaluation's shape prohibition and renumber, and the separate-improvement-plan clause. Keep "schedules no work" once, in The Recommendation.
5. Cut in the guide: the subtitle's "without turning the review into a backlog", and the "not a second plan, and the plan is not a report" sentence.
6. Leave `course/decisions/a8.md` and `course/plans/a8-plan.md` alone: the Alternatives considered and the design record are where the rejected shapes belong.
7. Verify with a string sweep for the banned names outside the maintainer files, then run the six gates: format check, lint, both plugin suites, the deck check, and the link check.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Task created from the review that found the Assignment 8 text still forbidding shapes from the pre-`A8-DEC-017`/`018` design: the earlier plan in `tmp/a8-plan.before.md` carried a per-item verdict, a cost table, and traced paths, and commit c7d7a41 replaced them with the goal-first evaluation.

Decision: the assignment keeps exactly one statement of the no-implementation/no-scheduled-work rule, at Part 8's rules bullet, which links The Recommendation; the other eleven restatements were removed. The rule itself stays owned by `requirements/configuration-management-requirements.md#the-recommendation`.

Decision: `course/decisions/a8.md` and `course/plans/a8-plan.md` were left unchanged. The rejected shapes are the subject of their Alternatives considered and design record, and this cleanup changed no rule, so no new `A8-DEC` entry is needed.

Decision: the guide keeps its method warnings about duplicating the edges and recording the tradeoff, but the three Common Mistakes entries that named the abolished improvement plan, the required implementation, and the evaluation-as-backlog were removed, and the cost-table sentence became positive guidance on evidence. The scheduling warning remains in Step 8.

Validation: `format:markdown` and `format:markdown:check`, `lint:markdown`, `test:markdown-format` (34 passed), `test:markdown-rules` (34 passed), `check:lectures` (8 decks, Typst 0.15.1), and `check:links` (4150 total, 4148 OK, 0 errors, fragments included) pass. A string sweep for the removed names returns no match in the three files.

The first link-check run reported three transient 403s from `usertesting.com` links in `course/plans/a7-plan.md`, a file this task does not touch; the retry and the two runs after the final edits report 0 errors.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Removed the sentences that named the Assignment 8 configuration review's superseded design, across the assignment, the requirements, and the guide.

- `assignments/assignment-8.md`: dropped the `**Baseline:**`/`**Properties:**`/`**Version:**`/connections-table/dropped-items prohibition (Part 7), the change-table/per-item-verdict/cost-table/graph-paragraph list (Part 8), `not a change plan`, `no separate plan`, `no configuration appendix`, and the `no row for the configuration plan` rationale. Eleven of the twelve no-implementation/no-scheduled-work statements were removed, leaving the one at Part 8 that links The Recommendation. The intro now says the deliverable is the evaluation, and What Good Looks Like and the checklist keep only positive contents.
- `requirements/configuration-management-requirements.md`: the plan `documents the configuration as it is`; the removed-fields rule is deleted and the items rules renumbered; the connections rule keeps the single-record reason without naming a table; the evaluation's four-prohibition rule is deleted and The First Change renumbered; the separate-improvement-plan sentence is removed.
- `guides/configuration-management.md`: the subtitle and the `not a second plan`/`not a report` sentence are gone; the edge section is retitled `Write The Edge In The Item`; three Common Mistakes entries that named the abolished plan, the required implementation, and the review-as-backlog are removed; the cost-table sentence became positive evidence guidance.

Why: a team holding only the 2026 materials cannot act on a sentence that forbids a shape it has never seen, and `forbidden fields` was a back-reference that dangled once its list was cut. Every fact the cut sentences carried stays positive in its owner file, and the no-implementation/no-work rule is still owned by The Recommendation.

Validation: `format:markdown` and `format:markdown:check`, `lint:markdown`, `test:markdown-format` (34), `test:markdown-rules` (34), `check:lectures` (8 decks, Typst 0.15.1), and `check:links` (4150 total, 0 errors, fragments included) pass. A string sweep for the removed names returns nothing in the three files.

Risk and follow-up: none. The decision log and the design plan intentionally keep the rejected shapes in Alternatives considered and the design record.
<!-- SECTION:FINAL_SUMMARY:END -->
