---
id: TASK-167
title: Apply the second Assignment 7 sub-task review
status: Done
assignee:
  - dsh
created_date: '2026-11-11 20:46'
updated_date: '2026-11-11 21:24'
labels: []
dependencies: []
references:
  - assignments/assignment-7.md
  - guides/usability-testing.md
  - requirements/quality-requirements-requirements.md
  - requirements/usability-testing-requirements.md
  - course/decisions/a7.md
  - course/plans/a7-plan.md
modified_files:
  - assignments/assignment-7.md
  - guides/usability-testing.md
  - requirements/quality-requirements-requirements.md
  - course/decisions/a7.md
  - course/plans/a7-plan.md
ordinal: 153000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Second review of `assignments/assignment-7.md`, made before the Week 7 deadline (Saturday 14 November 2026, 23:59). The numbered sub-tasks under the parts contain five oddities and three wording slips, and the maintainer has settled how each is resolved. Those resolutions are decisions, not options: do not re-litigate them, and keep the assignment a delta against `requirements/` rather than copying rule text into it.

Findings and settled resolutions:

1. Part 9 item 1 says "carry out each action due by Week 7, including one still open from Week 6". It is vacuous, because every Week 6 action not yet done is still open from Week 6, and it reads as a floor that one action must be left open. The resolution is that the step covers every action due by Week 7 and any carried from an earlier report, and drops the "one still open" clause.

2. Part 14 items 5 and 7 are notes rather than work. Item 5 says "Name the rules the results submission completes" without naming an artifact; item 7 says `TOS-03` in the planning full example is only an example and no penalty applies. The resolution is that item 5 becomes a rules bullet in Part 14 pointing at the three results requirements, and item 7 becomes a "What Good Looks Like" bullet saying a usability goal in the threshold is optional and the required check is the `QR/QRT`; the numbered steps are renumbered after both leave.

3. Part 8 item 2 asks for three risks (recruitment, consent, schedule) while item 3 gives four fallbacks; the inaccessible private repository or recordings folder fallback has no risk to carry it. The resolution is a fourth risk, the data-access risk, so each fallback is one `RISK-nn`'s `**Contingency:**`. That is an addition, so `A7-DEC-024` keeps its entry and the new entry records the fourth risk.

4. Part 2 item 5 writes the record's session plan, roles, and analysis plan that Part 6 item 5 and Part 7 item 1 write again, and Part 2 item 7 and Part 7 item 2 both create `results.md`. The resolution is that Part 2 opens the record's sections in the order the record rule gives and leaves stubs; the participant profile and environment are written in Part 6, the tasks, protocol, measures, and roles in Part 3, the schedule in Part 6, and the analysis plan in Part 7. `results.md` is created once, in Part 2, and Part 7 supplies its headings.

5. Part 7 item 1 assumes the QR reads the main-task SEQ, while Part 5 items 3-4 offer completion and assistance, time on task, SEQ, or SUS and a team-chosen measure. The resolution: the usability QR's `Response` is the participant's SEQ rating on the main task, and its `Response Measure` is the median main-task SEQ against a bar the team sets before the first session; the example bar is at least five of seven, and the team may set another bar. The completion, the assistance, the time on task, and the SUS stay analysis results and are not the requirement's measure. This changes a decision, so it needs a new `A7-DEC` entry that reverses `A7-DEC-025` in part, and it must land in the assignment, the guide, and the `QR-05` full example.

6. Smaller wording: the record's third role keeps "the recordings and the raw notes" rather than "the private repository"; Part 6 item 3 is a consent readiness check, not a second consent deliverable; Part 1 item 5 plans `REL-08` and the `QR/QRT` verdict into `SPRINT-08` rather than "scheduling" them as issues.

The change touches `assignments/assignment-7.md`, `guides/usability-testing.md`, `requirements/quality-requirements-requirements.md`, `course/decisions/a7.md`, and `course/plans/a7-plan.md`. It does not change the rules in `requirements/usability-testing-requirements.md`: its Instruments rule already says the usability quality requirement reads the main task's median SEQ, so the assignment and the guide must match that rule.

Constraints: keep the Markdown house style (one sentence per line, no new HTML), keep every existing link and anchor valid, and do not touch student-repository paths (`docs/` or `reports/` do not exist here). The working tree may carry the maintainer's unrelated changes, such as a modified `TODO.md`; leave them alone. Follow `course/decisions/a7.md`'s own format and reversal pattern: the new entry states the surviving clauses, and the reversed entry's `**Status:**` links the new one.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 `assignments/assignment-7.md` Part 9 item 1 requires every action due by Week 7 and any carried from an earlier report, and no longer refers to one still open from Week 6
- [x] #2 Part 14 numbered steps contain only work: the results-rules pointer is a rules bullet, the optional `TOS-03` goal is in What Good Looks Like, and the remaining steps are renumbered
- [x] #3 Part 8 names four risks, including the data-access risk, and its four fallbacks map one to one to them
- [x] #4 Part 2 opens the record sections as stubs; the participant profile, tasks, protocol, measures, roles, schedule, environment, and analysis plan each have one named owner in Parts 3, 6, or 7, and `results.md` is created once
- [x] #5 Parts 5 and 7 read the QR against the median main-task SEQ and a team-chosen bar; the completion, assistance, time, and SUS are analysis results, and the four-way measure choice is gone
- [x] #6 The three smaller fixes are in: the third role keeps the recordings and the raw notes, Part 6 item 3 is a consent readiness check, and Part 1 item 5 plans `REL-08` and the verdict into `SPRINT-08`
- [x] #7 `guides/usability-testing.md` Step 8 and the `QR-05` example in `requirements/quality-requirements-requirements.md` state the same SEQ measure and team-chosen bar as the assignment
- [x] #8 `course/decisions/a7.md` has `A7-DEC-027` reversing `A7-DEC-025` in part and `A7-DEC-028` adding the data-access risk; `A7-DEC-025` is marked `Reversed by [A7-DEC-027]`
- [x] #9 `course/plans/a7-plan.md` is in step with the SEQ measure, the fourth risk, the Part 2 ownership, and the Part 9 wording
- [x] #10 The Markdown format check, the Markdown lint, the two plugin fixtures, the lecture check, and the link check pass, and the implementation notes record the decisions and the validation results
- [x] #11 The assignment What Good Looks Like bullet states the main-task SEQ measure and the team-chosen bar
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
1. Patch `assignments/assignment-7.md`: Part 1 item 5 plans `REL-08` and the `QR/QRT` verdict into `SPRINT-08`; Part 2 opens every record section as a stub and creates `results.md` once; Part 3 gains explicit `## The Tasks`, `## Measures`, `## Protocol`, and `## Roles` steps; Part 5 makes the `Response` the participant's SEQ rating and the `Response Measure` the median main-task SEQ against a team-set bar; Part 6 gains the participant profile and environment steps, keeps the consent check as a readiness check, and keeps the schedule; Part 7 reads the median main-task SEQ against the bar, supplies `results.md` headings, and finishes the evidence map; Part 8 adds the data-access risk and maps each fallback to its risk; Part 9 covers every action due by Week 7 and any carried from an earlier report; Part 14 moves the results-rules pointer to the rules and the `TOS-03` note to What Good Looks Like, renumbers the steps, and updates the quality-requirement What Good Looks Like bullet. 2. Patch `guides/usability-testing.md` Step 8 to the SEQ response, median SEQ measure, and team-set bar. 3. Rewrite the `QR-05` full example in `requirements/quality-requirements-requirements.md` (title, outcome, Response, Response Measure, QRT first line, procedure, pass criterion, index row, rationale) to the SEQ measure. 4. Add `A7-DEC-027` (reverses `A7-DEC-025` in part and restates the surviving clauses) and `A7-DEC-028` (the data-access risk) to `course/decisions/a7.md`, and mark `A7-DEC-025` reversed. 5. Bring `course/plans/a7-plan.md` in step everywhere it states the old four-way measure, the three risks, the Part 2/3/6/7 ownership, or the Part 9 wording, and add the two new decisions to its entry list. 6. Format and run the Markdown format check, lint, both plugin fixtures, the lecture check, and the link check; then record the notes and check the acceptance criteria.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Started the second Assignment 7 sub-task review. Read the task, the assignment, the guide, both requirements files, `course/decisions/a7.md`, and `course/plans/a7-plan.md`. Four implementation choices were put to the maintainer: the QR-05 example is rewritten fully to the SEQ measure, Part 2 keeps the consent/data and evidence maps (with Part 7 finishing the evidence map), Parts 3 and 6 get explicit record-section steps, and the A7 plan is updated throughout. All four were confirmed.

Applied the second Assignment 7 sub-task review in the five intended files, with no student-repository path touched and `TODO.md` left as the maintainer's own change.

The QR measure is now the participant's SEQ rating on the main task, and the `Response Measure` is the median main-task SEQ against a bar the team sets before the first session, with the example bar at least five of seven. The completion, the assistance, the time, and the SUS stay analysis results. This lands in Part 5, Part 7, the guide's Step 8, the `QR-05` full example (retitled `Find The Main Task Easy On First Use`, with its outcome, `Response`, `Response Measure`, `QRT-01` first line, `Why Manual`, procedure, pass criterion, and index row rewritten), and `A7-DEC-027`, which reverses `A7-DEC-025` in part and restates the surviving clauses. `A7-DEC-025` is marked reversed.

The second decision change is `A7-DEC-028`, the data-access risk: Part 8 now names the recruitment, consent, data-access, and schedule risks, and the four fallbacks are each the matching risk's `**Contingency:**`. `A7-DEC-024` keeps its three risks.

The record ownership is now single: Part 2 opens the record's sections as stubs and creates `results.md` once, Part 3 writes the tasks, measures, protocol, and roles, Part 6 writes the participant profile, schedule, and environment, Part 7 writes the analysis plan, supplies `results.md`'s headings, and finishes the evidence map, and Part 2 writes the consent/data and evidence maps. Part 14's results pointer is a rules bullet, the optional `TOS-03` goal is a What Good Looks Like bullet, and the steps are renumbered. Part 9 item 1 covers every action due by Week 7 and any carried from an earlier report; Part 1 item 5 plans `REL-08` and the verdict into `SPRINT-08`; Part 3's third role keeps the recordings and the raw notes; Part 6's consent item is a readiness check. The assignment's Objectives, What Good Looks Like, and checklist carry the same SEQ measure, and the A7 plan is updated in step.

Validation: `pnpm run format:markdown` and `pnpm run format:markdown:check` pass; `pnpm run lint:markdown` passes; `pnpm run test:markdown-format` and `pnpm run test:markdown-rules` pass (34 tests each); `pnpm run check:lectures` passes (7 decks against Typst 0.15.1); `pnpm run check:links` passes (3616 total, 3614 OK, 2 excluded, 0 errors, 3 redirects). One intermediate link run hit a transient TLS handshake failure on `https://forms.google.com/` in the unchanged `course/tooling.md`; the retry passed with 0 errors.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Applied the second Assignment 7 sub-task review across `assignments/assignment-7.md`, `guides/usability-testing.md`, `requirements/quality-requirements-requirements.md`, `course/decisions/a7.md`, and `course/plans/a7-plan.md`. The usability QR now reads the participant's SEQ rating on the main task against a team-set median-main-task-SEQ bar, with completion, assistance, time, and SUS left as analysis results; Part 8 adds the data-access risk so all four fallbacks are risks' contingencies; Part 2 only stubs the record and Parts 3, 6, and 7 own its sections; Part 14's notes became a rules bullet and a What Good Looks Like bullet; Part 9, Part 1, the third role, and the consent item are corrected. Added `A7-DEC-027` and `A7-DEC-028`, marked `A7-DEC-025` reversed by `A7-DEC-027`, rewrote the `QR-05` example to the SEQ measure, and brought the A7 plan in step. Validation: the Markdown format and format check, the lint, both plugin fixtures, the lecture check, and the link check pass; the link check's one transient `forms.google.com` TLS failure passed on retry with 0 errors.
<!-- SECTION:FINAL_SUMMARY:END -->
