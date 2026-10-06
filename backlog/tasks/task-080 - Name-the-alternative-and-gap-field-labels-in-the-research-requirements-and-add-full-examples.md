---
id: TASK-080
title: >-
  Name the alternative and gap field labels in the research requirements, and
  add full examples
status: To Do
assignee: []
created_date: '2026-10-06 12:25'
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
- [ ] #1 research-requirements.md Alternatives names the ALT field labels in the decided order
- [ ] #2 research-requirements.md Gap Analysis names the GAP field labels in the decided order
- [ ] #3 research-requirements.md ends with a Full Example of one ALT, one GAP, and one VP, consistent with the other examples
- [ ] #4 prototypes-requirements.md ends with a Full Example of one prototype record on the US-01 and ASM-02 chain, in rule 2's field order
- [ ] #5 The ALT and GAP examples in guides/ use the same labels in the same order
- [ ] #6 The four Markdown gates pass
<!-- AC:END -->

## Definition of Done
<!-- DOD:BEGIN -->
- [ ] #1 All acceptance criteria are satisfied
- [ ] #2 Changed Markdown files are formatted: `pnpm run format:markdown`
- [ ] #3 `pnpm run lint:markdown` passes
- [ ] #4 `pnpm run test:markdown-format` and `pnpm run test:markdown-rules` pass
- [ ] #5 `pnpm run check:lectures` passes
<!-- DOD:END -->
