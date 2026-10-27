---
id: TASK-151.04
title: Write assignments/assignment-5.md
status: Done
assignee: []
created_date: '2026-10-27 08:44'
updated_date: '2026-10-27 11:14'
labels: []
dependencies:
  - TASK-151.01
  - TASK-151.02
  - TASK-151.03
references:
  - course/plans/a5-plan.md
  - assignments/assignment-4.md
  - requirements/quality-requirements-requirements.md
  - requirements/planning-requirements.md
  - requirements/repository-requirements.md
documentation:
  - course/plans/a5-plan.md
  - assignments/assignment-4.md
modified_files:
  - assignments/assignment-5.md
parent_task_id: TASK-151
priority: high
ordinal: 134000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Write `assignments/assignment-5.md`, per `course/plans/a5-plan.md`'s `## The Parts Assignment 5 Carries` and the week's rules landed in TASK-151.01 to TASK-151.03.

Use `assignments/assignment-4.md` as the shape and voice: the hard-deadline header with no soft deadline, an intro that says what Week 4 left and what Week 5 adds, the tooling line, a ToC, `## Objectives`, numbered `## Part N:` sections in the order the work succeeds, `## What Good Looks Like`, the repository report with its coverage table, the Moodle wrapper, `### Submission Procedure`, and `## Checklist`.

The parts and their content, from the plan:
1. Plan the sprint, define the milestones, and add the stories: `SPRINT-05`'s goal, `**Due:** 2026-10-31`, `**Sprint Backlog:**`, `**Planned Velocity:**`; at least two plan milestones due in `SPRINT-05` through `SPRINT-09` in total, counting an existing one and adding only the shortfall, two due in different sprints, a run of one or two sprints, each with `**Due:**`, `**Sprints:**`, `**Advances:**`, and a description; at least two new `US-nn` in the Week 4 shape, at least one scheduled in `SPRINT-05` and one refined for `SPRINT-06` with no milestone.
2. Add the unit tests and the CI checks: `actionlint`, every applicable check among linting, formatting, type checking, build, and automated tests on pull requests and `main`, pinned actions, the checks that do not apply stated with their reason, the unit suite covering the testability requirement's critical modules, the Definition of Done's pull request list updated, the latest `main` green, no deployment job.
3. Deploy to the VM and document the environments: `docs/deployment.md` distinct from `docs/setup.md`, the four environments, the VM from the portal, SSH from a campus machine, the configuration, staging and production, the deploy and verification steps, the rollback, placeholders instead of addresses, the release candidate deployed to staging and production when the VM is available, and the core task verified from campus.
4. Write the quality requirement tests: a `QRT-nn` inside every active High business-importance QR's file with its first line, `**Status:**`, `**Level:**`, `**Runs at:**`, `**Why Manual:**` when manual, the procedure, and `**Pass when:**`; every High requirement at `CI`, `scripted`, or `deployed`, or the documented manual exception with its declared deviation; the testability `CI` test and one other active QR's test at `CI`, `scripted`, or `deployed`, preferring `deployed` when staging is available; a manual test does not satisfy the other test; the other test is on a High business-importance QR other than testability when the matrix has one, and on the next active row with a declared deviation when it does not.
5. Run the tests and record the testing plan: the rows, their result, last check, planned sprint, and the evidence the level requires; the testability `CI` row and the other implemented test `Passes` with `Checked: SPRINT-05`; the index links the plan once; a row that is not `Passes` keeps its result.
6. Answer the codebase design exercise: where features are documented for users and developers, why there, how the documentation connects to stories, `FR-nnn` files, `ADR-nnn` records, and the glossary, how it is updated, and the element-naming scheme for an agent fixing one thing on one screen.
7. Carry out the Week 4 action points and open questions.
8. Validate with the customer: the Sprint Review on the production deployment reached from the university network, the testing plan's rows and the other implemented test shown at its level, the script, the report, the transcript when there is one, the story verdicts as `DEC-nnn`, and action points due in Week 6.
9. Redeploy and retest after same-week rework; defer to `SPRINT-06` when it cannot finish, keeping the reviewed commit as the release commit.
10. Cut `REL-05`: the tag on the final production commit, the changelog's `[0.5.0]` section, the release body with the tests checked in `SPRINT-05` and the claimed `QR-nn`s, the plan's `REL-05` line, and the sprint milestone closed after rescheduling; re-check any test last checked in an earlier sprint before claiming it.
11. Close the sprint and hold the retrospective: `**Actual Velocity:**` and `reports/week-05/sprint-retrospective.md`.
12. Report on AI usage: `reports/week-05/ai-usage.md`.

The plan's `### What Good Looks Like` gives the ten bullets; the coverage table rows and the Moodle wrapper contents are in its final paragraphs. The week has no pitch deck, and the in-class presentation is Week 7's, so the assignment designs no deck item.

Follow the repository conventions: one sentence per line, Title Case headings, links to the owning requirement section and, where a guide exists, to its step.

When done, record implementation notes and set the task to Done.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 `assignments/assignment-5.md` follows `assignment-4.md`'s shape: the deadline header, intro, tooling line, ToC, `## Objectives`, Parts 1 to 12 in the plan's order, `## What Good Looks Like`, `## Assignment Report In The Repository`, `## Assignment Report On Moodle` with `### Submission Procedure`, and `## Checklist`.
- [x] #2 The header carries the hard deadline Saturday 31 October 2026 at 23:59 with no soft deadline, and the assignment designs no pitch deck and no Week 5 Moodle deck item.
- [x] #3 Each part links the requirement sections that own its rules and adds only the week's paths, numbers, and minima; no rule is restated and the assignment's minima are marked as this week's.
- [x] #4 The minima are present: at least two plan milestones due in `SPRINT-05` through `SPRINT-09` in total with only the shortfall added and the two in different sprints; at least two new `US-nn` with one scheduled in `SPRINT-05` and one refined for `SPRINT-06`.
- [x] #5 The minima are present: a test on every active High business-importance `QR-nn`; the testability `CI` test plus one other test at `CI`, `scripted`, or `deployed` with the `High`-QR and next-active-row fallback; at least two milestones and two stories; the codebase design exercise; `REL-05`.
- [x] #6 The coverage table carries the Week 5 rows the plan lists, the report's summary carries the deployment, the milestones, `REL-05`, the non-applicable CI checks, and what moved out of the sprint, and the deviations line names the VM, the `scripted`/`CI` fallback, the manual-only QR, and deferred rework cases.
- [x] #7 The Moodle wrapper carries the project and team number, the member table, the permalink, the production and staging addresses as private-only with the university-network note, the recording link or its absence, the transcript when publication was refused, and the privacy line, and it carries no pitch deck; the checklist lets a student tick every part.
- [x] #8 Every link in the assignment, including every heading anchor into `requirements/` and `guides/`, resolves, and the assignment does not link a component or sequence view or a feature index.
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
Research done:
- `course/plans/a5-plan.md`: `## The Parts Assignment 5 Carries` (parts 1-12 and their minima), `### What Good Looks Like`, the report/coverage/Moodle paragraphs, and `A5-DEC-033`'s part order.
- `assignments/assignment-4.md`: the shape and voice (deadline header, intro, tooling line, ToC, Objectives, numbered Parts, What Good Looks Like, repository report, Moodle wrapper, Submission Procedure, Checklist).
- The Week 5 rules landed in TASK-151.01 to TASK-151.03: `quality-requirements-requirements.md#quality-requirement-tests`, `planning-requirements.md#quality-requirement-testing-plan`, `repository-requirements.md#continuous-integration`/`#environments-and-deployment`, `releases-requirements.md#cutting-a-release` rule 4, `weekly-report-requirements.md` rule 15, `visibility-requirements.md`, `definition-of-done-requirements.md#the-pull-request`, `customer-meetings-requirements.md#showing-working-software` rule 4.
- The three new/edited guides: `guides/quality-requirement-tests.md`, `guides/deployment-and-environments.md`, `guides/quality-and-architecture.md#step-8-document-the-features`, `guides/planning-and-tracking.md` milestone/retrospective steps.

Plan:
1. Write `assignments/assignment-5.md` in `assignment-4.md`'s shape: hard deadline Saturday 31 October 2026 at 23:59 with no soft deadline; intro (Week 4 left the requirements/architecture, Week 5 adds tests, deployment, milestones, stories, codebase design, REL-05); tooling line; ToC; Objectives; Parts 1-12 in `A5-DEC-033`'s order, each with a short "The rules:" link list and a "This week:" minima/action list; What Good Looks Like (the plan's eleven bullets); repository report; Moodle wrapper; Submission Procedure; checklist.
2. Carry the plan's minima: two plan milestones due in SPRINT-05 through SPRINT-09 in total, counting an existing one and adding only the shortfall, in different sprints; two new `US-nn` with one scheduled in `SPRINT-05` and one refined for `SPRINT-06`; a `QRT-nn` for every active High business-importance QR; the testability `CI` test plus one other test at `CI`, `scripted`, or `deployed` with the High-QR and next-active-row fallback; the codebase design exercise; `REL-05`.
3. Coverage table rows: sprint plan and milestones, new stories, QRTs, testing plan, unit tests and CI, deployment, codebase design exercise, Week 4 action points, Week 4 open questions, meeting script, meeting transcript, customer validation, `REL-05`, retrospective, AI usage. Summary carries the deployment, milestones, `REL-05`, non-applicable CI checks, testing-plan pointer, and what moved out; deviations name the VM, the `scripted`/`CI` fallback, the manual-only QR, and deferred rework. Moodle wrapper carries the addresses as private-only and no deck.
4. Validate: every internal link and heading anchor resolves; no component/sequence view, feature index, or deck item appears; run `pnpm run format:markdown`, `format:markdown:check`, `lint:markdown`, `test:markdown-format`, `test:markdown-rules`, `check:lectures`, and `check:links`.
5. Record implementation notes, check the acceptance criteria with evidence, and set the task Done.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Wrote `assignments/assignment-5.md` (423 lines) in `assignment-4.md`'s shape: deadline header, Week 4 → Week 5 intro, tooling line, ToC, Objectives, Parts 1-12 in `A5-DEC-033`'s order, What Good Looks Like with the plan's 11 bullets, repository report with a 15-row coverage table, a 7-item Moodle wrapper, `### Submission Procedure`, and a checklist that ticks every part.

Decisions: the title says `The Week 5 Release` because `REL-05` carries no ordinal per `A5-DEC-031`; the assignment mentions no pitch deck at all and the Moodle wrapper has no deck item; it links no component or sequence view and no feature-index path, per `A5-DEC-009` and `A5-DEC-021`; the codebase design answer has no fixed path and the coverage row says "the place where you document features".

The minima are carried as this week's: two plan milestones due in `SPRINT-05` through `SPRINT-09` in total with only the shortfall added and the two in different sprints; two new `US-nn` with one scheduled in `SPRINT-05` and one refined for `SPRINT-06`; a `QRT-nn` on every active High business-importance requirement; the testability `CI` test plus one other test at `CI`, `scripted`, or `deployed` with the High-QR/next-active-row fallback; `REL-05`.

The report's summary carries the deployment, the milestones, `REL-05` and its tag, the non-applicable CI checks, the testing-plan pointer for rows that are not `Passes`, and what moved out of the sprint; `## Deviations` names the missing VM, the `scripted`/`CI` fallback, the manual-only `QR-nn`, the next-active-row case, and rework deferred to `SPRINT-06`. The Moodle wrapper carries the production and staging addresses as private-only with the university-network note.

Validation: `pnpm run format:markdown`, `format:markdown:check`, `lint:markdown`, `test:markdown-format` (34 tests), `test:markdown-rules` (34 tests), `check:lectures` (5 decks), and `check:links` passed (2292 links, 0 errors, exit 0 on the second run; the first run recorded four timeouts on the unreachable external host `iso25000.com` in three files this change does not touch, the same environment state TASK-151.02 recorded).

A per-file `lychee --include-fragments assignments/assignment-5.md` resolved all 163 links with 0 errors, and a script audit confirmed every ToC anchor has a heading, Parts 1-12 and every required section exist, and the file contains no deck, component or sequence view, feature index, `docs/features.md`, or `FEAT-nn` reference.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Added `assignments/assignment-5.md`, the Week 5 assignment, per `course/plans/a5-plan.md` and the rules landed in TASK-151.01 to TASK-151.03.

What it contains:
- The hard-deadline header (Saturday 31 October 2026, 23:59, no soft deadline), the Week 4 → Week 5 intro, the tooling line, a ToC, `## Objectives`, Parts 1-12 in `A5-DEC-033`'s work order, `## What Good Looks Like`, the repository report with its coverage table, the Moodle wrapper with `### Submission Procedure`, and a checklist.
- Part 1: `SPRINT-05`'s planning (`**Due:** 2026-10-31`, `**Sprint Backlog:**`, `**Planned Velocity:**`), the at-least-two plan-milestone minimum due in `SPRINT-05` through `SPRINT-09` in total with only the shortfall added and the two in different sprints, and two new `US-nn` with one scheduled and one refined for `SPRINT-06`.
- Part 2: `actionlint` and the applicable product-code CI checks, pinned, on pull requests and `main`, with the not-applicable checks recorded, the critical-module unit tests, the Definition of Done item, and no deployment job.
- Part 3: the university VM and the four environments, `docs/deployment.md` distinct from `docs/setup.md`, the manual deploy from campus, the verification and rollback, and the addresses kept private-only.
- Part 4: a `QRT-nn` on every active High business-importance requirement, the testability `CI` test plus one other test at `CI`, `scripted`, or `deployed`, with the High-QR/next-active-row fallback, the manual exception, and the staging fallback.
- Parts 5-12: the testing plan's rows and evidence, the codebase design exercise, the Week 4 action points and open questions, the Sprint Review on the deployed product, same-week rework and redeploy, `REL-05` and its verified-quality claim, the retrospective, and the AI usage report.

Scope decisions: the title says `The Week 5 Release` because `REL-05` carries no ordinal (`A5-DEC-031`); no pitch deck, no component or sequence view, and no feature-index path appear (`A5-DEC-009`, `A5-DEC-021`); the codebase design answer has no fixed path.

Validation: `format:markdown`, `format:markdown:check`, `lint:markdown`, `test:markdown-format` (34), `test:markdown-rules` (34), `check:lectures` (5 decks), and `check:links` (2292 links, 0 errors, exit 0) all pass; per-file lychee resolved all 163 links and fragments. No follow-ups identified; `course/decisions/a5.md`, the syllabus and routers, and the A5 gates remain in TASK-151.05 to TASK-151.07.
<!-- SECTION:FINAL_SUMMARY:END -->
