---
id: TASK-133
title: Fix the review findings on the Week 3 materials
status: In Progress
assignee: []
created_date: '2026-10-13 10:18'
updated_date: '2026-10-13 10:31'
labels: []
dependencies:
  - TASK-120
modified_files:
  - assignments/assignment-3.md
  - course/syllabus.md
  - README.md
  - requirements/planning-requirements.md
  - requirements/risks-requirements.md
  - guides/planning-and-tracking.md
  - AGENTS.md
  - TODO.md
priority: high
type: docs
ordinal: 129000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
A review of the Week 3 materials (the `handoff.md` plan and `assignments/assignment-3.md`) found the items below.
The maintainer confirmed the Week 3 hard-deadline move is intentional, agreed to these fixes, deferred the leftover TODO comments in `assignments/assignment-3.md`, and left the pre-existing syllabus `To revise` notes alone.

1. Deadline consistency.
   The Week 3 hard deadline is Saturday 17 October 2026, and `assignments/assignment-3.md` already says so in the working tree.
   Bring the rest in line: `course/syllabus.md` (the Week 3 `**Deadline**:` line, and the "Week 2 is the exception" sentence now covers Week 2 and Week 3), the Week 3 row of `README.md`, and the dates that mirror Week 3 in `requirements/planning-requirements.md` (the two `Due` examples and the `SPRINT-03` and `MLS-03` rows).
   The `RISK-03` example in `requirements/risks-requirements.md` says the sprint ended on the drop date, so it matches the sprint's Saturday end.
   `course/rules.md#deadlines-and-submission` states the general Thursday/Friday pair with the syllabus carrying the exceptions; review it and leave it unchanged unless it needs a clause.
2. Risk rating bullets.
   `requirements/risks-requirements.md`: the `## Rating` rule reads "with own bullet"; fix the grammar.
   The `## Rating` example shows the `**Impact:**` and `**Likelihood:**` reasons as nested bullets, but the `## Full Example` shows them as plain indented text; make the full example match the rule.
3. Plan example intro.
   `requirements/planning-requirements.md`'s `## Full Example` intro says the later sprints and the second milestone are left out, but the example shows the `SPRINT-04` section and the `MLS-05` table row.
   Reword it to describe the actual trim: the first two sprints' sections and the first milestone's section.
4. Guide headings.
   `guides/planning-and-tracking.md` uses sentence case for its `###` headings while the repository style is Title Case, and `### Run it in a fixed order:` and its TOC entry keep a trailing colon.
   Title-Case the headings, update the TOC entries to match, and drop the colon.
5. AGENTS map.
   `AGENTS.md`'s `Maintained Here` table has no `course/tooling.md` row although `README.md` and `SKILL.md` route to it; add the row.
6. Handoff refresh.
   `handoff.md` is untracked and never committed, but it is what the next session reads.
   Its Current State is stale: TASK-124 to TASK-132 have landed, TASK-120 and this task are open, `TODO.md` is committed clean, and the assignment is committed at 61a9bd2.
   D3 gets the Saturday deadline.
   D6's milestone `**Due:**` says "Friday hard-deadline date".
   D14 and D36 name `requirements/repository-requirements.md` for the fields, assignees, and project, but TASK-129 moved them to `requirements/issue-tracking-requirements.md`.
   D10 lists the risk table columns as `ID, Risk, Impact, Likelihood, Status` while the file uses `ID, Status, Impact, Likelihood, Risk`.
7. A3 decisions record.
   `TODO.md` asks to "Save A3 decisions in course/decisions/decisions-a3.md"; no such directory, file, or convention exists, and `handoff.md` (the only record of the A3 decisions) is deleted once Assignment 3 is published.
   Decide and land the record, or drop the TODO item with the reason recorded.
   The dependency-bumps item is covered by TASK-120's TODO cleanup.

Notes:
- This task depends on TASK-120 because both edit `TODO.md`; TASK-120 owns the TASK-010 retarget and ticks the A3 items its work covered.
  TASK-119's AC #1 keeps the old Friday date as history and is not edited.
- The deferred TODO comments in `assignments/assignment-3.md` currently fail `pnpm run format:markdown:check`; until they are removed the Markdown gates cannot go green, and resolving them is part of that deferral rather than this task.
- The `assignments/assignment-3.md` deadline edit stays in the working tree; land it with this change.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 The Week 3 hard deadline reads Saturday 17 October 2026 in course/syllabus.md and the Week 3 row of README.md, and the syllabus exception sentence covers Week 2 and Week 3
- [x] #2 The dates that mirror Week 3 in requirements/planning-requirements.md and the RISK-03 example in requirements/risks-requirements.md read 2026-10-17, and course/rules.md is reviewed and left as is
- [ ] #3 requirements/risks-requirements.md's Rating rule reads grammatically and its Full Example uses the nested-bullet form for the Impact and Likelihood reasons, matching the Rating example
- [ ] #4 The Full Example intro in requirements/planning-requirements.md describes the actual trim: the first two sprints' sections and the first milestone's section
- [ ] #5 Every heading and TOC entry in guides/planning-and-tracking.md is Title Case, the Run it in a fixed order heading and TOC entry have no trailing colon, and every TOC anchor resolves
- [ ] #6 AGENTS.md's Maintained Here table carries a course/tooling.md row
- [ ] #7 handoff.md's Current State and D3, D6, D10, D14, and D36 match the repository, and the file stays untracked
- [ ] #8 The A3 decision record is settled and landed (a course/decisions record routed as needed, or the TODO.md item dropped with its reason recorded), and TODO.md's A3 section has no unresolved item left once TASK-120 lands
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

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Date fix only (finding 1 of 7); findings 2 to 7 remain, so the task stays open.

Changed: course/syllabus.md gives the Week 3 hard deadline as October 17 at 23:59 (Saturday) and the exception sentence now covers Weeks 2 and 3; README.md Week 3 row is Sat 17 Oct, 23:59; the five Week 3 deadline dates in requirements/planning-requirements.md read 2026-10-17 (both Due examples, the SPRINT-03 row, the MLS-03 row, and the MLS-03 Due field); requirements/risks-requirements.md RISK-03 is dropped 2026-10-17. The assignments/assignment-3.md deadline edit was already in the working tree and lands with this slice; its TODO comments stay deferred as agreed.

Decisions: course/rules.md was reviewed and left unchanged, because it states the general Thursday/Friday pair and the syllabus carries the exceptions. The 2026-10-15 dates in the planning example are release-cut days, not deadline mirrors, so they stay. Left outside this slice: lectures/lecture-3.typ line 145 still says October 16 (hard), and handoff.md D3 still says Friday 16 October; neither is in the agreed fix list, and the deck needs a rebuild to change.

Validation: format:markdown:check and format:markdown (no-op) pass; lint:markdown passes; test:markdown-format 34/34; test:markdown-rules 34/34; check:lectures reports 3 decks matching Typst 0.15.1; check:links reports 1157 total, 1155 OK, 0 errors, 2 excluded. No 2026-10-16 remains in the planning or risks requirements files, and course/rules.md has no diff. The deferred TODO comments in assignments/assignment-3.md do not fail the Markdown gates in the current tree: format:markdown:check and a no-cache eslint pass with them staged.
<!-- SECTION:NOTES:END -->
