---
id: TASK-087
title: Require implementation notes in the Definition of Done
status: Done
assignee: []
created_date: '2026-10-06 13:20'
updated_date: '2026-10-06 13:22'
labels: []
dependencies: []
ordinal: 83000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
The Backlog.md finalization guide expects a task's implementation notes to hold its decisions or validation results, but this project's definition_of_done lists only the acceptance criteria, the four Markdown gates, and the deck check, and the CLI closes a task with empty notes. The reasons behind a change are then lost to the next agent, so recording them becomes a Definition of Done item every task has to tick.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 definition_of_done in backlog/config.yml has an item requiring implementation notes that record the decisions made and the validation results
- [x] #2 Every open task carries the new Definition of Done item
- [x] #3 AGENTS.md names the new item where it describes the Done criteria
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
1. Add the item to the definition_of_done defaults through the Backlog MCP upsert, since backlog config set cannot set it.
2. Add it with --dod to every open task, because defaults reach only tasks created later.
3. Name it in the AGENTS.md sentence on the Done criteria.
4. Run the gates and backlog doctor.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
The default was set through the Backlog MCP definition_of_done_defaults_upsert, because backlog config set does not accept definitionOfDone. It rewrote only the definition_of_done line of backlog/config.yml, with no reformatting.
The item is worded without a comma, because the upsert rejects items containing one.
Defaults reach only tasks created after the change, so the item was added with --dod to the five open tasks (TASK-010, TASK-027, TASK-051, TASK-059, TASK-066) and to this task, which was created before the default changed. Done tasks were left as they are.
Validation: backlog doctor is clean, and format:markdown:check, lint:markdown, test:markdown-format, test:markdown-rules, and check:lectures pass.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
backlog/config.yml's definition_of_done has a sixth item, Implementation notes record the decisions made and the validation results, so every new task carries it. The five open tasks and this one have it added with --dod, and AGENTS.md names it where it describes the Done criteria. Verified with backlog doctor and all five gates passing.
<!-- SECTION:FINAL_SUMMARY:END -->
