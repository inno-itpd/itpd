---
id: TASK-033
title: Make the validating guide the method for every weekly customer meeting
status: In Progress
assignee: []
created_date: '2026-10-05 00:18'
updated_date: '2026-10-05 00:19'
labels: []
dependencies: []
references:
  - guides/validating-with-the-customer.md
  - requirements/process-requirements.md
  - requirements/artifact-requirements.md
priority: high
type: docs
ordinal: 33000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Teams meet the customer every week from W1: the kickoff in W1, the prototype meeting in W2, and from W3 a weekly meeting that shows working software. guides/validating-with-the-customer.md claims to cover every meeting after the kickoff, but its content is the W2 prototype meeting: Step 6 always routes the change into prototypes.md, a meeting that changed nothing is called a serious finding, and the kickoff is 'settled a week ago'. The requirements never state that a meeting happens every week. Decided with the course owner: one general guide with prototype-specific steps conditional; Validation's 'something must change' and prototypes.md apply to any meeting from W2 where a prototype is shown; a progress meeting may change nothing; a story the customer accepts as done is a ## Decisions row naming the US-nn plus a dated comment on its issue; the full meeting script, including one Key improvements rewrite, stays required every week.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 process-requirements.md#meeting-with-the-customer requires one meeting with the customer every week from W1, the W1 one being the kickoff
- [x] #2 process-requirements.md#validation states it applies to any meeting where a prototype is shown, from W2, so 'something must change' is not required of a meeting that shows no prototype
- [x] #3 process-requirements.md carries a **Since: W3** rule for meetings that show working software: each story shown against its AC-nn, acceptance or rejection as a ## Decisions row naming the US-nn, a dated issue comment linking the meeting report, and a rejection naming the failed AC-nn
- [x] #4 guides/validating-with-the-customer.md covers every weekly meeting after the kickoff: prototypes.md routing and the must-change rule are conditional on showing a prototype, accepting an increment is a valid outcome, and no text assumes the meeting is in Week 2
- [x] #5 assignments/assignment-2.md Part 6 and the README routing still read correctly against the changed guide and requirements
- [x] #6 Every changed link and heading anchor resolves
<!-- AC:END -->

## Definition of Done
<!-- DOD:BEGIN -->
- [x] #1 All acceptance criteria are satisfied
- [x] #2 Changed Markdown files are formatted: `pnpm run format:markdown`
- [x] #3 `pnpm run lint:markdown` passes
- [x] #4 `pnpm run test:markdown-format` and `pnpm run test:markdown-rules` pass
- [x] #5 `pnpm run check:lectures` passes
<!-- DOD:END -->

## Implementation Plan

<!-- SECTION:PLAN:BEGIN -->
1. process-requirements.md Meeting With The Customer: weekly-meeting rule, rule 7 clarification, Since: W3 working-software block, W3 example.
2. process-requirements.md Validation: scope line tying the rules to meetings that show a prototype.
3. Guide: intro, What You Produce, Steps 1, 4, 6, and Common Mistakes made general, with prototype parts conditional.
4. Check README, assignment-2 Part 6, course/rules.md, artifact-requirements Meeting Script/Report for contradictions.
5. Format and run the gates.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Changes:
- process-requirements.md Meeting With The Customer: 'Required every week' (one meeting per week, W1 is the kickoff); rule 7 allows a confirming decision and ties must-change to Validation; new 'Required when you show working software' block marked Since: W3 (verdict per story against AC-nn, Decisions row naming US-nn, dated issue comment); a W3 example.
- process-requirements.md Validation: scope line, applies to any meeting that shows a prototype from W2.
- guides/validating-with-the-customer.md: intro, What You Produce, Steps 1, 4, 6, and Common Mistakes made general; prototypes.md and the must-change finding conditional on a prototype; accepted stories are a valid result.
- AGENTS.md: later weeks always write a meeting script, since the customer is met every week.
- assignment-2 Part 6, README routing, and course/rules.md checked: no edit needed.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
The validating guide and the meeting requirements now cover a weekly customer meeting from W1, with the prototype rules conditional on showing a prototype and a Since: W3 rule for accepting working software. All four Markdown gates and check:lectures pass.
<!-- SECTION:FINAL_SUMMARY:END -->
