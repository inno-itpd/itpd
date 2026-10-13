---
id: TASK-133
title: Fix the review findings on the Week 3 materials
status: Done
assignee: []
created_date: '2026-10-13 10:18'
updated_date: '2026-10-13 11:00'
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

Notes:
- This task depends on TASK-120 because both edit `TODO.md`, and TASK-120 owns the TASK-010 retarget.
  TASK-119's AC #1 keeps the old Friday date as history and is not edited.
- The deferred TODO comments in `assignments/assignment-3.md` currently fail `pnpm run format:markdown:check`; until they are removed the Markdown gates cannot go green, and resolving them is part of that deferral rather than this task.
- The `assignments/assignment-3.md` deadline edit stays in the working tree; land it with this change.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 The Week 3 hard deadline reads Saturday 17 October 2026 in course/syllabus.md and the Week 3 row of README.md, and the syllabus exception sentence covers Week 2 and Week 3
- [x] #2 The dates that mirror Week 3 in requirements/planning-requirements.md and the RISK-03 example in requirements/risks-requirements.md read 2026-10-17, and course/rules.md is reviewed and left as is
- [x] #3 requirements/risks-requirements.md's Rating rule reads grammatically and its Full Example uses the nested-bullet form for the Impact and Likelihood reasons, matching the Rating example
- [x] #4 The Full Example intro in requirements/planning-requirements.md describes the actual trim: the first two sprints' sections and the first milestone's section
- [x] #5 Every heading and TOC entry in guides/planning-and-tracking.md is Title Case, the Run it in a fixed order heading and TOC entry have no trailing colon, and every TOC anchor resolves
- [x] #6 AGENTS.md's Maintained Here table carries a course/tooling.md row
- [x] #7 handoff.md's Current State and D3, D6, D10, D14, and D36 match the repository, and the file stays untracked
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

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Finding 1 (dates) landed first and findings 2 to 6 landed in the later slice.

Changed (dates): course/syllabus.md gives the Week 3 hard deadline as October 17 at 23:59 (Saturday) and the exception sentence now covers Weeks 2 and 3; README.md Week 3 row is Sat 17 Oct, 23:59; the five Week 3 deadline dates in requirements/planning-requirements.md read 2026-10-17 (both Due examples, the SPRINT-03 row, the MLS-03 row, and the MLS-03 Due field); requirements/risks-requirements.md RISK-03 is dropped 2026-10-17. The assignments/assignment-3.md deadline edit was already in the working tree and lands with this slice; its TODO comment stays deferred as agreed.

Changed (findings 2 to 6): requirements/risks-requirements.md's Rating rule reads "The reason follows on a nested bullet under the rating", and the Full Example's Impact and Likelihood reasons are nested bullets, matching the Rating example; requirements/planning-requirements.md's Full Example intro is trimmed to the first two sprints' sections and the first milestone's section; guides/planning-and-tracking.md's 20 `###` headings and their TOC entries are Title Case and Run It In A Fixed Order lost its colon; AGENTS.md's Maintained Here table gained the course/tooling.md row; handoff.md's Current State, D3, D6, D10, D14, and D36 were refreshed.

Decisions: course/rules.md was reviewed and left unchanged, because it states the general Thursday/Friday pair and the syllabus carries the exceptions. The 2026-10-15 dates in the planning example are release-cut days, not deadline mirrors, so they stay. Two handoff lands-in lines were fixed for the same class of move: D32 now names requirements/releases-requirements.md (TASK-126) and D33 names requirements/issue-tracking-requirements.md (TASK-129). handoff.md stays untracked. D3 gives the Saturday 17 October hard deadline; D6's Due row no longer says Friday; Current State records the assignment at 61a9bd2 with 4e51b00 and 9b53f5b on top, after a fresh-context audit showed 61a9bd2 was no longer its latest commit.

Validation: format:markdown (no-op), format:markdown:check, lint:markdown, test:markdown-format 34/34, test:markdown-rules 34/34, check:lectures (3 decks match Typst 0.15.1), check:links (1157 total, 1155 OK, 0 errors, 2 excluded, 1 redirect, fragments included so the retitled guide anchors resolve), backlog doctor clean. No 2026-10-16 remains in the planning or risks requirements files, and course/rules.md has no diff. The deferred TODO comment in assignments/assignment-3.md does not fail the Markdown gates. Left alone on purpose: lectures/lecture-3.typ line 145 still says October 16 (hard) and needs a deck rebuild, and the handoff's session history keeps its historical references.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Fixed the Week 3 review findings: the Week 3 hard deadline reads Saturday 17 October 2026 across the syllabus, README, planning requirements, and the RISK-03 example; the risk rating rule and its Full Example now match; the plan example intro describes its actual trim; the planning guide headings are Title Case; AGENTS.md carries the course/tooling.md row; and handoff.md was refreshed and stays untracked. Verified with format:markdown:check, lint:markdown, test:markdown-format 34/34, test:markdown-rules 34/34, check:lectures (3 decks match Typst 0.15.1), check:links (1157 links, 0 errors), and backlog doctor.
<!-- SECTION:FINAL_SUMMARY:END -->
