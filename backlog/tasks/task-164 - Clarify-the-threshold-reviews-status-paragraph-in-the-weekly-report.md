---
id: TASK-164
title: Clarify the threshold review's status paragraph in the weekly report
status: Done
assignee: []
created_date: '2026-11-04 07:18'
updated_date: '2026-11-04 07:22'
labels: []
dependencies: []
modified_files:
  - requirements/weekly-report-requirements.md
  - guides/analytics-and-observability.md
  - assignments/assignment-6.md
  - course/decisions/a6.md
  - course/plans/a6-plan.md
priority: low
type: docs
ordinal: 150000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
The weekly report's threshold review rule says the section "states each goal's status below the table" without saying where that text sits, which goals it covers, or where the reason for a verdict lives. That reads as a second table or a copied `**Outcome:**`, and the guide, the Week 06 example, Assignment 6, and `A6-DEC-013` repeat the vague phrase. The rule and those four places should all name one shape: a prose paragraph immediately after the table, one sentence per reviewed goal, stating the post-review `Open`/`Achieved`/`Missed` with the goal linked, while `docs/threshold-of-success.md` keeps the `**Outcome:**` that says what was found and links the evidence.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 Rule 17 of `requirements/weekly-report-requirements.md` places the statuses in a paragraph immediately after the table, in the same section, one sentence per reviewed row in `TOS-nn` order, stating the goal's status after the review and linking the goal to its section in `docs/threshold-of-success.md`.
- [x] #2 Rule 17 says a goal settled before the review has no row and no status sentence, and that a settled goal's `**Outcome:**` stays in `docs/threshold-of-success.md` and is not restated in the report.
- [x] #3 Rule 17 says the section gives why the team proposed a measure or proposed none, and the TODO comment is gone.
- [x] #4 The full Week 06 example in the requirements file matches the rule, including the per-goal links and the removal of the `TOS-02` why.
- [x] #5 Step 8 of `guides/analytics-and-observability.md`, Part 10 and the report instructions in `assignments/assignment-6.md`, `A6-DEC-013` in `course/decisions/a6.md`, and the A6 plan's threshold passages use the same reading.
- [x] #6 `pnpm run format:markdown:check` and `pnpm run lint:markdown` pass; `pnpm run check:links` passes or its network limits are recorded.
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
1. Rewrite rule 17 in `requirements/weekly-report-requirements.md`: rows for goals open when the review starts; statuses as one prose sentence per row immediately after the table, in `TOS-nn` order, each goal linked; earlier-settled goals get no row or sentence; the `**Outcome:**` stays in `docs/threshold-of-success.md` and is not restated; the section gives why a measure was proposed or none was. Remove the TODO comment.
2. Update the Week 06 example's threshold review paragraph to the same shape: per-goal links, no why for `TOS-02`, and the proposal reason.
3. Align Step 8 of `guides/analytics-and-observability.md`, including the earlier-settled goal and the paragraph after the table.
4. Align Assignment 6's Part 10 steps, the report contents item, the `What good looks like` bullet, and the checklist.
5. Fold the clarification into `A6-DEC-013` in `course/decisions/a6.md` and the threshold passages in `course/plans/a6-plan.md`.
6. Run `pnpm run format:markdown`, `pnpm run format:markdown:check`, `pnpm run lint:markdown`, `pnpm run test:markdown-format`, `pnpm run test:markdown-rules`, `pnpm run check:links`, and `pnpm run check:lectures`; record the results, check the acceptance criteria, and close the task.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Implementation notes:
- Clarified rule 17: the report's threshold review statuses are a paragraph immediately after the table, one sentence per row in `TOS-nn` order, giving the post-review `Open`/`Achieved`/`Missed` and linking the goal. Rows cover only goals `Open` when the review starts; a goal settled earlier needs no row or status sentence.
- Decided the verdict's reason stays in the goal's `**Outcome:**` in `docs/threshold-of-success.md`, which says what was found and links the evidence; the report links the goal and does not restate it. The section states why a measure was proposed or why none was.
- Aligned the Week 06 example, Step 8 of the analytics guide, Assignment 6's Part 10/report/checklist, `A6-DEC-013`, and the A6 plan. The `<!-- TODO wdym below the table? -->` marker was already gone from the working file when the edit was applied; the prose it flagged was rewritten.
- Validation: `format:markdown` applied; `format:markdown:check`, `lint:markdown`, `test:markdown-format` (34 tests), `test:markdown-rules` (34 tests), `check:lectures` (6 decks), and `check:links` (3064 OK, 0 errors) all exit 0.
- Left the user's unrelated working-tree changes in `TODO.md` and `assignments/assignment-6.md` intact; staged files were left staged.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
## Summary

Clarified the `## Threshold review` status requirement in the weekly public report and aligned every place that repeated the ambiguous "below the table" wording.

Rule 17 now requires the statuses as a prose paragraph immediately after the table: one sentence per reviewed row in `TOS-nn` order, stating the post-review `Open`, `Achieved`, or `Missed` and linking the goal to its section in `docs/threshold-of-success.md`. Only goals that are `Open` when the review starts get a row; a goal settled in an earlier week gets no row or status sentence. The reason for a verdict stays in the goal's `**Outcome:**` in `docs/threshold-of-success.md`, which says what was found and links the evidence, and the report does not restate it. The section also gives why the team proposed each measure or why it proposed none.

The Week 06 example, Step 8 of `guides/analytics-and-observability.md`, Assignment 6's Part 10 and report/checklist, `A6-DEC-013`, and the A6 plan now use the same reading.

## Validation

- `pnpm run format:markdown` — applied
- `pnpm run format:markdown:check` — pass
- `pnpm run lint:markdown` — pass
- `pnpm run test:markdown-format` — 34 tests pass
- `pnpm run test:markdown-rules` — 34 tests pass
- `pnpm run check:lectures` — 6 decks match their sources
- `pnpm run check:links` — 3064 OK, 0 errors (2 excluded, 1 redirect)

No code or workflow changes.
<!-- SECTION:FINAL_SUMMARY:END -->
