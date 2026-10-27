---
id: TASK-151.06
title: 'Update the syllabus, routers, AGENTS.md, and TODO.md for Week 5'
status: Done
assignee:
  - deepseek-harness
created_date: '2026-10-27 08:45'
updated_date: '2026-10-27 12:27'
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
- [x] #1 `course/syllabus.md`: the Week 5 ToC entry and heading become `Testing, Verification & Deployment`; the Week 5 focus row, objectives, and deliverables name the QRTs and testing plan, the unit tests and CI checks, the staging and production instances with `docs/deployment.md`, the milestones and two stories, the codebase design exercise, and `REL-05`; the 7-minute deck and the `<!-- Reproducibility -->` comment are removed.
- [x] #2 `course/syllabus.md`: the Submission 5 row is a `Verification & Deployment` summary in the same order, drops CI/CD pipelines and the deck, and defines live accessible as reachable by the customer from the university network at the VM's IPv4 address; the Week 5 deadline stays Saturday 31 October 2026 at 23:59.
- [x] #3 `course/syllabus.md`: the Week 6 heading, focus row, and class line drop the in-class presentations while keeping Week 6's own deck deliverable, and the Week 7 heading, focus row, and class line gain the in-class presentations, with the near-final Week 6 deck shown in the Week 7 class and the final one submitted on 7 November.
- [x] #4 `README.md`: the Assignment 5 row exists, the two new guides are in the guides table, and the quality, planning, and repository requirement descriptions name the tests and testing plan, the milestone minimum, and the environments and deployment; no new requirements file row is added.
- [x] #5 `SKILL.md`: the routing rows for `docs/deployment.md`, the testing plan, and the QRTs exist with the two guides beside their requirements links, the front-matter description names the tests, the deployment, and the environments, and no feature-index row is added.
- [x] #6 `course/rules.md` lists both new guides in its guide row, and `AGENTS.md` gains `course/decisions/a5.md` and the two guides in the Repository Map, updates the requirements rows, adds the Week 5 `docs/` Destination Map row with `docs/deployment.md` and moves the testing plan out of Week 4, adds `QRT-nn` with its scoping and rule-5 exception to the identifier conventions, and adds the ten Week 5 terms to the terminology list.
- [x] #7 `TODO.md`: the A5 items are answered (the two milestones, the integration environment, the stale story-points line, the feature issue type), the Inbox ADR/QRT and identifier-format items are closed with their answers, the actionlint and product-code CI items are closed or point at Week 5, and no A5 backlog breakdown is added there.
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
Implementation plan (confirmed by the task brief and `course/plans/a5-plan.md`):

1. `course/syllabus.md` — keep the already-renamed Week 5 heading; rewrite the ToC focus row (lecture, CI checks, VM deployment, Submission 5); delete `<!-- Reproducibility -->`; extend the Class 5 line with the CI-cannot-reach-campus/manual-gate note and the definition of "live accessible"; rewrite Week 5 objectives and deliverables for the QRTs and testing plan, unit tests and CI checks, staging/production with `docs/deployment.md`, the milestones and two stories, the codebase-design exercise, the retrospective, and `REL-05`; rewrite the Submission 5 catalog row as `Verification & Deployment` and drop the deck/pipeline wording; move in-class presentations from Week 6 to Week 7 in both the ToC rows and the week headings/class lines; leave the W5 deadline and Week 4 deliverables untouched. Update the Week 6/7 ToC anchors in step with the renamed headings.
2. `README.md` — add the Week 5 assignment row and the two guide rows; widen the quality, planning, and repository requirement descriptions; add no requirements file row.
3. `SKILL.md` — add the tests/deployment/environments wording to the front-matter `description`; add the QRTs to the quality row, the testing plan to the planning row, and a repository/environments row carrying the deployment guide; place the quality-requirement-tests guide on the quality row and the deployment guide on the repository row; add no feature-index row.
4. `course/rules.md` — add both guides to the guide row and widen the quality, planning, and repository rows.
5. `AGENTS.md` — add `course/decisions/a5.md` and the two guides to the Repository Map; widen the quality, planning, and repository rows in the `requirements/` table; add the Week 5 `docs/` Destination Map row (`docs/deployment.md`) and remove the testing-plan clause from the Week 4 row while keeping the `QRT-nn` sections there; add `QRT-nn` to the identifier conventions with its two-digit scope, the pair citation, and the rule-5 heading exception; add the ten Week 5 terms to the terminology list.
6. `TODO.md` — answer the A5 milestone and integration-environment lines, correct the story-points line, reword the component/sequence line to "not required", close the Inbox ADR/QRT and identifier-format items with `A5-DEC-018`/`A5-DEC-030`, close the actionlint and product-code CI items against the Week 5 block, and record the feature issue type as deferred with `A5-DEC-021`; preserve the user's unstaged TODO additions and add no A5 backlog breakdown.
7. Validation — `pnpm run format:markdown`, `pnpm run format:markdown:check`, `pnpm run lint:markdown`, `pnpm run test:markdown-format`, `pnpm run test:markdown-rules`, `pnpm run check:lectures`, `pnpm run check:links`; then verify every renamed syllabus anchor and record notes, check ACs and DoD, and set the task Done.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Syllabus: rewrote Week 5 around `QRT-nn` tests and the `## Quality Requirement Testing Plan`, the unit tests with `actionlint` and the applicable product-code CI checks, the manual staging-and-production deploy to the university VM with `docs/deployment.md`, the two-milestone minimum and two stories, the codebase design exercise, the retrospective, and `REL-05`; defined "live accessible" as reachable by the customer from the university network at the VM's IPv4 address; removed the Week 5 7-minute deck and the stray `<!-- Reproducibility -->` comment; rewrote the Submission 5 catalog row as `Verification & Deployment`; moved the in-class presentations from the Week 6 class to the Week 7 class in the ToC, the focus table, and both week sections, keeping Week 6's own deck deliverable and 7 November date; repointed the Week 9 deck note at the Week 6 deck. Week 5's deadline and Week 4's deliverables are unchanged, and no week gained a component or sequence view.

Routers: added the Assignment 5 row and both new guides to `README.md` and widened the quality, planning, and repository requirement descriptions, including the assignment's milestone minimum; added the QRT row, the testing-plan wording, the `docs/deployment.md` and four-environment row, and the two guides to `SKILL.md`, and widened its front-matter description with the tests, the deployment, and the environments; added both guides and the tests, testing plan, milestones, and environments to `course/rules.md`'s `## Where The Rules Live`. No requirements-file row was added to `README.md`, and no feature-index row exists anywhere.

`AGENTS.md`: added `course/decisions/a5.md` and the two guides to the Repository Map; widened the quality, planning, and repository rows in both the Repository Map and the `requirements/` ownership table; added the Week 5 `docs/` Destination Map row with `docs/deployment.md`, removed the testing-plan clause from the Week 4 row and kept its `QRT-nn` sections there; added `QRT-nn` to the identifier conventions with its W5 introduction, two-digit scope, the `QR-01 QRT-02` pair citation, and the rule-5 heading exception; added the ten Week 5 terms to the terminology list. No `docs/features.md` path and no feature-index term were added.

`TODO.md`: recorded the assignment's milestone minimum (`A5-DEC-019`), the GitHub Actions integration environment and the VM hosting staging and production with the environment map in `docs/deployment.md` (`A5-DEC-023`, `A5-DEC-026`), and corrected the story-points line to Week 4; reworded the component and sequence view line to "not required"; closed the Inbox ADR/QRT item with `A5-DEC-018` and the identifier-format item with the space-separated pair (`A5-DEC-030`); closed the actionlint and product-code CI items against the Week 5 block (`A5-DEC-024`); recorded the feature issue type as deferred with `A5-DEC-021`; kept the user's open feature-explanation item and added no A5 backlog breakdown. The user's duplicate integration-environment note was folded into the answered item.

Validation: `pnpm run format:markdown` reformatted the widened tables; `pnpm run format:markdown:check` and `pnpm run lint:markdown` passed; `pnpm run test:markdown-format` and `pnpm run test:markdown-rules` each passed 34 tests; `pnpm run check:lectures` matched all 5 decks against their sources; `pnpm run check:links` checked 2428 links (582 unique) with 0 errors and no dangling syllabus anchors after the Week 6 and Week 7 heading renames.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Updated the Week 5 schedule, the routers, the maintainers' map, and the checklist for Assignment 5.

- `course/syllabus.md`: Week 5 now covers `QRT-nn` quality requirement tests and the testing plan, the unit tests with `actionlint` and the applicable product-code CI checks, the manual staging-and-production deploy to the university VM with `docs/deployment.md`, the two-milestone minimum and two stories, the codebase design exercise, the retrospective, and `REL-05`; "live accessible" means the customer reaches the product from the university network at the VM's IPv4 address. The Week 5 deck and the stray `<!-- Reproducibility -->` comment are gone, the Submission 5 row is a `Verification & Deployment` summary, and the in-class presentations moved from the Week 6 class to the Week 7 class with Week 6's deck deliverable and 7 November date kept.
- `README.md`, `SKILL.md`, `course/rules.md`: added the Assignment 5 row, both new guides, the QRT, testing-plan, milestone, and environment/deployment routing, and widened the front-matter description; no requirements-file row and no feature-index row.
- `AGENTS.md`: added `course/decisions/a5.md` and both guides to the Repository Map, widened the quality, planning, and repository rows, added the Week 5 `docs/` Destination Map row with `docs/deployment.md`, moved the testing plan out of the Week 4 row while keeping its `QRT-nn` sections, added `QRT-nn` with its scope, pair citation, and rule-5 heading exception, and added the ten Week 5 terms.
- `TODO.md`: recorded the milestone minimum, the GitHub Actions integration environment and VM environments, the Week 4 story-points correction, the ADR/QRT and identifier-format answers, closed the actionlint and product-code CI items against the Week 5 block, and recorded the feature issue type as deferred.

Validation: `pnpm run format:markdown:check` and `pnpm run lint:markdown` passed; `pnpm run test:markdown-format` and `pnpm run test:markdown-rules` each passed 34 tests; `pnpm run check:lectures` matched all 5 decks; `pnpm run check:links` checked 2428 links (582 unique) with 0 errors, so no renamed syllabus anchor is dangling.
<!-- SECTION:FINAL_SUMMARY:END -->
