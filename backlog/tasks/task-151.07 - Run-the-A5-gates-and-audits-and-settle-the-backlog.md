---
id: TASK-151.07
title: Run the A5 gates and audits and settle the backlog
status: To Do
assignee: []
created_date: '2026-10-27 08:45'
updated_date: '2026-10-27 08:47'
labels: []
dependencies:
  - TASK-151.01
  - TASK-151.02
  - TASK-151.03
  - TASK-151.04
  - TASK-151.05
  - TASK-151.06
references:
  - course/plans/a5-plan.md
  - >-
    backlog/tasks/task-145 -
    Move-the-product-code-CI-and-actionlint-from-Week-4-to-Week-5.md
  - AGENTS.md
documentation:
  - course/plans/a5-plan.md
parent_task_id: TASK-151
priority: high
ordinal: 137000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Run the final validation, fix what the audits find, and settle the backlog for the Assignment 5 implementation. This is the last task, after the requirements, guides, assignment, decisions, and routers have landed.

1. Work through every audit in `course/plans/a5-plan.md`'s `## Tests And Validation`: scope, contradiction, routing, cross-reference, decision-log, move, level, QRT, testing-plan, environment, milestone, story, codebase-design, check, trace, full-example, CI, release, removal, and deck.
   A finding is fixed in the file that owns the rule or the artifact; an audit is never satisfied by weakening its expectation.
   The one fact the audits verify rather than change: `requirements/architecture-requirements.md`'s required views end at the container view and its Week 5 forward reference is already gone.
2. Run the repository gates: `pnpm run format:markdown` then `pnpm run format:markdown:check`, `pnpm run lint:markdown`, `pnpm run test:markdown-format`, `pnpm run test:markdown-rules`, and `pnpm run check:links`.
   `pnpm run lint:actions` runs only if a workflow in this repository changed, and `pnpm run check:lectures` only if a deck changed.
   `check:links` needs network and checks heading fragments.
3. Edit `TASK-145` through `backlog task edit`: its acceptance criterion that names the reversing decision changes from `A5-DEC-017` to `A5-DEC-013`, and its description changes from "removes them from the course" to "not required", per the plan's `## Edited Files Outside requirements/`.
   Then verify TASK-145's remaining criteria against the work that landed; when they hold, set it Done with implementation notes, and when one does not, record the gap in its notes and leave it open.
4. Verify the task tree with `backlog task list` and `backlog sequence list --plain`, and check that the task IDs, dependencies, and parent links are consistent.
   The plan and `AGENTS.md` name `backlog doctor`, but this checkout's `backlog` 1.45 has no such command; do not block on it, and mention the discrepancy in the implementation notes.
5. Set TASK-151 and each subtask Done with implementation notes recording the decisions made and the validation results, once the work is complete.
   No A5 backlog breakdown is added to `TODO.md`; the tree under TASK-151 is the breakdown.

Do not create files under `docs/` or `reports/`, do not hand-edit `lectures/*.pdf`, and leave the user's staged changes in place.

When done, record implementation notes and set the task to Done.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [ ] #1 Every audit in `course/plans/a5-plan.md`'s `## Tests And Validation` is run (scope, contradiction, routing, cross-reference, decision-log, move, level, QRT, testing-plan, environment, milestone, story, codebase-design, check, trace, full-example, CI, release, removal, and deck), and each finding is fixed in the file that owns it rather than by weakening the audit.
- [ ] #2 `pnpm run format:markdown:check`, `pnpm run lint:markdown`, `pnpm run test:markdown-format`, `pnpm run test:markdown-rules`, and `pnpm run check:links` pass; `pnpm run lint:actions` runs only if a course workflow changed and `pnpm run check:lectures` only if a deck changed.
- [ ] #3 `TASK-145` is edited with `backlog task edit`: its criterion that names the reversing decision changes from `A5-DEC-017` to `A5-DEC-013`, and its description changes from "removes them from the course" to "not required".
- [ ] #4 TASK-145's remaining criteria are verified against the landed work and it is set Done with implementation notes when they hold, or its remaining gap is recorded as a note and it stays open.
- [ ] #5 The tree is verified with `backlog task list` and `backlog sequence list --plain` because this checkout's `backlog` 1.45 has no `doctor` command; parent and dependency links are consistent, TASK-151 and its subtasks carry implementation notes, and the parent is set Done once every subtask is Done.
- [ ] #6 No file is created under `docs/` or `reports/`, no pitch deck is edited, no feature index or `FEAT-nn` family is added, and the working tree keeps the user's staged changes.
<!-- AC:END -->



## Definition of Done
<!-- DOD:BEGIN -->
- [ ] #1 All acceptance criteria are satisfied
- [ ] #2 Changed Markdown files are formatted: `pnpm run format:markdown`
- [ ] #3 `pnpm run lint:markdown` passes
- [ ] #4 `pnpm run test:markdown-format` and `pnpm run test:markdown-rules` pass
- [ ] #5 `pnpm run check:lectures` passes
- [ ] #6 `pnpm run check:links` passes
- [ ] #7 Implementation notes record the decisions made and the validation results
<!-- DOD:END -->
