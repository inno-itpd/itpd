---
id: TASK-118
title: Update the syllabus for the Week 3 to Week 6 changes
status: Done
assignee: []
created_date: '2026-10-12 19:09'
updated_date: '2026-10-12 21:47'
labels: []
dependencies:
  - TASK-109
  - TASK-111
  - TASK-113
  - TASK-114
  - TASK-115
references:
  - course/syllabus.md
  - lectures/lecture-3.typ
modified_files:
  - course/syllabus.md
  - lectures/lecture-3.typ
  - lectures/lecture-3.pdf
type: docs
ordinal: 114000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
The syllabus is the single source of truth for the schedule, and Week 3 changes it: the plan is renamed, estimation leaves the Week 3 lecture, new deliverables join Week 3, and later weeks become releases (`REL-04`, `REL-05`) rather than more MUP versions or MVP presentations.
This task edits `course/syllabus.md` and the one Week 5 line in `lectures/lecture-3.typ`, then rebuilds the deck.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 Every work plan mention (the weekly overview table, the Week 3 deliverable list, and the Submission 3 row) becomes `docs/project-plan.md` or Project Plan, described as the sprint, milestone, and release plan
- [x] #2 Estimation leaves the Week 3 lecture line, to move to Week 4 when the ceremonies requirements land
- [x] #3 The Week 3 deliverable list and Submission 3 row keep the changelog, first SemVer tag, and product-code CI, and gain the risk register, the Definition of Done, the docs site, the setup and run instructions, and the `Sprint`, `Responsible`, and `Accountable` issue fields
- [x] #4 Week 4 and Submission 4 replace Improved MUP with the next product release `REL-04`, and the Week 4 heading and fourth deliverable are renamed the same way
- [x] #5 Week 5, Week 6, their weekly-overview cells, their table-of-contents lines, and Submission 5 are rewritten so Week 5 delivers the production deployment and `REL-05` and the Week 6 presentations are product presentations; `MVP` remains only in the prototypes vocabulary and the deck vocabulary slides
- [x] #6 `lectures/lecture-3.typ` names the Week 5 release where the SMART relevance bullet said the Week 5 MVP, and `pnpm run build:lectures` and `pnpm run check:lectures` pass with the rebuilt deck
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
1. Rename the three work plan mentions in course/syllabus.md: the weekly overview cell and the Submission 3 row to Project Plan, and the Week 3 deliverable to Project Plan described as the sprint, milestone, and release plan at docs/project-plan.md.
2. Remove estimation from the Week 3 lecture line.
3. Extend the Week 3 deliverable list and the Submission 3 row: keep the changelog, first SemVer tag, and code CI; add the risk register, the Definition of Done, the docs site, the setup and run instructions, and the Sprint, Responsible, and Accountable issue fields.
4. Rename the Week 4 heading, TOC line, fourth deliverable, and Submission 4 row from Improved MUP to the next product release REL-04.
5. Rewrite Week 5 and Week 6 (headings, TOC lines, overview cells, Submission 5 row): Week 5 delivers the production deployment and REL-05, the deck and presentations become product presentations, and MVP leaves the syllabus.
6. Edit the lecture-3.typ relevance bullet to say the Week 5 release, rebuild the deck, run the gates, and record the notes.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Decisions: the renamed mentions read Project Plan in the weekly overview cell and the Submission 3 row, and the deliverable is described as the sprint, milestone, and release plan at docs/project-plan.md.
- Week 4 and Week 5 use Next Product Release in their headings and TOC lines, with REL-04 and REL-05 named in the deliverable and the submission row; identifiers stay out of headings, and the MUP and MVP stage names leave the syllabus.
- The Week 3 list puts the risk register after the threshold, keeps the MUP and the contributing guide in place, groups the Definition of Done and the three issue fields after the contributing guide, and closes with the changelog, CI, docs site, and setup instructions; the Submission 3 row mirrors the list without the contributing guide, which the row never carried.
- Week 4 keeps its fourth deliverable description and only the label changes.
- Week 5 keeps Deployment & Release as its submission label, replaces the MVP milestone objective with cutting the release, REL-05, and renames the deck to the 7-Minute Product Presentation Deck.
- The lecture bullet says "the base for the Week 5 release" without adding REL-05, because the deck never introduces the release identifiers; the rebuild left lecture-1.pdf and lecture-2.pdf byte-identical.
Validation: format:markdown had nothing to rewrite; format:markdown:check, lint:markdown, test:markdown-format (34 passed), test:markdown-rules (34 passed), build:lectures (3 decks, Typst 0.15.1), check:lectures (3 decks match their sources), check:links (980 total, 978 OK, 0 errors, 2 excluded, 1 redirect, --include-fragments, so the renamed TOC anchors resolve), and backlog doctor all pass; a grep confirms no work plan, work-plan, Improved MUP, MVP, or estimation mention remains in the syllabus or the deck.
Modified files: course/syllabus.md, lectures/lecture-3.typ, lectures/lecture-3.pdf.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Renamed the syllabus plan to docs/project-plan.md and removed estimation from the Week 3 lecture; extended the Week 3 deliverables and the Submission 3 row with the risk register, the Definition of Done, the docs site, the setup and run instructions, and the Sprint, Responsible, and Accountable issue fields; made Week 4 and Week 5 the next product releases REL-04 and REL-05 and Week 6 product presentations; pointed the lecture-3 SMART relevance bullet at the Week 5 release and rebuilt the deck. Verified with the Markdown gates, both vitest suites (34 and 34), build:lectures and check:lectures, check:links (0 errors, with fragments), and backlog doctor.
<!-- SECTION:FINAL_SUMMARY:END -->
