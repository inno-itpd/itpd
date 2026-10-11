---
id: TASK-107
title: >-
  Add actionlint and shellcheck to the dev shell and run them after workflow
  edits
status: Done
assignee: []
created_date: '2026-10-11 14:06'
updated_date: '2026-10-11 14:09'
labels: []
dependencies: []
ordinal: 103000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
The flake already carries `pkgs.actionlint` as a staged change, but no instruction tells a coding agent it is there or that a workflow must be checked after an edit, and actionlint alone skips `run:` scripts because shellcheck is not on PATH. The repository checks are pnpm scripts that wrap a shell tool, so actionlint becomes one too. The gates stay local; a separate task tracks the CI job. AGENTS.md is where a maintaining agent reads the tooling, and CONTRIBUTING.md is where a human maintainer reads it.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 `flake.nix` provides `actionlint` and `shellcheck` in the default dev shell, and the comment beside shellcheck says why it is a second package
- [x] #2 `pnpm run lint:actions` runs actionlint from the shell, and it reports no findings on every file under `.github/workflows/`; every finding, including a shellcheck finding on a `run:` script, is fixed in the workflow that caused it
- [x] #3 `AGENTS.md` Tooling states that an edit under `.github/workflows/` is checked with `pnpm run lint:actions`, warns that actionlint does not read `.github/actions/`, and lists both tools among the ones the shell pins
- [x] #4 `CONTRIBUTING.md` lists both tools among the pinned tools and `pnpm run lint:actions` among the commands before a pull request
- [x] #5 `.vscode/tasks.json` carries the same `lint:actions` command
- [x] #6 `TODO.md` no longer lists adding actionlint, and the student-side actionlint item is untouched
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

## Implementation Plan

<!-- SECTION:PLAN:BEGIN -->
1. Add `pkgs.shellcheck` beside `pkgs.actionlint` in `flake.nix`, with a comment saying actionlint uses it for `run:` scripts.
2. Expose `pnpm run lint:actions` in `package.json` and add the matching VS Code task.
3. Document the command in `AGENTS.md` Tooling and in `CONTRIBUTING.md`, scoped to `.github/workflows/`.
4. Run it, fix any finding in the workflow that caused it, and prove the shellcheck integration.
5. Run the repository gates and record the results.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Decided with the user: keep the checks local and leave CI to TASK-108; expose the command as a pnpm script, matching `check:links`; add shellcheck because actionlint alone skips `run:` scripts. AGENTS.md says actionlint reads workflow files only, not the composite action, because `.github/actions/prepare/action.yml` is parsed as a workflow and reports four false syntax errors. TODO.md ticked; the student-side item is untouched. Validation: `pnpm run lint:actions` exits 0 on the four workflows under shellcheck 0.11.0; a scratch workflow with `run: echo $FOO` reports SC2086, so the integration is live; `format:markdown:check`, `lint:markdown`, both vitest suites (34 each), `check:lectures` (3 decks), and `check:links` (791 total, 0 errors) pass.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Added actionlint and shellcheck to the flake dev shell, exposed `pnpm run lint:actions`, and documented it in AGENTS.md Tooling, CONTRIBUTING.md, and the VS Code tasks; actionlint passes on all four workflows under shellcheck, and every repository gate passes.
<!-- SECTION:FINAL_SUMMARY:END -->
