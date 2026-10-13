---
id: TASK-095
title: Run lychee in the Definition of Done
status: Done
assignee: []
created_date: '2026-10-06 16:26'
updated_date: '2026-10-06 16:34'
labels: []
dependencies: []
ordinal: 91000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
lychee is in the flake shell, but nothing tells an agent finishing a task to check links locally; CI checks links without anchors.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 A pnpm script runs lychee over the repository with anchors checked
- [x] #2 definition_of_done in backlog/config.yml requires the link check
- [x] #3 AGENTS.md says how to run the link check and lists lychee in the shell and the CI workflow
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
Decisions:
- `pnpm run check:links` runs `lychee --no-progress --include-fragments --max-concurrency 2 --accept 200,206,429 .`: the CI arguments plus `--include-fragments`, so heading anchors are checked locally, which CI does not do.
- The input is the directory `.`, not the CI glob `./**/*.md`: a glob bypasses .gitignore and scanned `tmp/`, reporting 448 errors; the directory walk skips gitignored and hidden paths.
- The check is online, like CI, so a broken external link fails the task too; the full run took about 14 s.
- The DoD was set through the backlog MCP `definition_of_done_defaults_upsert`, because `backlog config set` has no DoD key.
- Added a `check:links` task to .vscode/tasks.json, and documented the gate, lychee in flake.nix, and .github/workflows/lychee.yml in AGENTS.md.

Validation: format:markdown:check, lint:markdown, test:markdown-format, test:markdown-rules, check:lectures, and check:links all pass; check:links reports 720 total, 719 OK, 0 errors, 1 excluded.

Follow-up: `check:links` now passes `--exclude-path '^\./backlog(/|\.md$)'`, so the Backlog task files and the local `backlog.md` notes are not link-checked; they are not course material, and a stale link in a completed task should not block closing a new one. Rerun: 716 total, 715 OK, 0 errors, 1 excluded (semver.org); format:markdown:check and lint:markdown pass.

Follow-up: the backlog exclusion moved from the script flag into `lychee.toml` as `exclude_path = ['^(\./)?backlog(/|\.md$)']`, which lychee loads by default, so `pnpm run check:links` and the CI job, which runs lychee from the repository root with the glob `./**/*.md`, share it. Verified with `lychee --dump-inputs`: no backlog input for either `.` or the glob. Rerun: check:links 716 total, 715 OK, 0 errors; format:markdown:check and lint:markdown pass.

Follow-up: deleted `.lycheeignore` and moved its semver.org exclusion into `lychee.toml` as `exclude`, with the reason (about 17 s to answer, near lychee's 20 s timeout), so every exclusion lives in one file with a comment. Dropped the `backlog` URL pattern: it matched link targets, not files, so it would have hidden broken links to `backlog/`, and `exclude_path` already skips the backlog files. Rerun: check:links 716 total, 715 OK, 0 errors, 1 excluded (semver.org); format:markdown:check and lint:markdown pass.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Added `pnpm run check:links` (lychee over the repository with anchors checked), required it in definition_of_done, and documented how to run it in AGENTS.md. All gates pass.
<!-- SECTION:FINAL_SUMMARY:END -->
