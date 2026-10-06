---
id: TASK-080
title: >-
  Name the alternative and gap field labels in the research requirements, and
  add full examples
status: Done
assignee: []
created_date: '2026-10-06 12:25'
updated_date: '2026-10-06 12:36'
labels: []
dependencies:
  - TASK-079
ordinal: 76000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Decided on 2026-10-06.
Problem: the ALT field labels and most GAP labels (`Kind`, `Depth of evaluation`, `Who needs it and what they cannot do`, `Confidence`) existed only in the guide examples, so the normative shape of an artifact lived in an explanatory file. research-requirements.md and prototypes-requirements.md had no Full Example, against the artifact-file order in AGENTS.md.
Decisions:
- The labels move into research-requirements.md, in this order.
  - ALT: Status, Kind, Link, Version looked at, Depth of evaluation, Problem it solves, then the Observations by property table and the Strengths and Weaknesses lists.
  - GAP: Status, Who needs it and what they cannot do, Evidence, What closing it looks like, Buildable by us in this course, Confidence, Rests on, Changed, Dropped.
- research-requirements.md gets a Full Example with one ALT, one GAP, and one VP, and prototypes-requirements.md gets one with a prototype record on the US-01 and ASM-02 chain.
- The guides keep their method examples, aligned to the same labels and order.
- Since W2 for the labels, because the field list form already is.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 research-requirements.md Alternatives names the ALT field labels in the decided order
- [x] #2 research-requirements.md Gap Analysis names the GAP field labels in the decided order
- [x] #3 research-requirements.md ends with a Full Example of one ALT, one GAP, and one VP, consistent with the other examples
- [x] #4 prototypes-requirements.md ends with a Full Example of one prototype record on the US-01 and ASM-02 chain, in rule 2's field order
- [x] #5 The ALT and GAP examples in guides/ use the same labels in the same order
- [x] #6 The four Markdown gates pass
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
Alternatives rule 6, Gap Analysis rule 9, and Value Proposition rule 9 (all Since W2) name each section's parts and their order in a table: ALT runs Status, Kind, Link, Version looked at, Depth of evaluation, Problem it solves, the Observations by property table, Strengths, Weaknesses, Dropped; GAP runs Status, the four tests, Confidence, Rests on, Changed, Dropped; VP was added for the same reason. Confidence moved from a Recommended line into the GAP fields. research-requirements.md ends with a Full Example of ALT-01, GAP-01, and VP-01, and prototypes-requirements.md labels rule 2's fields and ends with a Full Example of the pay-before-confirm prototype on US-01 and ASM-02. The guide's ALT-01 gains the sixth property row, and Assignment 2 Part 4 renames the fields to the labels in the catch-up pull request.
<!-- SECTION:FINAL_SUMMARY:END -->
