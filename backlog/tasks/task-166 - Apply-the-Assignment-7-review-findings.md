---
id: TASK-166
title: Apply the Assignment 7 review findings
status: Done
assignee: []
created_date: '2026-11-11 19:28'
updated_date: '2026-11-11 19:47'
labels: []
dependencies: []
ordinal: 152000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
A review of `assignments/assignment-7.md` against the Week 7 requirements, the A7 decisions, the usability-testing guide, and the A7 plan found gaps a student could follow into an invalid artifact: the session template omits the pre-test and post-test, the roles are not named by GitHub username, the risk entry omits `**Status:**`, the meeting agenda puts the open questions last, the release record omits tag protection and the testing-plan sentence, the retrospective omits the `Not done` re-listing, the report table omits the glossary and risk rows and treats the link-check exclusion and privacy line as deviations, the Moodle wrapper omits the transcript appendix, the QR measure reads as fixed then optional, the "edge cases" reference is dangling, the run sprint cannot represent sessions split across two sprints, and several instructions and checklist items are incomplete. The review also found stale lines in the guide, the weekly-report example, and the A7 plan, and an off-by-one appendix reference in Assignment 6. The maintainer chose team-chosen real QR measures, a split run-sprint representation, action points due after Week 7, a wrapper with the production address plus staging analytics and staging observability, and new A7 decision entries reversing A7-DEC-011 and A7-DEC-023.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 `assignments/assignment-7.md` carries the protocol, roles, risk, meeting, release, retrospective, report, wrapper, QR measure, edge-case, run-sprint, record-specification, scheduling, action-point, AI-usage, analysis-table, and checklist fixes
- [x] #2 `requirements/usability-testing-requirements.md` allows a split run sprint and requires the index to list both sprints
- [x] #3 `requirements/weekly-report-requirements.md` shows the link-check exclusion in prose, keeps `## Privacy` separate, and its coverage table carries the glossary, risk-register, and Week 6 open-questions rows
- [x] #4 `guides/usability-testing.md` has the corrected run-sprint rule, scheduling window, team-chosen measure, and retention source
- [x] #5 `course/decisions/a7.md` adds A7-DEC-025 and A7-DEC-026 and marks A7-DEC-011 and A7-DEC-023 reversed
- [x] #6 `course/plans/a7-plan.md` is brought in step with the assignment, the split run sprint, the team-chosen measure, and the wider wrapper scope
- [x] #7 `assignments/assignment-6.md` cites the transcript's item 7 in its appendix sentence
- [x] #8 The Markdown format and lint gates, the plugin fixtures, the lecture check, and the link check pass
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
1. Patch `assignments/assignment-7.md` in place across its parts and checklist: pre-test and open-ended post-test in the session template; roles by GitHub username; `**Status:** Open` first in each risk; agenda permission questions first and decisions/action-points read-back last; tag protection and the testing-plan sentence in the release record; `Not done` carried actions re-listed with `Carried: Yes`; SUS mean/median moved to the Week 8 analysis plan; report coverage rows for the glossary and risk register; the link-check exclusion kept in the `## Usability test` prose and out of `## Deviations`; a separate `## Privacy` line; transcript appendix exemption; team-chosen, real QR measure with the 3-unaided/median-5/7 example; four fallbacks spelled out in Part 8; split run-sprint representation; complete record spec with `**Dropped:**`, results-due date, seed, no real payment, and the three named sections; `REL-08`, `Responsible`, `Accountable`, and assignees in Part 1; "due by Week 7, including overdue" in Part 9; production/staging separation in Part 10; QR/QRT in the design-review rework; release-commit wording; action points due after Week 7 with same-week rework excluded; conditional AI note; per-participant outcomes and assistance; conditional docs-only release note; checklist additions. 2. Amend `requirements/usability-testing-requirements.md` for the split `**Run sprint:**` and the index listing both sprints. 3. Fix the `requirements/weekly-report-requirements.md` full example: exclusion out of `## Deviations`, privacy line with no participant identity, and glossary/risk/open-questions coverage rows. 4. Fix `guides/usability-testing.md`: run-sprint rule, scheduling wording, team-chosen measure, retention source. 5. Add A7-DEC-025 (team-chosen measure) and A7-DEC-026 (wrapper scope), mark A7-DEC-011 and A7-DEC-023 reversed, and restate their surviving clauses. 6. Update `course/plans/a7-plan.md` wherever the split, measure, wrapper, report example, or stale dates appear. 7. Fix `assignments/assignment-6.md`'s appendix reference. 8. Run the Markdown format check, lint, plugin fixtures, lecture check, and link check; record the results in the task and close it.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Applied the review's mechanical findings: the session template now carries the pre-test and the open-ended post-test, roles are by GitHub username, each risk starts `**Status:** Open`, the agenda opens with the permission questions and closes with the read-back, the release record protects the tag and closes `**Checked QRs:**` with the testing-plan sentence, a `Not done` carried action is re-listed with `Carried: Yes`, the SUS mean and median moved to the Week 8 analysis plan, the report gained the glossary and risk-register rows and a separate `## Privacy` line, the link-check exclusion stays in the `## Usability test` prose, the wrapper gained the transcript appendix, Part 1 names `REL-08` and the scheduling fields, Part 9 includes overdue actions, Part 10 separates the production instance from the record and staging, Part 11 includes the `QR/QRT` in the rework, the release commit wording is fixed, the per-participant table names outcomes and assistance, and the checklist covers the wrapper, `SPRINT-08`'s `**Due:**`, the recording, the transcript, and the credentials.

Maintainer decisions: the QR's `Response Measure` is now a real, countable criterion the team chooses and writes before the first session, with the three-unaided and median-five-of-seven example and an explicit 'not a target' sentence; a session split across `SPRINT-07` and `SPRINT-08` is represented by the sprint of the last counted session in the record and both run sprints in the index; Week 7 action points are due after Week 7 with at least one in Week 8, and a same-week rework is not an action point; the wrapper carries the production and staging addresses and the staging analytics and staging observability credentials, with the production telemetry left to the Week 6 wrapper; Part 8 spells out the four fallbacks; the weekly-report example keeps the exclusion in the `## Usability test` prose and out of `## Deviations`, adds the missing coverage rows, and states the privacy line once.

Recorded A7-DEC-025 and A7-DEC-026, marked A7-DEC-011 and A7-DEC-023 reversed, and corrected A7-DEC-017's release-commit wording. The requirements changed only where the split needed it: `usability-testing-requirements.md` for the `**Run sprint:**` field, the `Sprints` index cell, and the schedule's split statement, plus the `weekly-report-requirements.md` example. The guide and the A7 plan were brought in step, and `assignments/assignment-6.md` now cites item 7.

Validation: `pnpm run format:markdown` and `pnpm run format:markdown:check` pass; `pnpm run lint:markdown` passes; `pnpm run test:markdown-format` and `pnpm run test:markdown-rules` pass (34 tests each); `pnpm run check:lectures` passes (7 decks against Typst 0.15.1); `pnpm run check:links` passes (3605 total, 3603 OK, 2 excluded, 0 errors). One intermediate link run returned transient 403s from three `usertesting.com` URLs in the A7 plan; the retry passed, and the URLs are unchanged by this task.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Applied the Assignment 7 review across `assignments/assignment-7.md` and its supporting materials. The assignment now carries the pre-test and open-ended post-test, roles by GitHub username, `**Status:** Open` risks, the permission-first/read-back-last agenda, tag protection and the testing-plan sentence in `REL-07`, `Not done` carried-action re-listing, the SUS report in Week 8, the glossary and risk-register coverage rows, a separate `## Privacy` line, the transcript appendix, the four fallbacks, a split run-sprint representation, the complete record specification, `REL-08` and the scheduling fields, overdue Week 6 actions, the record/staging split at the review, `QR/QRT` rework, the release-commit wording, action points due after Week 7, the conditional AI note, the per-participant outcome and assistance columns, the conditional docs-only release note, and the expanded checklist. The usability requirements now define the run sprint as the last counted session's sprint and the index listing both; the weekly-report example keeps the link-check exclusion in prose and adds the missing coverage rows; the guide is in step; A7-DEC-025 and A7-DEC-026 reverse A7-DEC-011 and A7-DEC-023; the A7 plan and A6's appendix reference are corrected. Validation: the Markdown format check, lint, both plugin fixtures, the lecture check, and the link check all pass, with 3605 links checked and 0 errors. No follow-ups; the `usertesting.com` 403s were transient and passed on retry.
<!-- SECTION:FINAL_SUMMARY:END -->
