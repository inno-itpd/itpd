---
id: TASK-151.06
title: 'Update the syllabus, routers, AGENTS.md, and TODO.md for Week 5'
status: To Do
assignee: []
created_date: '2026-10-27 08:45'
updated_date: '2026-10-27 08:47'
labels: []
dependencies:
  - TASK-151.03
  - TASK-151.04
  - TASK-151.05
references:
  - course/plans/a5-plan.md
  - course/syllabus.md
  - README.md
  - SKILL.md
  - course/rules.md
  - AGENTS.md
  - TODO.md
documentation:
  - course/plans/a5-plan.md
modified_files:
  - course/syllabus.md
  - README.md
  - SKILL.md
  - course/rules.md
  - AGENTS.md
  - TODO.md
parent_task_id: TASK-151
priority: high
ordinal: 136000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Update the student-facing schedule, the routers, and the maintainers' state for Week 5, per `course/plans/a5-plan.md`'s `## Edited Files Outside requirements/` and `## Scope And Contradictions`.

Files and required outcome:

1. `course/syllabus.md`
   - The Week 5 ToC entry and heading become `Testing, Verification & Deployment`; the focus row names the lecture, the CI checks, the VM deployment, and Submission 5.
   - The Week 5 class line keeps its CI/CD description and adds that the product CI cannot reach the university network, so the deployment is the manual gate.
   - The Week 5 objectives name the QRTs and testing plan, the unit tests and CI, the manual deployment to the university VM, the milestones and two stories, the codebase design exercise, and `REL-05`; "live accessible" is stated as reachable by the customer from the university network.
   - The Week 5 deliverables name those artifacts, the staging and production instances with `docs/deployment.md`, and the sprint retrospective; the pitch deck and the stray `<!-- Reproducibility -->` comment are removed.
   - The Submission 5 row becomes a `Verification & Deployment` summary in the same order, drops "CI/CD pipelines" and the 7-minute deck, and defines live accessible as reachable by the customer from the university network at the VM's IPv4 address.
   - The Week 6 heading, focus row, and class line drop the in-class presentations; Week 6 keeps its own deck deliverable and its 7 November submission date.
   - The Week 7 heading, focus row, and class line gain the in-class presentations, and the class line says the near-final Week 6 deck is presented there and the final deck is submitted on 7 November.
   - The Week 5 hard deadline stays Saturday 31 October 2026 at 23:59; no week gains a component or sequence view, and Week 4's deliverables do not gain the tests or the CI.
2. `README.md`: the guide rows for the two new guides, the Assignment 5 row, and no new requirements file row; the quality, planning, and repository descriptions are updated.
3. `SKILL.md`: routing rows for the two guides and the Week 5 artifacts, with each guide beside its requirements link and the rows for `docs/deployment.md`, the testing plan, and the QRTs; the front-matter `description` gains the tests, the deployment, and the environments; no feature-index row.
4. `course/rules.md`: the two new guides in the guide row, and the quality, planning, and repository rows in `## Where The Rules Live` updated for the tests, the testing plan, the milestones, and the environments.
5. `AGENTS.md`: the Repository Map gains `course/decisions/a5.md` and the two guides; the quality, planning, and repository rows in the requirements table are updated; the `docs/` Destination Map gains the Week 5 row with `docs/deployment.md`, moves the testing plan out of the Week 4 row, and leaves the `QRT-nn` sections in the Week 4 row's `docs/quality-requirements/`; the identifier conventions gain `QRT-nn`, its scoping, and the rule-5 exception; the terminology list gains `quality requirement test`, `quality requirement testing plan`, `evidence`, `development environment`, `integration environment`, `staging environment`, `production environment`, `university VM`, `deployed test`, and `deployment runbook`; no feature index term and no `docs/features.md` path.
6. `TODO.md`: record the answers the plan lists — the two further milestones are the assignment's milestone minimum (`A5-DEC-019`), the integration environment is GitHub Actions and the VM hosts staging and production (`A5-DEC-023`), the stale "story points from week 5" line is corrected because story points arrived in Week 4, the Inbox "Should ADR cite a QRT?" item is closed with `A5-DEC-018`'s answer that it must not, the identifier-format item records the space-separated pair (`A5-DEC-030`), the actionlint and product-code CI items are closed or point at the Week 5 block, and the feature issue type stays deferred with the note that the codebase design exercise answers the need (`A5-DEC-021`).
   The component and sequence view line says they are not required rather than removed.
   The A5 backlog breakdown is the task tree under TASK-151, so no breakdown is added to `TODO.md`.

Every link to a renamed syllabus heading is updated, and no router keeps a dangling anchor.

Do not edit the requirements files, the guides, the decision logs, the plans, or `assignments/` here.

When done, record implementation notes and set the task to Done.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [ ] #1 `course/syllabus.md`: the Week 5 ToC entry and heading become `Testing, Verification & Deployment`; the Week 5 focus row, objectives, and deliverables name the QRTs and testing plan, the unit tests and CI checks, the staging and production instances with `docs/deployment.md`, the milestones and two stories, the codebase design exercise, and `REL-05`; the 7-minute deck and the `<!-- Reproducibility -->` comment are removed.
- [ ] #2 `course/syllabus.md`: the Submission 5 row is a `Verification & Deployment` summary in the same order, drops CI/CD pipelines and the deck, and defines live accessible as reachable by the customer from the university network at the VM's IPv4 address; the Week 5 deadline stays Saturday 31 October 2026 at 23:59.
- [ ] #3 `course/syllabus.md`: the Week 6 heading, focus row, and class line drop the in-class presentations while keeping Week 6's own deck deliverable, and the Week 7 heading, focus row, and class line gain the in-class presentations, with the near-final Week 6 deck shown in the Week 7 class and the final one submitted on 7 November.
- [ ] #4 `README.md`: the Assignment 5 row exists, the two new guides are in the guides table, and the quality, planning, and repository requirement descriptions name the tests and testing plan, the milestone minimum, and the environments and deployment; no new requirements file row is added.
- [ ] #5 `SKILL.md`: the routing rows for `docs/deployment.md`, the testing plan, and the QRTs exist with the two guides beside their requirements links, the front-matter description names the tests, the deployment, and the environments, and no feature-index row is added.
- [ ] #6 `course/rules.md` lists both new guides in its guide row, and `AGENTS.md` gains `course/decisions/a5.md` and the two guides in the Repository Map, updates the requirements rows, adds the Week 5 `docs/` Destination Map row with `docs/deployment.md` and moves the testing plan out of Week 4, adds `QRT-nn` with its scoping and rule-5 exception to the identifier conventions, and adds the ten Week 5 terms to the terminology list.
- [ ] #7 `TODO.md`: the A5 items are answered (the two milestones, the integration environment, the stale story-points line, the feature issue type), the Inbox ADR/QRT and identifier-format items are closed with their answers, the actionlint and product-code CI items are closed or point at Week 5, and no A5 backlog breakdown is added there.
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
