---
id: TASK-183.03
title: Simplify the Week 10 release and handoff instructions
status: Done
assignee:
  - '@codex'
created_date: '2026-11-26 16:10'
updated_date: '2026-11-26 16:13'
labels: []
dependencies: []
documentation:
  - assignments/assignment-10.md
  - requirements/releases-requirements.md
  - requirements/user-acceptance-tests-requirements.md
  - guides/final-sprints.md
  - >-
    course/decisions/a9.md#a9-dec-025-submission-10-records-the-handoff-outcome-and-verifies-the-final-commit
modified_files:
  - assignments/assignment-10.md
  - guides/final-sprints.md
  - requirements/releases-requirements.md
  - requirements/user-acceptance-tests-requirements.md
  - requirements/planning-requirements.md
  - requirements/repository-requirements.md
  - course/decisions/a9.md
  - course/plans/a9-plan.md
parent_task_id: TASK-183
type: docs
ordinal: 171000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Assignment 10, the requirements, and the final-sprints guide repeat the handoff procedure. The release rules also prescribe an order for steps that can vary by team. Students need a short set of deliverables and enough evidence to show that the customer reviewed the released MVP.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 Assignment 10 tells students to publish and deploy REL-10 before the handoff, walk through handoff.md with the customer, and rerun the three active UATs on the deployed release. It links to the UAT rules for fallbacks.
- [x] #2 The release requirements specify what must be ready at the handoff, including the published release, protected tag, working changelog links, and matching deployment. The guide presents a valid sequence as an example, and the decision record reflects the change.
- [x] #3 The UAT requirements own the Week 10 access and availability fallbacks. A teammate can run the deployed tests live for the customer to judge. Teams reschedule within the review window when feasible if the release is unavailable and record any unrun checks or missed handoff through the existing evidence rules.
- [x] #4 The final evidence still identifies the tested tag and commit, actual runners and results, and the customer handoff decision.
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
1. Make Assignment 10 point to the handoff and UAT requirements for preparation, fallbacks and meeting evidence. Keep the release and review outcomes visible.
2. State the Week 10 release requirements as conditions due by handoff. Put one working sequence in the guide and update the planning and repository references and decision history to match.
3. Clarify the UAT fallback paths for customer access, release availability and a missed review. Check the four criteria and run the Markdown, lecture and link gates.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Checked the documented paths for a normal handoff, customer access failure, release unavailability with and without time to reschedule, and a held review with an unrun test. The rules identify the released build, preserve runner and result evidence, and keep the customer verdict separate. A9-DEC-026 revises the prescribed release sequence and records the flexibility in the changelog link target. Markdown format and lint passed, both fixture suites passed (68 tests), all nine lecture decks matched, and the full link check reported 4648 OK and zero errors. Git diff whitespace checks passed.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Assignment 10 now states the handoff outcomes and links to the UAT fallbacks. The release requirements specify readiness by the handoff, and the guide shows one valid release workflow. Markdown checks, fixtures, lecture comparison and the full link check passed.
<!-- SECTION:FINAL_SUMMARY:END -->
