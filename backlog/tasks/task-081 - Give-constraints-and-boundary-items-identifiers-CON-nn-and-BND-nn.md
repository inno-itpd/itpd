---
id: TASK-081
title: 'Give constraints and boundary items identifiers: CON-nn and BND-nn'
status: To Do
assignee: []
created_date: '2026-10-06 12:25'
updated_date: '2026-10-06 12:27'
labels: []
dependencies:
  - TASK-079
ordinal: 77000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Decided on 2026-10-06.
Problem: constraints were cited by name from priority reasons and boundary Why cells, and boundary items were quoted verbatim in Won't Have reasons that live in closed issues. Both live in docs/product-vision.md, which is edited in place, so rewording an item silently broke its citations. The vision also deleted items, so a decision that removed a boundary item or a constraint was left uncited, which breaks "search for the DEC-nnn to find what it changed". Constraint rule 4 also contradicted itself: "a decision is not a constraint", then "a customer-given constraint that a decision imposed".
Decisions:
- Two identifier families arrive in W2: `CON-nn` for constraints and `BND-nn` for boundary items.
- Each is a `### CON-nn` or `### BND-nn` section under `## Constraints` or `## Boundary`, so it gets a heading anchor per Identifier Rules rule 5; there is no ID column in a table.
- CON fields: Status, Source (one of the four values), What it costs, Decision when one imposed it, Changed, Dropped.
- BND: the first line is the "will not" job, then Status, Handled by, Why, Changed, Dropped.
- A changed item records `**Changed:**` bullets as a gap does. A removed item keeps its section as Dropped, citing the DEC.
- A priority reason cites the `CON-nn`, and a Won't Have reason cites the `BND-nn` instead of quoting it.
- Constraint rule 4 is reworded: a technology choice the team made is a decision, not a constraint, and a mandate from the customer is a customer-given constraint that cites the DEC-nnn recording it.
- Since W2, applied mid-week: Assignment 2 Part 5 asks for at least 3 BND-nn sections.
Rejected: keeping text citations with a rule that rewording is a change; also adding `PRP-nn` for comparison properties; a table with an ID column, which would need an exception to rule 5.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [ ] #1 general-requirements.md Identifier Rules and the AGENTS.md conventions introduce CON-nn and BND-nn in W2
- [ ] #2 product-vision-requirements.md writes each constraint as a ### CON-nn section and each boundary item as a ### BND-nn section, with the decided fields
- [ ] #3 A changed CON or BND records Changed bullets per Gap Analysis, and a removed one keeps its section as Dropped, citing the decision
- [ ] #4 Constraint rule 4 says a team's technology choice is a decision and a customer's mandate is a customer-given constraint that cites its DEC-nnn
- [ ] #5 user-stories-requirements.md has priority reasons cite CON-nn and Won't Have reasons cite BND-nn, with US-09 citing BND-03, and decisions-requirements.md What Cites It uses the identifiers
- [ ] #6 The vision's Full Example, the boundary example, the guide's Step 1 example, and Assignment 2 Part 5 with its checklist use the sections
- [ ] #7 The four Markdown gates pass
<!-- AC:END -->

## Definition of Done
<!-- DOD:BEGIN -->
- [ ] #1 All acceptance criteria are satisfied
- [ ] #2 Changed Markdown files are formatted: `pnpm run format:markdown`
- [ ] #3 `pnpm run lint:markdown` passes
- [ ] #4 `pnpm run test:markdown-format` and `pnpm run test:markdown-rules` pass
- [ ] #5 `pnpm run check:lectures` passes
<!-- DOD:END -->
