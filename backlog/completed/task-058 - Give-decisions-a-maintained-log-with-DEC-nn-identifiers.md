---
id: TASK-058
title: Give decisions a maintained log with DEC-nn identifiers
status: Done
assignee: []
created_date: '2026-10-05 11:28'
updated_date: '2026-10-05 13:00'
labels:
  - docs
dependencies: []
priority: low
ordinal: 58000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
A decision is cited by its report path, the #decisions anchor, and its sentence quoted, but #decisions lands on a whole table whose rows have no anchors, and the examples mostly paraphrase or only link. Replace the mechanism: every decision, from a meeting or the team, is a `## DEC-nn: <decision>` entry in a maintained docs/decisions.md, and the artifacts it changed cite its DEC-nn. Started as the question of where a decision citation quotes its sentence, postponed from TASK-057.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 requirements/decisions-requirements.md owns docs/decisions.md: where it lives, the DEC-nn entry and its Date, Made by, Source, Why, and Status fields, what cites a decision, reversing one, and a full example
- [x] #2 DEC-nn is a Week 1 identifier family in general-requirements.md and AGENTS.md; action points stay non-identifiers
- [x] #3 A meeting report lists its DEC-nn under ## Decisions, ## Previous action points names a Decision instead of Changes, and the weekly report has no ## Decisions section
- [x] #4 No decision carries a Changes list, TBD, or None; every rule and example that cites a decision cites its DEC-nn
- [x] #5 Assignment 1 and Assignment 2 use docs/decisions.md, and Assignment 2 has the one-time move of the kickoff decisions
- [x] #6 A follow-up task removes the one-time decisions move from Assignment 2 after this term
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
1. Write requirements/decisions-requirements.md.
2. Update general, customer-meetings, and weekly-report requirements.
3. Make assumptions, user-stories, product-vision, prototypes, and research requirements cite DEC-nn.
4. Update the validating and stories guides.
5. Update assignments 1 and 2, with the one-time move in A2.
6. Update AGENTS.md.
7. Create the follow-up removal task.
8. Run the gates.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Decisions taken with the maintainer: a maintained docs/decisions.md rather than quoting or report-local IDs; Since W1, with a one-time move in Assignment 2 this term; the meeting report lists `DEC-nn: <heading>` links; the weekly report drops ## Decisions; no Changes field, because the artifact that rests on a decision cites it; Source links the meeting report, or says in words where a decision was made elsewhere and links only a public place; Why is always required; a reversal is a new DEC-nn plus `Reversed by DEC-nn` on the old one, and a heading is never reworded; accepted stories may share one verdict entry, a rejection gets its own; action points keep no identifier; a moved kickoff entry writes Why from the Week 1 report and transcript.

Also added a Decision Requirements row to the routers in README.md and course/rules.md. Assignment 2 puts the one-time move in Part 1, because the vision and the stories cite kickoff decisions. TASK-059 removes the move after this term.

Verified: format:markdown:check, lint:markdown, test:markdown-format, test:markdown-rules, and check:lectures pass; rg finds no #decisions citation of a single decision and no TBD, and the only Changes mentions left are the Week 1 column the A2 move reads and the AGENTS.md line saying there is none; every new DEC and section anchor matches its heading.

Review follow-up: the A2 move also covers the team decisions table in reports/week-01/README.md, numbered after the kickoff rows; a Previous action points Outcome links each artifact it changed, and Decision lists each DEC-nn or None when no decision was needed; DEC-01 Why no longer states the unchecked unpaid-time claim; the kickoff example names GAP-01 and drops GAP-04 from the gap analysis, matching DEC-02; a decision is reversed, not replaced, so Reversed by is the one status. The short boundary example keeps DEC-02 unlinked because it is a live table in requirements/, where decisions.md does not resolve.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Decisions are now DEC-nn entries in a maintained docs/decisions.md, owned by requirements/decisions-requirements.md. Every artifact a decision changed cites its DEC-nn; meeting reports list their decisions, and the weekly report has no decisions section. Assignment 2 carries a one-time move of the Week 1 decisions, which TASK-059 removes after this term.
<!-- SECTION:FINAL_SUMMARY:END -->
