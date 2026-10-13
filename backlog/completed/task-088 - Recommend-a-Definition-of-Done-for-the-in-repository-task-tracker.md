---
id: TASK-088
title: Recommend a Definition of Done for the in-repository task tracker
status: Done
assignee: []
created_date: '2026-10-06 13:28'
updated_date: '2026-10-06 13:29'
labels: []
dependencies: []
ordinal: 84000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
requirements/repository-requirements.md recommends backlog.md to students but says nothing about a Definition of Done. Without an item for implementation notes, the CLI closes a task with empty notes and the reasons behind a change are lost, which TASK-087 fixed for this repository. Students get the same recommendation and an adaptable starting set of items.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 Tracking Tasks Inside The Repository recommends a Definition of Done with an item requiring implementation notes that record the decisions made and how the change was checked
- [x] #2 The section gives a definition_of_done example in backlog/config.yml that the team adapts to its project
- [x] #3 The example links the checks it names to their owning sections rather than restating them
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

## Implementation Plan

<!-- SECTION:PLAN:BEGIN -->
1. Add a Recommended bullet for a Definition of Done with an implementation-notes item.
2. Add a definition_of_done example after the branch-visibility example, with prose links to the checks it names.
3. Run the gates and backlog doctor.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
The recommendation is a third Recommended bullet in Tracking Tasks Inside The Repository, and the example sits under the existing Example label after the branch-visibility config, so the section keeps one Recommended and one Example block.
The implementation-notes item is the only one the bullet asks for by content; the other items are offered as a starting set the team adapts, because the course grades the work and not the tool.
The example names checks other sections own (the Markdown check, the link check, visibility) and links them in prose, since a YAML block cannot hold links and the rules are not restated.
Items are worded without commas, and the text says so, because the backlog.md MCP upsert rejects an item with a comma (found in TASK-087). It also says the defaults reach only tasks created later, with the --dod command for open tasks.
Validation: format:markdown:check, lint:markdown, test:markdown-format, test:markdown-rules, and check:lectures pass, and backlog doctor is clean.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
requirements/repository-requirements.md now recommends that a team give its in-repository tracker a Definition of Done with an item requiring implementation notes for decisions and validation, and gives an adaptable definition_of_done example for backlog/config.yml whose checks link to their owning sections.
<!-- SECTION:FINAL_SUMMARY:END -->
