---
id: TASK-014
title: Resolve the remaining Week 2 TODOs across the assignment and linked docs
status: Done
assignee: []
created_date: '2026-10-03 20:16'
updated_date: '2026-10-03 20:23'
labels: []
dependencies: []
references:
  - assignments/assignment-2.md
  - requirements/process-requirements.md
  - requirements/repository-requirements.md
  - requirements/artifact-requirements.md
  - guides/user-stories-and-prototyping.md
  - guides/validating-with-the-customer.md
  - guides/customer-interview.md
  - AGENTS.md
  - README.md
modified_files:
  - AGENTS.md
  - README.md
  - assignments/assignment-2.md
  - guides/customer-interview.md
  - guides/user-stories-and-prototyping.md
  - guides/validating-with-the-customer.md
  - lectures/lecture-2.pdf
  - requirements/artifact-requirements.md
  - requirements/process-requirements.md
  - requirements/repository-requirements.md
type: docs
ordinal: 14000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Task-013 deliberately left the seven HTML TODOs in `assignments/assignment-2.md` untouched for a later task, and fourteen more review comments sit in the Week 2 materials that file links: `requirements/process-requirements.md`, `requirements/repository-requirements.md`, `guides/user-stories-and-prototyping.md`, and `guides/validating-with-the-customer.md`. Together they settle one issue shape, one inactive-issue rule, one later-meeting method split, and where the meeting-role purposes live. The decisions were made with the instructor before editing. This task resolves all seventeen comments and applies them across the assignment, the requirements, the guides, `AGENTS.md`, and `README.md`.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 assignments/assignment-2.md carries no HTML TODO comment, and Part 1 links the Product Vision example for the goal
- [x] #2 requirements/process-requirements.md carries no TODO or open review comment
- [x] #3 requirements/repository-requirements.md and guides/user-stories-and-prototyping.md carry no TODO comment
- [x] #4 guides/validating-with-the-customer.md carries no TODO comment and describes a generic procedure for meetings after the kickoff
- [x] #5 The goal-versus-quality-goal clarification is removed from assignment-2.md Part 1 and from process-requirements.md ## Product Vision And Goals, including the example line for the threshold of success, and the assignment points at the Product Vision example instead
- [x] #6 The issue shape is consistent across process-requirements.md, repository-requirements.md, artifact-requirements.md, and assignment-2.md: title `US-nn: <story title>`; description carries the story statement, its acceptance criteria, a link to the story file, and an optional remaining-work checklist; the story file is the source of truth and holds the long-form context
- [x] #7 `.github/ISSUE_TEMPLATE/user-story.md` is the named issue template, and blank issue creation stays disabled
- [x] #8 process-requirements.md item 10 says an inactive story closes its issue, if it has one, with a comment naming the reason and any superseding story
- [x] #9 guides/user-stories-and-prototyping.md Step 4 links the MoSCoW values to `requirements/process-requirements.md#user-stories-and-acceptance-criteria`
- [x] #10 process-requirements.md item 4 carries the purpose of each meeting role; guides/customer-interview.md Step 5 and guides/validating-with-the-customer.md link it instead of repeating the purposes; the AIM Institute link is gone
- [x] #11 assignment-2.md Part 6 carries the Week 2 target content, the open/closed tag rationale, the two-decision minimum with the minimum-usable-product verdict row, and one example question per target element
- [x] #12 AGENTS.md and README.md describe the kickoff guide as the five areas and the Mom Test pass, and the validating guide as the method for meetings after the kickoff
- [x] #13 Every changed relative link and heading anchor resolves
<!-- AC:END -->

## Definition of Done
<!-- DOD:BEGIN -->
- [x] #1 All acceptance criteria are satisfied
- [x] #2 Changed Markdown files are formatted: `pnpm run format:markdown`
- [x] #3 `pnpm run lint:markdown` passes
- [x] #4 `pnpm run test:markdown-format` and `pnpm run test:markdown-rules` pass
- [x] #5 `pnpm run check:lectures` passes
<!-- DOD:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Decisions locked with the user before editing:

1. Issue shape: the issue title is `US-nn: <story title>`; the description carries the story statement, its acceptance criteria, a link to the story file, and an optional remaining-work checklist, whose items are implementation tasks the team chooses. The story file is the source of truth and holds the long-form context and discussion.
2. Issue template: name `.github/ISSUE_TEMPLATE/user-story.md`; requirements define the fields and the assignment says to add it. Blank issue creation stays disabled.
3. Inactive story: if it already has an issue, close the issue and leave a comment naming the reason and any superseding `US-nn`.
4. Goal clarification: remove the goal-versus-quality-goal paragraph from `assignment-2.md` Part 1 and from `process-requirements.md` ## Product Vision And Goals, including the example line for the threshold of success; the assignment links the Product Vision example for the goal instead.
5. Later meetings: `guides/validating-with-the-customer.md` becomes a generic procedure for meetings after the kickoff; the Week 2 target content moves to `assignment-2.md` Part 6; the Mom Test pass stays in the kickoff guide only.
6. Roles: `process-requirements.md` item 4 carries each role purpose; both guides link it; the AIM Institute link is dropped.
7. MoSCoW: `guides/user-stories-and-prototyping.md` Step 4 links the four values to `requirements/process-requirements.md#user-stories-and-acceptance-criteria`.
8. Scope: all 17 comments across the five files; no broader future-week sweep.
9. Verification: the four Markdown gates and `pnpm run check:lectures`, plus a link and anchor sweep. No commit without an explicit request.

Implementation: all 17 TODO and review comments are gone from the five files, and the assignment, requirements, and guides are aligned on the decisions recorded above.

Changes:
- `process-requirements.md`: the goal-versus-quality-goal paragraph and the `Measured by` example line are removed; item 4 carries each role purpose; item 9 and item 10 define the issue-to-story relationship and the inactive-issue closure.
- `repository-requirements.md`: `.github/ISSUE_TEMPLATE/user-story.md` is named; item 3 defines the issue title, the description fields, the optional remaining-work checklist, and closing the issue on all criteria.
- `artifact-requirements.md`: the no-copy rule is replaced by the story file as the source of truth; `## Notes` now names background.
- `guides/customer-interview.md`: Step 5 links the role definitions in process requirements.
- `guides/validating-with-the-customer.md`: reframed as the generic procedure for meetings after the kickoff; the Mom Test pass, the four-area template, and the two question patterns are removed; paths are week-NN; all comments are gone.
- `guides/user-stories-and-prototyping.md`: the MoSCoW values link to process requirements.
- `assignment-2.md`: goal example pointer; quality-goal paragraph removed; user-story template and issue shape added; Part 6 wording fixed, open and closed tags explained, one decision row pinned to the MUP verdict, example questions added; checklist updated.
- `AGENTS.md` and `README.md`: guide descriptions updated.

Validation:
- `rg TODO` over the assignment, the three requirements, and the three guides: no matches.
- `pnpm run format:markdown` applied (reflowed `assignment-2.md` and `artifact-requirements.md`); `format:markdown:check` clean; `lint:markdown` clean.
- `pnpm run test:markdown-format` 34/34; `pnpm run test:markdown-rules` 34/34.
- Link and anchor sweep over the changed Markdown files: all resolve, including the new `process-requirements.md#meeting-with-the-customer`, `#user-stories-and-acceptance-criteria`, and `repository-requirements.md#planning-and-issue-tracking` anchors.
- `pnpm run check:lectures` passes: 2 decks match, built with Typst 0.15.1. `lectures/lecture-2.pdf` was rebuilt for a one-byte font-subset difference with no content change; TASK-011 owns the deck and records the overlap.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Removed all 17 TODO and review comments across assignment-2.md and its linked docs and applied the decided issue shape, inactive-issue rule, role locations, MoSCoW link, and generic later-meeting guide. Verified with the four Markdown gates, a link and anchor sweep, and check:lectures after rebuilding lecture-2.pdf by one byte of font data.
<!-- SECTION:FINAL_SUMMARY:END -->
