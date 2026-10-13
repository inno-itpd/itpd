---
id: TASK-086
title: Fix the review findings on TASK-079 to TASK-085
status: Done
assignee: []
created_date: '2026-10-06 13:08'
updated_date: '2026-10-06 13:14'
labels: []
dependencies: []
ordinal: 82000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Decided on 2026-10-06, in a review of the TASK-079 to TASK-085 commits.
Problem: the Week 2 catch-up in Assignment 2 Part 4 asked for work in a pull request most teams had already merged, and deleted a dropped gap's affected-list without moving the record into the value propositions. An alternative's Dropped field rendered inside its Weaknesses list. "Link every pull request to its issue" let a sidebar-linked story close on merge. Boundary items could be dropped only when the product took the job over, and Boundary rule 4 restated the entry trigger. "Rests on" was used generically after it became an ASM-only list. A permanent general rule held a one-time migration.
Decisions:
- The Week 2 catch-ups stay Required in W2.
- A value proposition keeps a dropped GAP-nn under Closes and records the drop under Changed; one left with no active gap is dropped too.
- An ALT's Dropped is last in the field list, before the Observations table.
- An action point may be closed in any later report once it is carried out, not only in the report of the meeting it is due by.
- The ASM move from Traces to into Rests on is listed among the story edits that need no comment, not as a formatting-only change.
- Assignment 2 Part 9 is renamed to cover open questions, customer-meetings-requirements.md gets a Week 2 meeting report example, and the lecture-2 boundary slide shows a BND-nn section.
Since W2.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 Assignment 2 Part 4 item 5 allows a pull request of its own when the item 3 and 4 pull request is already merged, and tells teams to record a dropped gap under Changed of each value proposition that closes it
- [x] #2 research-requirements.md Value Proposition And Differentiation: a value proposition keeps a dropped GAP-nn under Closes, records the drop under Changed, and is dropped when no active gap is left
- [x] #3 research-requirements.md Alternatives rule 6 puts Dropped last in the field list, before the Observations table
- [x] #4 general-requirements.md rule 12, Gap Analysis rule 6, and What Cites It rule 1 say cites rather than rests on for links that are not an ASM-nn
- [x] #5 repository-requirements.md Issue Tracking rule 7 and Assignment 2 Part 1 say reference rather than link, and a story's pull request is not linked from the Development sidebar
- [x] #6 product-vision-requirements.md Boundary: Dropped applies to any dropped item, and rule 4 links the entry trigger in decisions-requirements.md instead of restating it
- [x] #7 general-requirements.md Where Artifacts Live rule 6 is gone, the ASM move is in the no-comment list of Where Stories Live rule 3, and Assignment 2 Part 1 links it
- [x] #8 customer-meetings-requirements.md: Previous open questions directly follows Previous action points in the rules, an action point carried out early may be closed, and Full Examples has a Week 2 meeting report
- [x] #9 Assignment 2 Part 9 is titled Carry Out The Kickoff Action Points And Open Questions, and every link to it resolves
- [x] #10 lectures/lecture-2.typ boundary slide shows a BND-nn section, and its PDF is rebuilt
- [x] #11 The four Markdown gates and the deck check pass
<!-- AC:END -->

## Definition of Done
<!-- DOD:BEGIN -->
- [x] #1 All acceptance criteria are satisfied
- [x] #2 Changed Markdown files are formatted: `pnpm run format:markdown`
- [x] #3 `pnpm run lint:markdown` passes
- [x] #4 `pnpm run test:markdown-format` and `pnpm run test:markdown-rules` pass
- [x] #5 `pnpm run check:lectures` passes
<!-- DOD:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Assignment 2 Part 4 item 5 allows a pull request of its own when the item 3 and 4 one is merged, and has each value proposition that closes a dropped gap record the drop. Value Proposition rule 10 (Since W2) keeps a dropped GAP-nn under Closes, records the drop under Changed, and drops a value proposition left with no active gap. An ALT's Dropped is last in its field list, so it cannot render inside Weaknesses. Identifier Rules rule 12, Gap Analysis rule 6, and What Cites It rule 1 say cites, leaving rests on to ASM-nn. Issue Tracking rule 7 and Assignment 2 Part 1 say reference, and a story's pull request is not linked from the Development sidebar. A BND-nn can be dropped for any reason, and Boundary rule 4 links the entry trigger. General rule 6 is gone; the ASM move is in Where Stories Live rule 3's no-comment list. Meeting Report rule 11 is now Previous open questions, an action point carried out early may be closed, and Full Examples has a Week 2 meeting report. Assignment 2 Part 9 covers open questions, and the lecture-2 boundary slide shows BND-01 and BND-02. All five gates pass.
<!-- SECTION:FINAL_SUMMARY:END -->
