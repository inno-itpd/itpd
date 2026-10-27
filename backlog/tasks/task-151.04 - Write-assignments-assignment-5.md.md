---
id: TASK-151.04
title: Write assignments/assignment-5.md
status: To Do
assignee: []
created_date: '2026-10-27 08:44'
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
- [ ] #1 `assignments/assignment-5.md` follows `assignment-4.md`'s shape: the deadline header, intro, tooling line, ToC, `## Objectives`, Parts 1 to 12 in the plan's order, `## What Good Looks Like`, `## Assignment Report In The Repository`, `## Assignment Report On Moodle` with `### Submission Procedure`, and `## Checklist`.
- [ ] #2 The header carries the hard deadline Saturday 31 October 2026 at 23:59 with no soft deadline, and the assignment designs no pitch deck and no Week 5 Moodle deck item.
- [ ] #3 Each part links the requirement sections that own its rules and adds only the week's paths, numbers, and minima; no rule is restated and the assignment's minima are marked as this week's.
- [ ] #4 The minima are present: at least two plan milestones due in `SPRINT-05` through `SPRINT-09` in total with only the shortfall added and the two in different sprints; at least two new `US-nn` with one scheduled in `SPRINT-05` and one refined for `SPRINT-06`.
- [ ] #5 The minima are present: a test on every active High business-importance `QR-nn`; the testability `CI` test plus one other test at `CI`, `scripted`, or `deployed` with the `High`-QR and next-active-row fallback; at least two milestones and two stories; the codebase design exercise; `REL-05`.
- [ ] #6 The coverage table carries the Week 5 rows the plan lists, the report's summary carries the deployment, the milestones, `REL-05`, the non-applicable CI checks, and what moved out of the sprint, and the deviations line names the VM, the `scripted`/`CI` fallback, the manual-only QR, and deferred rework cases.
- [ ] #7 The Moodle wrapper carries the project and team number, the member table, the permalink, the production and staging addresses as private-only with the university-network note, the recording link or its absence, the transcript when publication was refused, and the privacy line, and it carries no pitch deck; the checklist lets a student tick every part.
- [ ] #8 Every link in the assignment, including every heading anchor into `requirements/` and `guides/`, resolves, and the assignment does not link a component or sequence view or a feature index.
<!-- AC:END -->

## Definition of Done
<!-- DOD:BEGIN -->
- [ ] #1 All acceptance criteria are satisfied
- [ ] #2 Changed Markdown files are formatted: `pnpm run format:markdown`
- [ ] #3 `pnpm run lint:markdown` passes
- [ ] #4 `pnpm run test:markdown-format` and `pnpm run test:markdown-rules` pass
- [ ] #5 `pnpm run check:lectures` passes
- [ ] #6 `pnpm run check:links` passes
- [ ] #7 Implementation notes record the decisions made and the validation results
<!-- DOD:END -->
