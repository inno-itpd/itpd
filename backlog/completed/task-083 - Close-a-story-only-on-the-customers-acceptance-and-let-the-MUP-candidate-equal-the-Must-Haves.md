---
id: TASK-083
title: >-
  Close a story only on the customer's acceptance, and let the MUP candidate
  equal the Must Haves
status: Done
assignee: []
created_date: '2026-10-06 12:26'
updated_date: '2026-10-06 12:45'
labels: []
dependencies: []
ordinal: 79000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Decided on 2026-10-06.
Problem: "stays open until it is delivered" did not say whether delivered meant merged or accepted, nor what state a rejected story is in. "A strict, non-empty subset of your Must Have stories" failed a team whose Must Haves are exactly the core task: it had to invent another Must Have or demote one.
Decisions:
- A story you intend to build closes as completed only after the customer's accepting verdict, and the closing comment cites that DEC-nnn, per Showing Working Software. A rejected story stays open.
- "strict" is dropped from MUP rule 2, because rule 3 (every story in the candidate is needed) already keeps the candidate minimal.
- The candidate stays a section of the weekly report and does not move to docs/.
- Since W2.
Rejected: closing on merge; leaving "delivered" to the Week 3 requirements; moving the candidate to docs/; keeping the strict subset.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 user-stories-requirements.md Where Stories Live: a story closes as completed only after the customer's accepting verdict, citing its DEC-nnn, and a rejected story stays open
- [x] #2 customer-meetings-requirements.md Showing Working Software links to the close rule
- [x] #3 Minimum Usable Product Candidate rule 2 says a non-empty subset, without strict
- [x] #4 The four Markdown gates pass
- [x] #5 repository-requirements.md Issue Tracking rule 7: a story's pull request references it without a closing keyword and its branch is not created from the issue, so a merge does not close it; a task keeps the auto-close
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
2026-10-06: the close-on-acceptance rule conflicted with Issue Tracking rule 7. A branch created from an issue, or a `Closes #nn` keyword, makes GitHub close the issue when the pull request merges, before any verdict. Decided: a story's pull request links it with a non-closing reference such as `Refs #42`, and its branch is not created from the issue; task issues keep the auto-close. Rejected: reopening auto-closed stories; deferring to Week 3.

Follow-up: course/syllabus.md Week 2 minima still said "a strict, non-empty subset of the Must-Have stories", so it now says "a non-empty subset", matching MUP rule 2.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Where Stories Live rule 2 keeps a story you intend to build open until the customer accepts it, then closes it as completed with a closing comment that cites the accepting verdict's DEC-nnn. A rejected story stays open, and a merged pull request does not close it. Showing Working Software rule 3 links to that rule. Issue Tracking rule 7 has a story's pull request reference it without a closing keyword, and keeps a story's branch from being created from the issue, so a merge cannot close it; a task keeps the auto-close. MUP rule 2 drops "strict", since rule 3 already keeps the candidate minimal.
<!-- SECTION:FINAL_SUMMARY:END -->
