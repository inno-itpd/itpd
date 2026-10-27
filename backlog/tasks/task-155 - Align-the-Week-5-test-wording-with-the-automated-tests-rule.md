---
id: TASK-155
title: Align the Week 5 test wording with the automated-tests rule
status: Done
assignee: []
created_date: '2026-10-27 15:37'
updated_date: '2026-10-27 16:11'
labels: []
dependencies: []
modified_files:
  - assignments/assignment-5.md
  - course/syllabus.md
  - README.md
  - requirements/weekly-report-requirements.md
  - course/decisions/a5.md
  - course/plans/a5-plan.md
type: docs
ordinal: 141000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Assignment 5 calls the testability requirement's CI check "the unit tests" and its checklist requires a "unit suite", but the owning rules only require automated tests: a clean-checkout CI run with at least one test for each critical module the testability QR names. The testability QR, its QRT rule, and the CI rule fix the level and the coverage, not the test granularity, so a team can satisfy the requirement with integration or component tests and still fail the assignment's literal wording. The objectives also name the testability CI test twice, once as the unit tests and once as one of the "two implemented tests", which makes two QRTs look like three deliverables. Aligning the student-facing wording with the rule removes that mismatch.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 assignments/assignment-5.md calls the testability requirement's CI check 'automated tests' or 'the test suite', with no 'unit tests' or 'unit suite' left.
- [x] #2 The two review comments in assignments/assignment-5.md asking why the objectives say unit tests are removed.
- [x] #3 Part 2 in assignments/assignment-5.md is headed 'Add The Automated Tests And The CI Checks', and the ToC, checklist, and course/decisions/a5.md links to its anchor resolve.
- [x] #4 The objectives say 'at least two implemented quality requirement tests' so the testability CI test and the one other requirement's test are counted as two QRT-nn, not three deliverables.
- [x] #5 course/syllabus.md, README.md, and the full example in requirements/weekly-report-requirements.md use 'automated tests' for the Week 5 test deliverable, while the lecture line keeps 'unit testing strategies'.
- [x] #6 No rule in requirements/repository-requirements.md or requirements/quality-requirements-requirements.md changes: test granularity stays the team's choice, and the testability QR still requires a clean-checkout CI suite with a test per critical module.
- [x] #7 course/plans/a5-plan.md uses 'automated tests'/'automated test suite' throughout, including its Part 2 label and its critical-module minimum.
- [x] #8 The A5-DEC-001 and A5-DEC-033 summaries in course/decisions/a5.md use 'automated tests' instead of 'unit tests', with their reasoning unchanged.
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
1. Replace the testability requirement's "unit tests"/"unit suite" wording with "automated tests"/"automated test suite" in `assignments/assignment-5.md`: the week intro, objectives, Part 2 title and ToC, What Good Looks Like, checklist, and coverage-table row.
2. Remove the two HTML review comments in the objectives.
3. Change the objectives to count "at least two implemented quality requirement tests", making the testability CI test and the other QRT distinct.
4. Update the Part 2 anchor in the ToC, the three checklist links, and the three `course/decisions/a5.md` links.
5. Apply the same vocabulary to `course/syllabus.md` (objectives, deliverable, catalogue row), `README.md`, and the weekly-report full example, leaving the lecture line's "unit testing strategies" as is.
6. Run `pnpm run format:markdown`, then the check, test, and link gates, inspect the diff, and close the task.

7. Align the maintainer-facing `course/plans/a5-plan.md` on "automated tests"/"automated test suite", including its Part 2 label and the critical-module minimum.
8. Align the `A5-DEC-001` and `A5-DEC-033` summaries in `course/decisions/a5.md`, leaving their reasoning unchanged, then rerun the gates and close the task.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Aligned the Week 5 test vocabulary across the student-facing and maintainer-facing materials.

Student-facing: `assignments/assignment-5.md`, `course/syllabus.md`, `README.md`, and the weekly-report example now say "automated tests"/"the test suite"; Part 2 is renamed with its anchors updated; the objectives count two implemented quality requirement tests; the two review comments are removed. The syllabus lecture line keeps "unit testing strategies", because the lecture does teach unit testing.

Maintainer-facing: `course/plans/a5-plan.md` now uses "automated tests"/"automated test suite" throughout, including its Part 2 label and its critical-module minimum; `A5-DEC-001` and `A5-DEC-033` in `course/decisions/a5.md` now say "automated tests", with their `**Why:**` and `**Alternatives considered:**` text unchanged. The three `A5-DEC` links to Assignment 5 Part 2 use the new anchor.

No rule changed in `repository-requirements.md` or `quality-requirements-requirements.md`: the testability QR still requires a clean-checkout CI suite with at least one test per critical module, and test granularity remains the team's choice.

Validation (rerun after the maintainer edits):
- `pnpm run format:markdown` reformatted `course/plans/a5-plan.md` after its table width changed; `pnpm run format:markdown:check` passes.
- `pnpm run lint:markdown` passes.
- `pnpm run test:markdown-format` and `pnpm run test:markdown-rules` pass.
- `pnpm run check:lectures` passes: 5 decks match their sources with Typst 0.15.1.
- `pnpm run check:links` passes: 2480 total, 2478 OK, 0 errors, 2 excluded, 1 redirect.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Aligned Week 5's test wording with the owning rules across student-facing and maintainer-facing materials. The testability quality requirement's CI check is now called "automated tests"/"the test suite", not "unit tests", in `assignments/assignment-5.md`, `course/syllabus.md`, `README.md`, the weekly-report example, `course/plans/a5-plan.md`, and the `A5-DEC-001` and `A5-DEC-033` summaries; the plan's Part 2 label and critical-module minimum match the assignment. Part 2's heading and anchor, the objectives' two implemented quality requirement tests, and the removed review comments complete the change. No requirement rule changed, and the lecture's "unit testing strategies" line is untouched. Validation: formatting, lint, both Markdown plugin suites, the lecture deck check, and the link check all pass.
<!-- SECTION:FINAL_SUMMARY:END -->
