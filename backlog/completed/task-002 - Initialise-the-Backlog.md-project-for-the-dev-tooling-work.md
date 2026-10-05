---
id: TASK-002
title: Initialise the Backlog.md project for the dev-tooling work
status: Done
assignee: []
created_date: '2026-09-29 22:35'
updated_date: '2026-09-29 22:47'
labels: []
dependencies: []
type: chore
ordinal: 2000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Backlog.md manages task files under `backlog/` and keeps metadata, relationships, and history consistent, which is what the CLI-owned `backlog/` project gives the repository.

The project holds the dev-tooling work only: TASK-001, TASK-002, and TASK-003.
The root `backlog.md` stays as it is, because the repository owner works through the course line from that file rather than from Backlog.

The two are separate on purpose.
A checklist and a task project would otherwise be two records of the same work, and the one that is not managed is the one that drifts.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 `backlog/config.yml` exists with the project name, statuses, task prefix, and the Definition of Done defaults for this repository's gates
- [x] #2 Tasks are created with the `backlog` CLI, not by hand-editing task files
- [x] #3 The project holds only the dev-tooling tasks, and the root `backlog.md` is left untouched for the repository owner to work through
<!-- AC:END -->

## Definition of Done
<!-- DOD:BEGIN -->
- [x] #1 All acceptance criteria are satisfied
- [x] #2 Changed Markdown files are formatted: `pnpm run format:markdown`
- [x] #3 `pnpm run lint:markdown` passes
- [x] #4 `pnpm run test:markdown-format` and `pnpm run test:markdown-rules` pass
<!-- DOD:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Done on 2026-09-30.

`backlog init "ITPD" --integration-mode none --backlog-dir backlog --task-prefix TASK --no-git` created `backlog/` without touching `AGENTS.md`.
The CLI would otherwise have appended a generated guidelines block to `AGENTS.md`, so the workflow is documented there by hand instead.

`task_prefix: TASK`, `zero_padded_ids: 3`, and `definition_of_done` are set in `backlog/config.yml`.
The Definition of Done is this repository's four Markdown gates.

The three tasks are flat, with no parent.
A parent per work stream was tried and dropped: with three tasks the grouping added a level without adding information.

The project was rebuilt twice before this state, once with four-digit IDs and once with the course-line tasks.
Nothing had been committed, so a rebuild was cheaper and safer than editing sixteen CLI-owned files by hand.
The CLI has `archive` but no `delete`, and an archived task file is worse than no file.

The root `backlog.md` is not part of the project and is not excluded from the Markdown gates, so it is checked like any other tracked file.

`backlog/` is excluded from the two Markdown gates in `scripts/markdown.mjs`, because the CLI owns those files and reformatting them would fight the next `backlog task edit`.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Initialised a Backlog.md project in `backlog/` with `--integration-mode none`, so the CLI left `AGENTS.md` alone and the workflow is documented there by hand.
Set `task_prefix: TASK`, `zero_padded_ids: 3`, and `definition_of_done` set to this repository's four Markdown gates, and created the three dev-tooling tasks with the CLI.
Excluded `backlog/` from the two Markdown gates in `scripts/markdown.mjs`, because the CLI owns those files and reformatting them would fight the next `backlog task edit`.
Verified with `backlog doctor` reporting no duplicate IDs, self-referential dependencies, or cycles, and the root `backlog.md` passing the format check and the lint as a tracked file.
<!-- SECTION:FINAL_SUMMARY:END -->
