---
id: TASK-152
title: Require feature documentation for users and developers
status: Done
assignee: []
created_date: '2026-10-27 13:53'
updated_date: '2026-10-27 14:12'
labels:
  - docs
dependencies: []
references:
  - guides/quality-and-architecture.md
  - assignments/assignment-5.md
  - course/syllabus.md
  - requirements/weekly-report-requirements.md
  - requirements/glossary-requirements.md
  - TODO.md
documentation:
  - requirements/features-requirements.md
  - requirements/general-requirements.md
  - course/decisions/a5.md
  - AGENTS.md
  - course/plans/a5-plan.md
  - requirements/agent-instructions-requirements.md
modified_files:
  - requirements/features-requirements.md
  - requirements/general-requirements.md
  - guides/quality-and-architecture.md
  - assignments/assignment-5.md
  - course/decisions/a5.md
  - course/syllabus.md
  - README.md
  - SKILL.md
  - course/rules.md
  - AGENTS.md
  - TODO.md
  - requirements/weekly-report-requirements.md
priority: high
type: docs
ordinal: 138000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Feature documentation is currently only an exercise: the guide's Step 8 lets the team choose a place, the assignment asks it to explain the choice and to design an element-naming scheme, and no requirements file says what the page must contain. The weekly report's coverage example already points at `docs/features.md` even though no rule requires that path, so the course teaches a deliverable it cannot check. The glossary cannot fill the gap, because a term is a fixed project meaning and a feature is a capability.

The change makes feature documentation a requirement: `docs/features.md` is the one maintained page for users and developers, with a user-language sentence per capability and links to the story, functional requirement, architectural decision record, and glossary term that own its facts. The requirement owns the shape, the guide carries the method, and the assignment keeps only the Week 5 minimum and the report link. The feature stays a join, not an identifier family, index, issue type, or report section.

The codebase design exercise is removed entirely: its documentation-place question becomes the requirement, and its interface element-naming question is dropped. Week 5's objective and deliverable are renamed to Feature Documentation. No element-naming requirement is added; a team may still record a scheme in its own `AGENTS.md` under the existing conventions rule, but the course does not ask for one. `A5-DEC-034` records the removal and reverses `A5-DEC-021`; the a5 plan is left as the historical design record.

Confirmed scope: fixed `docs/features.md`; flat `##` entries, no role grouping and no `**Users:**` field; at least three features from Week 5, or every feature if fewer; citation by `docs/features.md#anchor`, no `FEAT-nn`; `Since: W5`; feature entry links only for the developer-facing part. Out of scope: a feature index, feature issue type, per-feature files, a role taxonomy, changes to the story/FR/ADR rules, an element-naming requirement, a codebase design exercise, and any file under `docs/` or `reports/` in this course repository.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 `requirements/features-requirements.md` exists with a table of contents, the rule sections `Where The Features Live` and `The Feature Entry` carrying `Since: W5`, and a `Full Example` section.
- [x] #2 The requirement fixes `docs/features.md`, one flat `##` entry per capability, a user-language opening sentence, `**Stories:**` and `**Behavior:**` links, optional `**Decisions:**` and `**Terms:**`, and the same-PR update rule.
- [x] #3 The requirement fixes citation by `docs/features.md#anchor` and the Week 5 minimum of at least three features, or every feature if fewer; it states a feature has no identifier family, index, issue type, or report section, and an entry restates no behavior its `FR-nnn` owns; `requirements/general-requirements.md` records the no-`FEAT-nn` citation rule.
- [x] #4 `guides/quality-and-architecture.md` Step 8 links the new requirement, removes the team-chosen place, 'there is no required path', the glossary-alone option, and the codebase-design and element-naming framing; it keeps method only for finding capabilities, writing the user sentence, ordering, links, and keeping the file current, and adds a Common Mistakes item for an entry that retells a requirement.
- [x] #5 `assignments/assignment-5.md` Part 6 is renamed and asks for at least three features, or every feature if fewer, in `docs/features.md`, links the requirement, changes the coverage row to `docs/features.md`, and removes the documentation-place, connection, update, and element-naming questions; the element-naming question appears nowhere else in the assignment.
- [x] #6 `course/syllabus.md` Week 5's objective, deliverable, and Submission 5 row name Feature Documentation and remove the codebase design exercise; no other week's deliverable changes.
- [x] #7 `course/decisions/a5.md` gains `A5-DEC-034`, reversing `A5-DEC-021`'s codebase-design-exercise, no-path, glossary-cover, and element-naming clauses, restating its surviving no-index/no-`FEAT-nn`/no-issue-type/no-report-section and feature-as-join clauses, and updating `A5-DEC-021`'s status; it names the a5 plan's removed exercise.
- [x] #8 `README.md`, `SKILL.md`, `course/rules.md`, and `AGENTS.md` route the new requirements file and `docs/features.md` consistently through their tables, maps, destination map, terminology, and identifier notes; the README's Week 5 row and guide row name Feature Documentation, and no router still names a codebase design exercise or an element-naming exercise.
- [x] #9 The weekly report example and the assignment's coverage row name the same `docs/features.md` path; `TODO.md`'s 'Revise explanation of features' item is checked off and the deferred feature issue type note points at the feature documentation requirement; no role grouping or `**Users:**` field is required; no file is created under `docs/` or `reports/`; no feature index, `FEAT-nn`, or feature issue type is added.
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
1. Created `requirements/features-requirements.md` with `**Since: W5**` rules: the fixed `docs/features.md` path, the Week 5 minimum of three features or every feature when fewer, the flat `##` entry, the user-language opening sentence, required `**Stories:**` and `**Behavior:**` links, optional `**Decisions:**` and `**Terms:**`, the no-restatement rule, the same-pull-request update rule, the no-`FEAT-nn`/no-index/no-issue-type/no-report-section rule, and a full example.
2. Added the no-`FEAT-nn` citation rule and a Week 5 traceability row to `requirements/general-requirements.md`.
3. Rewrote Step 8 and added the `docs/features.md` output to `guides/quality-and-architecture.md`, keeping method only for capabilities, the user sentence, ordering, links, and currency; added a Common Mistakes item for an entry that retells its requirement.
4. Renamed and rewrote Assignment 5 Part 6, its objective, intro, coverage row, what-good-looks-like bullet, and checklist; removed every element-naming question.
5. Renamed the Week 5 objective, deliverable 5, and the Submission 5 row in `course/syllabus.md` to Feature Documentation.
6. Added `A5-DEC-034` to `course/decisions/a5.md`, reversed `A5-DEC-021` in full and restated its surviving clauses, and updated the A5-DEC-021 status and its Part 6 anchor.
7. Routed the new requirements file and `docs/features.md` through `README.md`, `SKILL.md`, `course/rules.md`, `AGENTS.md`, `requirements/weekly-report-requirements.md`, and `TODO.md`.
8. Ran `pnpm run format:markdown`, `format:markdown:check`, `lint:markdown`, both plugin suites, `check:lectures`, and `check:links`, and recorded the results in the task.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Decisions: feature documentation is a requirement in `requirements/features-requirements.md`; `docs/features.md` is fixed, with flat `##` entries in reader order, one user-language sentence per entry, required `**Stories:**` and `**Behavior:**` links, and optional `**Decisions:**` and `**Terms:**`. A feature has no `FEAT-nn`, no index, no issue type, and no report section; the page is updated in the same pull request as the change it reflects. The guide keeps method only for finding capabilities, writing the user sentence, ordering, linking, and keeping the page current, and gains a Common Mistakes item for an entry that retells its requirement. Assignment 5 Part 6 keeps the Week 5 minimum of at least three features, or every feature when there are fewer, and the report coverage row. `A5-DEC-034` reverses `A5-DEC-021` in full and restates its surviving feature-as-join, no-index, no-`FEAT-nn`, no-feature-issue-type, and no-report-section clauses; the a5 plan stays the historical design record. No element-naming requirement was added; a team may record a scheme in its own `AGENTS.md` under the existing conventions rule.

Validation: `pnpm run format:markdown`, `format:markdown:check`, `lint:markdown`, `test:markdown-format` (34 tests), `test:markdown-rules` (34 tests), `check:lectures` (5 decks match, Typst 0.15.1), and `check:links` (2468 total, 2466 OK, 0 errors, 2 excluded) all pass; `backlog doctor` reports no duplicate IDs, self-references, or cycles. No file was created under `docs/` or `reports/`.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Feature documentation is now a course requirement instead of an exercise. `requirements/features-requirements.md` fixes `docs/features.md`, the Week 5 minimum of at least three features (or every feature when fewer), one flat `##` entry per capability with a user-language opening sentence and `**Stories:**`/`**Behavior:**` links plus optional `**Decisions:**`/`**Terms:**`, the no-restatement and same-pull-request rules, and the no-`FEAT-nn`/no-index/no-issue-type/no-report-section rule. `requirements/general-requirements.md` records the no-`FEAT-nn` citation rule and the Week 5 traceability row.

The guide’s Step 8 keeps method only for finding capabilities, the user sentence, ordering, links, and currency, and gains a Common Mistakes item for an entry that retells its requirement. Assignment 5 Part 6, the syllabus Week 5 objective/deliverable/submission row, README, SKILL, course/rules, AGENTS, the weekly report example, and TODO now route Feature Documentation consistently. `A5-DEC-034` records the removal and reverses `A5-DEC-021` while restating its surviving feature-as-join clauses; the a5 plan stays the historical design record.

Validation: `format:markdown`, `format:markdown:check`, `lint:markdown`, both 34-test plugin suites, `check:lectures` (5 decks, Typst 0.15.1), `check:links` (2468 total, 0 errors), and `backlog doctor` all pass. No file was created under `docs/` or `reports/`.
<!-- SECTION:FINAL_SUMMARY:END -->
