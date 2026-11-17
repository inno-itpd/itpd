---
id: TASK-178
title: 'Ask how teams used AI, not what they did with each output'
status: Done
assignee: []
created_date: '2026-11-17 17:09'
updated_date: '2026-11-17 17:12'
labels: []
dependencies: []
references:
  - requirements/weekly-report-requirements.md
  - course/rules.md
modified_files:
  - requirements/weekly-report-requirements.md
  - course/rules.md
  - assignments/assignment-1.md
  - assignments/assignment-2.md
  - assignments/assignment-3.md
  - assignments/assignment-4.md
  - assignments/assignment-5.md
  - assignments/assignment-6.md
  - assignments/assignment-7.md
  - assignments/assignment-8.md
priority: high
type: docs
ordinal: 163000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
The AI usage report currently asks students to account for each output: what they accepted, changed, and rejected. That reads as an inventory and invites a list of prompts and replies rather than reflection. The course wants to know how teams use the tools, what worked, and what did not, so the report should ask for that instead, while still keeping generated text checked and the Week 7 and Week 8 privacy disclosures.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 The AI Usage Report section in requirements/weekly-report-requirements.md asks for the tools and the kind of work, how the team used them and checked them, what worked, and what did not
- [x] #2 The section no longer asks what the team accepted, changed, or rejected for each output
- [x] #3 The section's example shows the new account and contains no per-output accept/change/reject list
- [x] #4 Every assignment's AI usage part summarizes the new rule instead of 'what you did with their output'
- [x] #5 course/rules.md#ai-tools matches the report's purpose
- [x] #6 The Week 7 and Week 8 week-specific agent disclosures are unchanged
- [x] #7 pnpm run format:markdown, pnpm run lint:markdown, and the Markdown fixture tests pass
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
5. Run the Markdown gates and the fixture tests; run the link check and the lecture check if the environment allows.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Rewrote the AI Usage Report around how the team worked with the tools instead of what it did with each output. Rules 2-5 now ask for the tools and the kind of work, how the team used them and checked them, what worked, and what did not. Kept the no-tools line, the unchecked-text grade consequence, and the Week 7 and Week 8 privacy disclosures. Removed the accept/change/reject phrasing and its repetition in all eight assignments; each assignment now summarizes the rule and keeps only its week-specific addition. Rewrote the example as Tools, How we used them, What worked, What did not work. Changed rules.md's 'could a reader tell which parts are yours?' to match the new purpose.

Validation: pnpm run format:markdown and format:markdown:check, pnpm run lint:markdown, both Markdown fixture suites (34 tests each), pnpm run check:lectures (8 decks, Typst 0.15.1), and pnpm run check:links (4151 links, 923 unique, 0 errors).
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
The AI usage report now asks teams to describe how they used the tools, what worked, and what did not, instead of accounting for every output. The requirement, its example, all eight assignments, and the course-rules summary are aligned; the Week 7 and Week 8 privacy disclosures and the unchecked-text consequence are unchanged.
<!-- SECTION:FINAL_SUMMARY:END -->
