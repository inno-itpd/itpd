---
id: TASK-049
title: Record every story change as a body edit plus an issue comment
status: Done
assignee: []
created_date: '2026-10-05 08:33'
updated_date: '2026-10-05 08:34'
labels:
  - docs
dependencies: []
priority: high
ordinal: 49000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Where Stories Live required an issue comment only for changes after a customer meeting, while MoSCoW rule 6 required one for every priority change, so the change-record rule had two owners and a team-decided edit to a statement or criterion needed no comment. The full example put the comment inside the issue body and kept dated change history in Notes. The hybrid model stays: the body states the current story, and a comment records what changed, why, and which decision.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 Where Stories Live is the single owner of the change record: the body is edited to the current state, and every change to the title, statement, Traces to, acceptance criteria, moscow label, or priority reason after the first weekly report adds a comment linking the decision
- [x] #2 Notes, the checklist, and formatting-only changes are exempt, and the comment carries no typed date because GitHub timestamps it
- [x] #3 MoSCoW rule 6 states only the priority delta and links Where Stories Live, and a Won't Have closing comment may be the same comment
- [x] #4 The full example shows the issue body and each comment as separate blocks, with no change history in Notes
- [x] #5 No 'dated comment' remains in requirements/, guides/, assignments/, or course/
- [x] #6 The Markdown format check, lint, and both plugin fixtures pass
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
Where Stories Live rule 3 now owns the change record for every story part, with the drafting, notes, and formatting exemptions and no typed date; MoSCoW rule 6 keeps only the old and new label; the full example separates the body from each comment; 'dated comment' is gone from the guide, the verdict rule, and assignment 2.
<!-- SECTION:FINAL_SUMMARY:END -->
