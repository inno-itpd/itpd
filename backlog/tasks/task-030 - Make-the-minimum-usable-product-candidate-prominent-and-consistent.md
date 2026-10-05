---
id: TASK-030
title: Make the minimum usable product candidate prominent and consistent
status: Done
assignee: []
created_date: '2026-10-04 23:16'
updated_date: '2026-10-05 18:53'
labels: []
dependencies: []
ordinal: 30000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
The MUP candidate was defined in one bullet, described as a single story in some places and a subset in others, and its drop-first and verdict rules were ambiguous. Settled: it stays in Week 2; it names one core task and is a strict non-empty subset of the Must Have stories that completes that task end to end, with every story needed; the customer's verdict is a DEC-nn the candidate cites; a story the verdict drops keeps its priority unless the customer changed it. It has its own requirements section, its own assignment part, and its own syllabus deliverable. The drop-first story was removed in e4c1873, because a story that leaves the core task completable is not part of the candidate.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 user-stories-requirements.md has a Since: W2 ## Minimum Usable Product Candidate section with the definition, the core task, the strict-subset rule, the every-story-needed rule, recording per Weekly Public Report, the verdict as a cited DEC-nn, and the dropped-story priority rule; MoSCoW rule 7 and prototypes-requirements.md link it
- [x] #2 weekly-report-requirements.md item 11 owns how the README records the candidate, and decisions-requirements.md lists the candidate as citing its verdict
- [x] #3 assignment-2.md Part 7 links those rules, and the Objectives, report item 3, the meeting target, agenda and decisions, and the checklist agree with them
- [x] #4 guides/user-stories-and-prototyping.md Step 4 links the rule and gives the core-task-first method
- [x] #5 course/syllabus.md Week 2 lists the candidate as deliverable 4 and the Minima agree
- [x] #6 Markdown gates, deck check, link and anchor check pass
<!-- AC:END -->

## Definition of Done
<!-- DOD:BEGIN -->
- [x] #1 All acceptance criteria are satisfied
- [x] #2 Changed Markdown files are formatted: `pnpm run format:markdown`
- [x] #3 `pnpm run lint:markdown` passes
- [x] #4 `pnpm run test:markdown-format` and `pnpm run test:markdown-rules` pass
- [x] #5 `pnpm run check:lectures` passes
<!-- DOD:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Shipped in 1fc56fe and reshaped by later commits; this record now describes the current files. d0a3476 split process-requirements.md, so the section is user-stories-requirements.md#minimum-usable-product-candidate, linked from MoSCoW rule 7 and the MUP line in prototypes-requirements.md. e4c1873 and 27cb69a removed the drop-first story; rule 3 (every story needed) and rule 6 (a dropped story keeps its priority) replace it. b0332c7 and 0fe3575 made the verdict a DEC-nn in docs/decisions.md that the candidate cites, so there is no verdict row or Changes cell. weekly-report-requirements.md item 11 owns how the README records the candidate. 1fefe23 moved the assignment part to Part 7; ae3ec06 keeps in-report deliverables out of the coverage table, so the candidate is report item 3, not a coverage row. Guide Step 4 and syllabus Week 2 deliverable 4 and Minima are unchanged and agree. No content change was needed. Gates, deck check, and a check of all 536 in-repository heading anchors pass.
<!-- SECTION:NOTES:END -->
