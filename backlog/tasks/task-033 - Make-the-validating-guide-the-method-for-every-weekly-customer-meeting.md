---
id: TASK-033
title: Make the validating guide the method for every weekly customer meeting
status: Done
assignee: []
created_date: '2026-10-05 00:18'
updated_date: '2026-10-05 19:21'
labels: []
dependencies: []
references:
  - guides/validating-with-the-customer.md
  - requirements/customer-meetings-requirements.md
  - requirements/prototypes-requirements.md
  - requirements/decisions-requirements.md
priority: high
type: docs
ordinal: 33000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Teams meet the customer every week from W1: the kickoff in W1, the prototype meeting in W2, and from W3 a meeting that shows working software. The validating guide claimed every meeting after the kickoff but described only the W2 prototype meeting, and the requirements never said a meeting happens every week. Settled with the course owner: one general guide, with the prototype steps conditional; Validation's 'something must change' and prototypes.md apply to any meeting from W2 where a prototype is shown; a story the customer accepts or rejects is a DEC-nn decision naming the US-nn, cited by a comment on its issue; the full meeting script, including one Key improvements rewrite, stays required every week. Settled while closing it: every meeting settles its target with at least one decision, which may confirm the current direction, and a meeting with no decision is a deviation.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 customer-meetings-requirements.md#every-meeting requires one meeting with the customer every week from W1, the W1 one being the kickoff
- [x] #2 prototypes-requirements.md#validation applies to any meeting where a prototype is shown, from W2, so 'something must change' is required only of a meeting that shows a prototype
- [x] #3 customer-meetings-requirements.md#showing-working-software, Since: W3, requires each story shown against its AC-nn, each verdict a decision naming the US-nn, a rejection naming each failed AC-nn, and a comment on the story issue citing the DEC-nn
- [x] #4 guides/validating-with-the-customer.md covers every weekly meeting after the kickoff: prototypes.md and the must-change rule are conditional on showing a prototype, accepting a story is a valid confirming decision, and no text assumes the meeting is in Week 2
- [x] #5 Every Meeting item 7 requires every meeting to settle its target with at least one decision, which may confirm the current direction, and guide Step 6 declares a meeting with no decision as a deviation
- [x] #6 assignments/assignment-2.md Part 10 and the README routing read correctly against the changed guide and requirements
- [x] #7 Every changed link and heading anchor resolves
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
Shipped in 3497271 and reshaped by later commits; this record now describes the current files. d0a3476 split process-requirements.md, so the weekly-meeting rule and the Since: W3 block are customer-meetings-requirements.md#every-meeting and #showing-working-software, and the Validation scope line is prototypes-requirements.md#validation. b0332c7, 0fe3575, and f0a6e02 made a story verdict a DEC-nn decision naming the US-nn, cited by the issue comment, instead of a Decisions row with a dated comment; decisions-requirements.md rule 4 lets one decision accept several stories. 1fefe23 moved the Assignment 2 meeting to Part 10. Closing it, item 7 of Every Meeting no longer says only a prototype meeting must change something: every meeting settles its target with at least one decision, which may confirm the current direction, and a prototype meeting must also change something. Guide Step 6 replaces the working-software exemption with that rule and declares a meeting with no decision as a deviation. Assignment 2 Part 10 already requires two or more decisions, and the README, course/rules.md, and the decisions rules agree. The syllabus does not state the weekly meeting yet; that is TASK-071. Gates, deck check, backlog doctor, and a check of all 539 in-repository heading anchors pass.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
The validating guide and the meeting requirements cover a weekly customer meeting from W1: the prototype rules apply only when a prototype is shown, a Since: W3 rule covers accepting working software, and every meeting settles its target with at least one decision. All four Markdown gates and check:lectures pass.
<!-- SECTION:FINAL_SUMMARY:END -->
