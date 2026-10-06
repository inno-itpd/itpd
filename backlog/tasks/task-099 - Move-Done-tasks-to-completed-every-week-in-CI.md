---
id: TASK-099
title: Move Done tasks to completed every week in CI
status: Done
assignee: []
created_date: '2026-10-06 17:38'
updated_date: '2026-10-06 18:29'
labels: []
dependencies: []
ordinal: 95000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
backlog/tasks/ holds 30 Done tasks beside 5 open ones. A scheduled workflow moves the Done tasks to backlog/completed/ with the CLI and opens one cleanup pull request, adapted from time-tools/timeful's backlog-weekly-cleanup.yml.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 The workflow moves every Done task in backlog/tasks/ to backlog/completed/ through backlog task complete, on a weekly schedule and on demand
- [x] #2 It opens one cleanup pull request against main, or refreshes the open one, and does nothing when no task is Done
- [x] #3 AGENTS.md lists the workflow in the Tooling table
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

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Added .github/workflows/backlog-cleanup.yml, adapted from time-tools/timeful's backlog-weekly-cleanup.yml: Sunday 00:00 UTC cron plus workflow_dispatch, backlog.md@1.52.0 from npm (the version the flake pin reports), backlog task complete per Done ID, force-with-lease push to chore/backlog-weekly-completed, and gh pr edit/create against main. Decisions: check_active_branches is on, so the collect step keeps only IDs with a file in backlog/tasks/ on the checkout; the membership test is a glob loop, not compgen, which the Nix bash lacks; the PR body follows .github/pull_request_template.md; the bot commit uses chore(agents) without Harness/Model lines; BACKLOG_CLEANUP_TOKEN falls back to github.token, so CI starts on the generated PR only when the secret is set. AGENTS.md lists the workflow in the Tooling table as not a gate. Validation: actionlint passes; the collect step run locally reports count=30 and the 30 Done IDs; backlog task complete TASK-098 in a scratch clone moved the file to backlog/completed/; format:markdown:check, lint:markdown, test:markdown-format, test:markdown-rules, check:lectures (2 decks), and check:links (753 OK, 0 errors) pass. The workflow is not yet run on GitHub.
<!-- SECTION:NOTES:END -->
