---
id: TASK-093
title: Move the minimum usable product candidate into its own requirements file
status: Done
assignee: []
created_date: '2026-10-06 15:33'
updated_date: '2026-10-06 15:39'
labels: []
dependencies: []
ordinal: 89000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Decided on 2026-10-06.
Problem: the minimum usable product candidate is a scope proposal, not a part of a story, and Week 3 builds the MUP itself, so its rules need an owner that can grow.
Decisions:
- A new minimum-usable-product-requirements.md owns the candidate in the artifact-file shape: Where The Candidate Lives, The Candidate, Full Example.
- The recorded format (core task, each US-nn with its issue, the verdict's DEC-nnn) moves there from weekly-report-requirements.md rule 11, which becomes a link.
- The full example uses US-01 (#42) and a new US-10 (#51), the next free numbers after US-09 and #50 in the examples, with DEC-007 as the verdict.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 minimum-usable-product-requirements.md exists with Where The Candidate Lives, The Candidate, and Full Example, and every old MUP rule, recommendation, and weekly-report rule 11 lands in exactly one place
- [x] #2 user-stories-requirements.md has no MUP section, and MoSCoW rule 7 links the new file
- [x] #3 weekly-report-requirements.md rule 11 links Where The Candidate Lives without restating the format
- [x] #4 No link points at user-stories-requirements.md#minimum-usable-product-candidate; decisions, prototypes, the prototyping guide, and assignment-2.md point at the new file
- [x] #5 course/rules.md, README.md, and AGENTS.md route to the new file
<!-- AC:END -->

## Definition of Done
<!-- DOD:BEGIN -->
- [x] #1 All acceptance criteria are satisfied
- [x] #2 Changed Markdown files are formatted: `pnpm run format:markdown`
- [x] #3 `pnpm run lint:markdown` passes
- [x] #4 `pnpm run test:markdown-format` and `pnpm run test:markdown-rules` pass
- [x] #5 `pnpm run check:lectures` passes
- [x] #6 Implementation notes record the decisions made and the validation results
<!-- DOD:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
2026-10-06: The MUP section moved from user-stories-requirements.md to the new minimum-usable-product-requirements.md, in the artifact-file shape. Where The Candidate Lives takes old rule 4 (record it in the weekly public report) and the format from weekly-report-requirements.md rule 11 (the heading the assignment names, the core task, each US-nn with its issue linked, and the verdict's DEC-nnn). Rule 11 is now a link. The Candidate takes the definition, old rules 1-3 and 5-6 (renumbered 1-5; the MoSCoW link now crosses files), and the Recommended item. Full Example is the reports/week-02/README.md section: US-10 (#51, Choose a free slot) and US-01 (#42), with DEC-007 as the verdict. US-10 and #51 are the next free numbers after US-09 and #50 in the examples, and the core task paraphrases DEC-007's Why. user-stories-requirements.md lost the section, its TOC entry, and its intro mention, and MoSCoW rule 7 links the new file. The decisions, prototypes, prototyping guide, and Assignment 2 Part 7 links were retargeted, and Part 7's recording rule links Where The Candidate Lives. course/rules.md, README.md, and both AGENTS.md tables were updated.
Validation: format:markdown:check, lint:markdown, test:markdown-format, test:markdown-rules, and check:lectures pass. rg finds no user-stories-requirements.md#minimum-usable-product-candidate. The relative-link and anchor script reports 0 broken.
<!-- SECTION:NOTES:END -->
