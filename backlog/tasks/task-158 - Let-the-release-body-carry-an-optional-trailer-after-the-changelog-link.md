---
id: TASK-158
title: Let the release body carry an optional trailer after the changelog link
status: Done
assignee: []
created_date: '2026-10-28 19:17'
updated_date: '2026-10-28 19:20'
labels: []
dependencies: []
modified_files:
  - requirements/releases-requirements.md
  - guides/planning-and-tracking.md
  - assignments/assignment-5.md
  - course/decisions/a5.md
priority: medium
type: docs
ordinal: 144000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
The release body rule fixes three parts and allows the team only headings, and its "may add headings" clause is ambiguous about whether a heading may introduce content that is not one of the parts. The body has no technical job since A5-DEC-038 moved the record to the plan's REL-nn block, so its only job is communication, and a team can have customer-facing guidance the three parts cannot carry: an upgrade step, or a usage note. The body should keep the required note fixed and allow an optional trailer after the Full changelog line, bounded by A5-DEC-037's ownership test: each part states a fact that is customer-facing and that no other record carries, with the whole-body prohibitions applying to it. Settled with the maintainer to land now, across the requirement, its example, the planning guide, Assignment 5, and a new A5-DEC entry.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 requirements/releases-requirements.md#cutting-a-release fixes the three required parts and their order, makes the Full changelog line close the required note, and allows an optional trailer after it.
- [x] #2 The same section applies the whole-body prohibitions to the trailer: no REL-nn/QR-nn/QRT-nn citation, quality claim, test result, testing-plan or week-report link, production check, metadata restatement, or repeated changelog entry.
- [x] #3 The section states the ownership test: a trailer part is customer-facing and a fact no other record carries.
- [x] #4 The full example's release body shows the required note and one trailer, and its prose names the trailer.
- [x] #5 guides/planning-and-tracking.md#write-the-release-body describes the trailer and the ownership test, links the requirement, and does not restate its rules.
- [x] #6 assignments/assignment-5.md Part 10's body bullet and this-week item allow the trailer while keeping the three required parts and the prohibitions.
- [x] #7 course/decisions/a5.md gains A5-DEC-039 with its decision, why, alternatives, where it lands, and a status noting it extends A5-DEC-038's headings clause.
- [x] #8 No other file states that the body has exactly the three parts or that nothing may follow them.
- [x] #9 All repository gates pass and the link check result is recorded.
- [x] #10 Implementation notes record the decisions made and the validation results.
<!-- AC:END -->

## Definition of Done
<!-- DOD:BEGIN -->
- [x] #1 All acceptance criteria are satisfied
- [x] #2 Changed Markdown files are formatted: `pnpm run format:markdown`
- [x] #3 `pnpm run lint:markdown` passes
- [x] #4 `pnpm run test:markdown-format` and `pnpm run test:markdown-rules` pass
- [x] #5 `pnpm run check:lectures` passes
- [x] #6 `pnpm run check:links` passes
- [x] #7 Implementation notes record the decisions made and the validation results
<!-- DOD:END -->

## Implementation Plan

<!-- SECTION:PLAN:BEGIN -->
1. `requirements/releases-requirements.md`: rewrite the `**Since: W5**` rules 4-6 into four rules. The required note keeps its three parts and order and the `Full changelog` line closes it; an optional additional content may follow that line, each part stating something a customer needs that no other record carries, with the team choosing its headings; the whole-body prohibitions apply to the additional content too (no identifier citation, quality claim, test result, testing-plan or week-report link, production check, metadata restatement, or repeated changelog entry); the three parts and their order stay fixed. Update the full example with one trailer and name it in the prose.
2. `guides/planning-and-tracking.md#write-the-release-body`: make the link close the note, add a short paragraph on the additional content and its ownership test, link the rule, and keep the guide explanatory.
3. `assignments/assignment-5.md` Part 10: the body bullet and the this-week item allow the additional content while keeping the three required parts and the prohibitions.
4. `course/decisions/a5.md`: add `A5-DEC-039` with the decision, why, alternatives, and where it lands, and note on `A5-DEC-038` that its headings clause is extended.
5. Check `AGENTS.md`, `README.md`, `SKILL.md`, `course/rules.md`, and `requirements/planning-requirements.md` for a claim that the body is closed; none is expected, so no edit unless one is found.
6. Run `format:markdown`, `format:markdown:check`, `lint:markdown`, both plugin suites, `check:lectures`, `check:links`, and `backlog doctor`; record results in the task.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Model: the required note keeps its three parts and their order, and the `Full changelog` line closes it; the body may then carry additional content, whose headings the team chooses, and everything in it must be something a customer needs that no other record carries. Rule 6's prohibitions now say `Everything in the body, the additional content included`, and add that the body does not repeat a changelog entry. `A final line` became the line `closing the required note`, and rule 7 keeps the three parts fixed.

Decisions: student-facing text says `additional content` rather than the task's `trailer`, because students read the requirement; the example's extra is an upgrade note, chosen because it is customer-facing, tied to the release, and owned by no other record; the guide shows the method and links the rule instead of restating its list; `A5-DEC-039` records the change, and `A5-DEC-038`'s status plus its `A5-DEC-027` clause now name the extension, so the log stays current without rewriting the reversal. The routers (`AGENTS.md`, `README.md`, `SKILL.md`, `course/rules.md`) and `requirements/planning-requirements.md` only name the user-facing body, so they needed no edit; the completed TASK-156 and TASK-157 records stay historical.

Validation on the final tree: `format:markdown` exit 0; `format:markdown:check` exit 0; `lint:markdown` exit 0; `test:markdown-format` 34/34; `test:markdown-rules` 34/34; `check:lectures` 5 decks with Typst 0.15.1; `check:links` 2522 total, 2520 OK, 0 errors, 2 excluded, 1 redirect; `backlog doctor` clean. No new tasks created. Risk: this is a mid-Week-5 loosening of graded material; a team already complying with the old text stays compliant, because the old shape still satisfies the new rule.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Let the release body carry optional additional content after the `Full changelog` line. The required note is unchanged: the summary or `No changes visible to a user`, the limitation or `None`, and the `Full changelog` link that closes it. The body may then add content a customer needs that no other record carries, such as an upgrade step, a screenshot, or where to find the change, with the team choosing its headings; the whole-body prohibitions now explicitly cover it, including no repeated changelog entry. This settles the ambiguity in "the team may add headings" and gives genuine customer-facing guidance a home instead of forcing it into the limitation paragraph. Aligned the planning guide, Assignment 5 Part 10, and `A5-DEC-039`, with `A5-DEC-038`'s status and its `A5-DEC-027` clause naming the extension. Validation: `format:markdown`, `format:markdown:check`, `lint:markdown`, both plugin suites, `check:lectures`, `check:links` (2522 total, 2520 OK, 0 errors, 2 excluded, 1 redirect), and `backlog doctor` all pass.
<!-- SECTION:FINAL_SUMMARY:END -->
