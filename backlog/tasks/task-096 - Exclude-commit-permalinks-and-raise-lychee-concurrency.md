---
id: TASK-096
title: Exclude commit permalinks and raise lychee concurrency
status: Done
assignee: []
created_date: '2026-10-06 16:40'
updated_date: '2026-10-06 16:41'
labels: []
dependencies: []
ordinal: 92000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
The link check fetches a permalink to a fixed commit of this repository, whose content cannot change, and checks two links at a time, so it takes about 5 s.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 lychee.toml excludes commit permalinks of this repository
- [x] #2 lychee.toml sets the concurrency and accepted statuses, and both check:links and CI use them
- [x] #3 AGENTS.md describes what lychee.toml holds
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
- `exclude` gains `'^https://github\.com/inno-itpd/itpd/blob/[0-9a-f]{40}/'`: any permalink to a commit of this repository, not only the one in assignments/assignment-1.md, because a pinned commit cannot change.
- `max_concurrency = 8` replaces `--max-concurrency 2`: with 5 external links left, 2 at a time took 4.2–7.0 s and 8 took 1.7 s, with 0 errors in both; 8 rather than lychee's default 128 to stay polite to GitHub, and 429 is accepted anyway.
- `accept = [200, 206, 429]` moved into lychee.toml with the concurrency, and both flags were removed from the `check:links` script and from the `args` in .github/workflows/lychee.yml, because command-line flags override the config file.
- The student-facing example in requirements/repository-requirements.md keeps `--max-concurrency 2`: it describes student repositories.

Validation: check:links 716 total, 714 OK, 0 errors, 2 excluded (semver.org and the permalink), 2.8 s. The CI form `lychee --no-progress './**/*.md'` in a clean worktree at HEAD with the new lychee.toml: 716 total, 0 errors, 2 excluded, no backlog input. format:markdown:check, lint:markdown, test:markdown-format, test:markdown-rules, and check:lectures pass.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Excluded commit permalinks of this repository from the link check and raised its concurrency from 2 to 8, with the concurrency and accepted statuses moved into lychee.toml so the script and CI share them. check:links now takes about 2–3 s.
<!-- SECTION:FINAL_SUMMARY:END -->
