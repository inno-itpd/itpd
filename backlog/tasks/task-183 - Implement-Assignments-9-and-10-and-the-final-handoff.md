---
id: TASK-183
title: Implement Assignments 9 and 10 and the final handoff
status: In Progress
assignee: []
created_date: '2026-11-26 12:08'
updated_date: '2026-11-26 15:22'
labels: []
dependencies: []
references:
  - course/decisions/a9.md
documentation:
  - course/plans/a9-plan.md
type: docs
ordinal: 168000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Give teams two separately graded final sprints and start-to-finish instructions for customer acceptance, the handoff, and the final repository state.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 Assignments 9 and 10 and their routes cover the approved schedule, separate submissions, reviews, releases, and evidence.
- [x] #2 Requirements and examples cover both UAT sessions, the handoff, reports, reflection, freeze, and final repository state.
- [x] #3 The syllabus owns dates and points, the exam placeholder is blank, and scoped legacy corrections match the decision log.
- [ ] #4 The plan audits and repository gates pass.
<!-- AC:END -->

## Definition of Done
<!-- DOD:BEGIN -->
- [ ] #1 All acceptance criteria are satisfied
- [x] #2 Changed Markdown files are formatted: `pnpm run format:markdown`
- [x] #3 `pnpm run lint:markdown` passes
- [x] #4 `pnpm run test:markdown-format` and `pnpm run test:markdown-rules` pass
- [x] #5 `pnpm run check:lectures` passes
- [x] #6 `pnpm run check:links` passes
- [x] #7 Implementation notes record the decisions made and the validation results
<!-- DOD:END -->

## Implementation Plan

<!-- SECTION:PLAN:BEGIN -->
1. Update artifact requirements and examples for the two reviews, releases, reports, and handoff.
2. Write both assignment deltas and the method guide, then align the syllabus, routers, decision statuses, and scoped legacy references.
3. Audit the two-sprint model and run the Markdown, link, and lecture gates.

4. Audit the implemented final-sprint rules and examples against the plan, apply the revised open-issue instructions, and re-run the repository gates.

5. Align Assignments 9 and 10 with the navigation and evidence prompts in Assignment 8. Link each checklist to its part or submission section, point to the existing report and meeting requirements, and spell out the private wrapper evidence. Run the repository gates and verify the new anchors.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Implemented both final assignments, the final-sprints guide, the UAT record requirements, and cross-linked examples for the two reviews, releases, reports, handoff, reflection and private wrappers. The syllabus owns the schedule and points. The previously tracked exam page remains blank. TASK-182 holds the deferred historical prose.

The course model and cross-example audit checked the dates, grading total, initial and replacement UATs, run decisions, evidence boundaries and final paths. Markdown format and lint, both fixture suites (68 tests), the nine lecture decks and the network-enabled link check passed.

The documented Submission 10 cutoff matches the syllabus and assignment. The live Moodle cutoff could not be verified because no authenticated course administration connection was available. AC4 and the task remain open for that operational check.

Audited both final assignments against the plan. Aligned the release and milestone order, updated the missing-review instructions and corrected the UAT and threshold examples. Open issues keep their handoff links and have their milestone, assignees, Responsible and Accountable cleared. The Markdown checks, 68 fixture tests, nine lecture comparisons, network link check and cross-example audit passed.

Aligned both assignments with Assignment 8 through tables of contents, linked checklists, clearer report sections, meeting follow-up, and explicit Moodle evidence and deletion details. Markdown format and lint, 68 fixture tests, all nine lecture comparisons, and all local links and anchors passed. The full network link gate returned HTTP 503 for two existing GitHub example URLs in the Assignment 5 plan and TODO.md on both attempts.

Revised the handoff issue rows under A9-DEC-021. The handoff keeps a `Limitations` row and replaces the per-issue open-issues list with one link to the repository's Issues page; the assignment, guide, repository rule, weekly-report examples and plan note now agree. Markdown format and lint, both fixture suites and the changed anchors passed; the network link check again found only the existing GitHub 503s in `course/plans/a5-plan.md` and `TODO.md`.

Re-ran the full link check after the anchor rename: 4592 links resolved and no errors reported.

Applied the Assignment 9 review. The assignment now names the Week 9 UAT fallback, records each UAT run as its own decision, gives the UAT index and run-row fields, states the changelog-before-release-body order and the checked-QRs testing-plan sentence, makes the quality bar outcome-based, adds the REL-10 heading to the provisional Sprint 10 section, and makes the held-review and deadline-day deviation wording conditional. Markdown format and lint, both 34-test fixture suites, the nine-deck check and the 4,595-link check (0 errors) passed.

Scoped the final reviews' agenda: Assignments 9 and 10 now follow up on every due or carried earlier action point and open question but put only the ones the meeting must settle with the customer on the agenda. The meeting report still records an outcome for each, and the Meeting Script read-back is explicitly this meeting's decisions and action points. Markdown format and lint passed, and the offline link check resolved 4,598 links with 0 errors.
<!-- SECTION:NOTES:END -->
