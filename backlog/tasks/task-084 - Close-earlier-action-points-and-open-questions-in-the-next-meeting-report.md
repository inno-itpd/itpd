---
id: TASK-084
title: Close earlier action points and open questions in the next meeting report
status: Done
assignee: []
created_date: '2026-10-06 12:26'
updated_date: '2026-10-06 12:44'
labels: []
dependencies: []
ordinal: 80000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Decided on 2026-10-06.
Problem: `## Previous action points` covered only the action points "the previous meeting reports set for this week". A point due later, or one not carried out, had no closing record and no carry-forward, and open questions had no closing record at all.
Decisions:
- `## Previous action points` covers every action point of an earlier report that is due by this meeting and not yet closed.
- A point not carried out says so in its outcome and reappears in `## Action points` with a new due week.
- A new `## Previous open questions` section appears after it in every meeting after the kickoff. Its columns are `Question`, `Answer`, and `Decision`, one row per open question of an earlier report not yet closed. Each question is cited by its report path and `#open-questions` anchor, with the question quoted.
- An unanswered question is carried forward into `## Open questions`.
- Since W2, so the Week 2 report closes the kickoff open questions.
Rejected: fixing action points only; no change.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 ## Previous action points covers every earlier action point due by this meeting and not yet closed, and one not carried out reappears in ## Action points with a new due week
- [x] #2 ## Previous open questions, after it in every meeting after the kickoff, has the columns Question, Answer, and Decision, cites each question by path and #open-questions with the question quoted, and carries an unanswered one forward, Since W2
- [x] #3 Assignment 2 Part 9 and the Part 10 checklist name the new section, and guides/validating-with-the-customer.md matches
- [x] #4 The four Markdown gates pass
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
The meeting report table scopes ## Previous action points to every action point of an earlier report due by this meeting and not yet closed. Rule 10 makes an action point that was not carried out reappear in ## Action points with a new due week, unless it was dropped. A new ## Previous open questions section, for every meeting after the kickoff, closes each open question of an earlier report. Rule 12 (Since W2) gives it the columns Question, Answer, and Decision, cites the question by path and #open-questions with the question quoted, and carries an unanswered one forward into ## Open questions. Assignment 2 Part 9, its coverage row, its checklist, and the validating guide follow.
<!-- SECTION:FINAL_SUMMARY:END -->
