---
id: TASK-043
title: Cut assignment 2 down to week deltas
status: Done
assignee: []
created_date: '2026-10-05 03:20'
updated_date: '2026-10-05 03:43'
labels: []
dependencies: []
references:
  - assignments/assignment-2.md
  - guides/validating-with-the-customer.md
priority: high
type: docs
ordinal: 43000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
assignments/assignment-2.md restated most of requirements/ around a few Week 2 deltas, against AGENTS.md Layering rule 1, and the copies had drifted from their owners: the stakeholders list lost 'who pays', the Issue Form lost the required Priority reason field, prototypes.md had three different field lists, and the report list lost Decisions and the LICENSE link. Decided with the course owner: strict deltas per Part, Parts reordered to follow the week, a deliverables-only checklist, the Part 6 example questions moved to the validating guide, What Good Looks Like trimmed to quality signals.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 Each Part of assignments/assignment-2.md links the owning requirement sections and states only Week 2 paths, minima, and specifics, with no numbered rule or list copied from requirements/
- [x] #2 The Parts follow the week: kickoff action points, vision, stories, MUP candidate, prototype, meeting, Markdown CI, AI usage; the table of contents and every #part- link match
- [x] #3 Before You Start lists General, Visibility, and Weekly Report Requirements, and names the Week 1 report as a file in the team's repository rather than linking a requirements file
- [x] #4 The repository report, Moodle, and Submission Procedure sections link their owners and list only this week's additions and private items
- [x] #5 The Checklist has one item per deliverable, each linking its Part, with no rule restated
- [x] #6 What Good Looks Like keeps only quality signals and no bullet restates a rule
- [x] #7 guides/validating-with-the-customer.md carries the prototype, boundary, and MUP candidate example questions, with no week number
- [x] #8 Every link and heading anchor in the changed files resolves
- [x] #9 Every Part of assignments/assignment-2.md opens with 'The rules:', one bullet per section, a verb phrase specific to that Part and a link, with no numbers, minima, or field lists
- [x] #10 Every section marked Since: W2 in requirements/, plus Branch Protection And Pull Requests and Weekly Public Report, is linked from assignments/assignment-2.md
- [x] #11 product-vision-requirements.md Goal asks for the goal in one sentence
- [x] #12 assignments/assignment-2.md states once, as a repository report item, that a declared deviation is allowed
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
1. Rewrite assignments/assignment-2.md per the approved plan: reorder Parts, each Part a rules line plus Week 2 deltas, trimmed report/Moodle/checklist/What Good Looks Like, fixed Before You Start.
2. Add the example questions to guides/validating-with-the-customer.md Step 2, week-neutral.
3. Format, run the gates, resolve anchors with github-slugger.

4. Follow-up review: give every Part a rule list of linked sections (each section linked from every Part it covers), move the goal length into Goal rule 3 as one sentence, and add the deviations report item.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Dropped the 'one short paragraph' goal length: the guide's Step 1 says one sentence and the requirement says keep it short, so the assignment no longer contradicts either. The Moodle list and the 'two pages' limit stay, per the AGENTS.md assignment checklist item 5. Deviations and the privacy line are not restated, per checklist item 6 (Week 1 states them once). Verification: grep for 18 phrases copied from requirements/ finds only the Week 1 action-point context line; a github-slugger script resolves every relative link and anchor in both files; no file links an assignment-2 anchor; all four Markdown gates and check:lectures pass.

Follow-up review: the 'one short paragraph' note above is superseded. The goal length now lives in product-vision-requirements.md Goal rule 3 as one sentence, which matches the guide, the Objectives, and the full example. Every Part opens with 'The rules:', one verb-phrase bullet per linked section, and a section appears in every Part whose work it covers (Validation in Parts 5 and 6, Meeting Report in Parts 1, 4, and 6). The deviations permission is report item 7. Verification: a scratchpad script confirms all 16 Since: W2 sections plus Branch Protection And Pull Requests and Weekly Public Report are linked; the copied-phrase grep finds nothing; the anchor check resolves every link outside code fences; all gates pass.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Rewrote assignments/assignment-2.md: the Parts follow the week, and each opens with linked rule bullets (a verb phrase per section, no numbers or lists) followed by only the Week 2 paths and minimums. Before You Start was fixed, the report, Moodle, and checklist sections link their owners, the report states once that a declared deviation is allowed, and What Good Looks Like keeps only quality signals. product-vision-requirements.md Goal now asks for one sentence. The Part 6 example questions moved to guides/validating-with-the-customer.md Step 2. Verified with the four Markdown gates, check:lectures, a github-slugger anchor check, and a script that confirms every Since: W2 section is linked.
<!-- SECTION:FINAL_SUMMARY:END -->
