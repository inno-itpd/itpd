---
id: TASK-057
title: >-
  Resolve the Week 2 inconsistencies in the examples, the CI example, and
  assignment 2
status: Done
assignee: []
created_date: '2026-10-05 11:17'
updated_date: '2026-10-05 11:32'
labels:
  - docs
dependencies: []
priority: medium
ordinal: 57000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
A sweep of guides/, requirements/, and assignment 2 found examples that contradict the rules beside them, a Markdown check example that fails the example meeting script, wording drifts between assignment 2 and the rules, and open TODO comments in student-facing source.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 The vision example's customer-given VPS constraint names the kickoff decision and links the kickoff report's #decisions, closing its TBD
- [x] #2 The multi-expert boundary item links the kickoff decision, and the kickoff report gives the same reason: the experts work alone
- [x] #3 The kickoff report's disagreements agree with its decisions and script: the Telegram row is replaced by the reminders disagreement, written in the first person
- [x] #4 The kickoff decision to build paid bookings names the dropped VP-02 in Changes
- [x] #5 The story issue examples use the headings an issue form renders, and the example sentences are one per line
- [x] #6 The stories guide's criterion example uses the meeting booking app
- [x] #7 The comparison guide's row example is a real table, its VP-01 cites the same assumptions as the research example, and Step 4 names the third test
- [x] #8 Assignment 2 and the stories guide name what a prototype cites as the requirement does: the story or gap, plus the assumption when it is the risky part
- [x] #9 Assignment 2 Part 1 matches the story rule's wording and names where an outcome usually lands
- [x] #10 The kickoff guide no longer claims Key improvements survives into the meeting report
- [x] #11 Assignment 2 says 'a reader' in its objectives and 'publish it' in the Moodle list
- [x] #12 The example meeting script passes the example markdownlint config: its question groups and key improvements are headings
- [x] #13 A team may mark a story with the user-story label, an issue type, or an issue field, and its priority with a moscow label or an issue field; the label stays the default
- [x] #14 MoSCoW rule 6 is reworded and no TODO or HTML comment is left in requirements/, guides/, or assignments/
- [x] #15 The Showing Working Software refinement is recorded on TASK-010
<!-- AC:END -->

## Definition of Done
<!-- DOD:BEGIN -->
- [ ] #1 All acceptance criteria are satisfied
- [ ] #2 Changed Markdown files are formatted: `pnpm run format:markdown`
- [ ] #3 `pnpm run lint:markdown` passes
- [ ] #4 `pnpm run test:markdown-format` and `pnpm run test:markdown-rules` pass
- [ ] #5 `pnpm run check:lectures` passes
<!-- DOD:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Decisions taken with the maintainer: the reminders disagreement replaces the Telegram one; the multi-expert boundary keeps "the experts work alone"; the kickoff decision names the dropped `VP-02`; the story examples use the `###` headings an issue form renders; a prototype cites its story or gap, plus the assumption when that is the risky part; a story may be marked by the `user-story` label (default), an issue type, or an issue field, and its priority by a `moscow:*` label (default) or an issue field; the example markdownlint config turns off `MD029` as well as `MD013`, because a meeting script numbers its questions across area groups.

The comparison guide's Step 5 `VP-01` keeps no `**Rests on:**` line, because Step 6 is where it gains one; Step 6 now cites and defines `ASM-03` as the research example does.

Verified with `npx markdownlint-cli2` and the example config: the example meeting script failed on `MD036` and `MD029` before, and all seven full-document examples in `requirements/` pass after.

Decision-citation quoting was postponed into its own task. The comparison guide's GAP-01 example also lost its `**Dropped:** see GAP-04.` line: no rule gives a live gap a dropped field, the drop belongs on GAP-04's own entry, and GAP-04 is dropped only at the kickoff, after the Week 1 state the guide shows.
<!-- SECTION:NOTES:END -->
