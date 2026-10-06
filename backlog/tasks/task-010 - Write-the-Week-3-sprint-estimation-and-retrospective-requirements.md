---
id: TASK-010
title: 'Write the Week 3 sprint, estimation, and retrospective requirements'
status: To Do
assignee: []
created_date: '2026-10-02 07:07'
updated_date: '2026-10-06 12:26'
labels: []
dependencies: []
references:
  - backlog.md
  - tmp/itpd-2025/lectures/lecture-2.1.pdf
  - tmp/itpd-2025/assignments/assignment-3.md
modified_files:
  - requirements/process-requirements.md
  - requirements/artifact-requirements.md
  - course/syllabus.md
ordinal: 10000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
ITPD requires elements of Scrum, decided while planning TASK-009: a sprint is one course week from Week 3, sprint planning and grooming start there, estimation is required with no unit prescribed, and each sprint ends with `reports/week-NN/sprint-retrospective.md`.
No normative home exists yet: `backlog.md` records that estimation has no source material anywhere in the 2025 decks, `tmp/itpd-2025/lectures/lecture-2.1.pdf` is the only planning source and its agenda promises `Expectations` without delivering it, and the Week 3 assignment has not been written.
This task adds the process requirements and the artifact structures at the same time as that assignment.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [ ] #1 `process-requirements.md` gains a `**Since: W3**` section for sprint planning, grooming, estimation, and progress tracking, using the `Required`/`Recommended`/`Example` labels
- [ ] #2 `artifact-requirements.md` gains structures for `docs/work-plan.md`, `docs/threshold-of-success.md`, and `reports/week-NN/sprint-retrospective.md`, replacing the `## Later Weeks` placeholder
- [ ] #3 The estimation approach is decided and stated, or deliberately left to teams with the reason recorded; story points stay unprescribed unless that decision changes
- [ ] #4 The retrospective name and path are checked against `docs/reflection.md` (Week 9) and the Week 10 course retrospective, so no two artifacts share the word ambiguously
- [ ] #5 `course/syllabus.md` Week 3+ deliverables match the new requirements where the sprint design requires it
- [ ] #6 The Week 3 assignment cites these requirements per the authoring checklist in `AGENTS.md`
<!-- AC:END -->

## Definition of Done
<!-- DOD:BEGIN -->
- [ ] #1 All acceptance criteria are satisfied
- [ ] #2 Changed Markdown files are formatted: `pnpm run format:markdown`
- [ ] #3 `pnpm run lint:markdown` passes
- [ ] #4 `pnpm run test:markdown-format` and `pnpm run test:markdown-rules` pass
- [ ] #5 `pnpm run check:lectures` passes
<!-- DOD:END -->

## Implementation Plan

<!-- SECTION:PLAN:BEGIN -->
1. Read `lectures/AGENTS.md`-adjacent material is not needed, but read `tmp/itpd-2025/lectures/lecture-2.1.pdf` and the `backlog.md` A3 list for the borrowables.
2. Decide the estimation approach, and leave the unit to teams unless the decision says otherwise.
3. Write the `process-requirements.md` section before the artifact structures, then add the three structures to `artifact-requirements.md` and update the `docs/` destination map.
4. Adjust `course/syllabus.md` Week 3+ deliverables.
5. Write the Week 3 assignment last and run the four Markdown gates.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Borrowables for the planning material, from `backlog.md` A3 and `lecture-2.1.pdf`: strategic versus tactical planning, `Define success` as step one of strategic planning, the roadmap zoom level, `point of no return` for contingency plans, and the warning that 80% of the pain comes from skipping `Define success`.

New for Week 3 with no source material: the tactical questions belong in `CONTRIBUTING.md`, the changelog is compiled from pull requests rather than commits, and the first SemVer tags begin.

C4 continues from the Week 2 context diagram into Week 4 with containers and components; the W2 deck says so on its vocabulary slide.

The retrospective path `reports/week-NN/sprint-retrospective.md` is registered by TASK-009 as a placeholder in `artifact-requirements.md` `## Later Weeks`; this task replaces that placeholder with the real structure.

This task is the follow-up for the estimation gap recorded in `backlog.md`: estimation has no source material anywhere in the 2025 decks and must be written from scratch, and it is the part students will push back on hardest.

Refine the `**Since: W3**` section `## Showing Working Software` in `requirements/customer-meetings-requirements.md` together with the Week 3 assignment. It carried a `TODO refine` comment in the student-facing source, which TASK-057 moved here.

2026-10-06: decided in TASK-083 and TASK-084. In Week 3 meetings, a story closes as completed only on the customer's accepting verdict. Every meeting report after the kickoff closes earlier action points and open questions. The Week 3 assignment should cite both rules rather than restate them.
<!-- SECTION:NOTES:END -->
