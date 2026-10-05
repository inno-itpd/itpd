---
id: TASK-065
title: Require a decisions entry only for shared-cause decisions
status: Done
assignee: []
created_date: '2026-10-05 16:38'
updated_date: '2026-10-05 16:39'
labels:
  - docs
dependencies: []
priority: medium
ordinal: 65000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Every decision, the customer's or the team's, needed a DEC-nn entry, so a team decision that changes one story, gap, value proposition, or assumption had its reason written twice: in the artifact's change record and in the entry. The log is worth its cost for shared causes: the customer's decisions, meeting decisions, decisions that span artifacts or have no artifact, product-wide choices, and reversals.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 decisions-requirements.md The Decision lists when a decision gets an entry: the customer made it, it was made in a meeting with the customer, it changes more than one artifact or one not yet written or none, it changes the vision's goal, a constraint, or a boundary item or is a technology choice, or it reverses a decision with an entry
- [x] #2 decisions-requirements.md says any other team decision is recorded with its reason where its one artifact records changes, and that a team may still give it an entry
- [x] #3 What Cites It says where the reason stands for a decision without an entry, with an example
- [x] #4 general-, research-, user-stories-, and assumptions-requirements.md no longer require a DEC-nn for a decision without an entry
- [x] #5 AGENTS.md Terminology no longer says every decision is a DEC-nn entry
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
The Decision now lists five conditions for an entry: the customer made it, it was made in a meeting with the customer, it changes several artifacts, one not yet written, or none, it changes the vision's goal, a constraint, or a boundary item or is a technology choice, or it reverses an entry. Any other team decision is recorded with its reason in the one artifact it changes, and may still get an entry. What Cites It rule 5 says where the reason stands, with a Changed example. General, research, user stories, and assumptions requirements and AGENTS.md require a DEC-nn only when the decision has an entry. Meeting decisions, the assignments, the guides, and the decks needed no change.
<!-- SECTION:FINAL_SUMMARY:END -->
