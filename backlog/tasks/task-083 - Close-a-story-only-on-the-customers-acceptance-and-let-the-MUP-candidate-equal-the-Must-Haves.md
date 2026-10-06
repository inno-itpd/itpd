---
id: TASK-083
title: >-
  Close a story only on the customer's acceptance, and let the MUP candidate
  equal the Must Haves
status: To Do
assignee: []
created_date: '2026-10-06 12:26'
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
- [ ] #1 user-stories-requirements.md Where Stories Live: a story closes as completed only after the customer's accepting verdict, citing its DEC-nnn, and a rejected story stays open
- [ ] #2 customer-meetings-requirements.md Showing Working Software links to the close rule
- [ ] #3 Minimum Usable Product Candidate rule 2 says a non-empty subset, without strict
- [ ] #4 The four Markdown gates pass
<!-- AC:END -->

## Definition of Done
<!-- DOD:BEGIN -->
- [ ] #1 All acceptance criteria are satisfied
- [ ] #2 Changed Markdown files are formatted: `pnpm run format:markdown`
- [ ] #3 `pnpm run lint:markdown` passes
- [ ] #4 `pnpm run test:markdown-format` and `pnpm run test:markdown-rules` pass
- [ ] #5 `pnpm run check:lectures` passes
<!-- DOD:END -->
