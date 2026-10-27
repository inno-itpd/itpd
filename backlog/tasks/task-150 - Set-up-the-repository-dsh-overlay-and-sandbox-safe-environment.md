---
id: TASK-150
title: Set up the repository dsh overlay and sandbox-safe environment
status: Done
assignee: []
created_date: '2026-10-25 13:36'
updated_date: '2026-10-25 13:40'
labels: []
dependencies: []
references:
  - .dsh/cordis.patch.yml
  - .dsh/README.md
  - .envrc
  - .gitignore
  - AGENTS.md
modified_files:
  - .dsh/cordis.patch.yml
  - .dsh/README.md
  - .envrc
  - AGENTS.md
priority: medium
type: chore
ordinal: 129000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
The repository has no dsh setup, so the agent harness cannot reach the Backlog CLI over MCP and the maintainer has to remember a launch invocation. DSH does not discover project-local overlays: only bundle layers, the profile layer, the home layer, and explicit `--patch` files compose. The harness also runs its shells in a workspace-write sandbox that mounts `$HOME` read-only, and the Bun runtime that `backlog` ships fails to start when its cache is unwritable, so the caches `.envrc` exports must live inside the checkout. This is a development-tooling change: no course content, assignment, or generated artifact changes.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 `.dsh/cordis.patch.yml` registers the Backlog MCP server as `mcp__backlog__*`; `dsh web --patch .dsh/cordis.patch.yml --dump-config` composes the `mcp-backlog` entry and `dsh web --dump-config` composes none
- [x] #2 .envrc exports `XDG_CACHE_HOME` and `npm_config_cache` under `.local/` before `use flake`, `.gitignore` ignores `.local/`, and `backlog task list` and `backlog mcp start` work with `$HOME` read-only
- [x] #3 .dsh/README.md documents the launch command, that `--patch` is a launcher flag ordered before app arguments, the restart-after-edit rule, and the `dsh plugin` / `--dump-default-config` exceptions
- [x] #4 AGENTS.md names `.envrc` cache exports and the `.dsh/` overlay in its tooling table, and every new file follows the one-sentence-per-line house style
- [x] #5 `pnpm run format:markdown:check`, `lint:markdown`, `test:markdown-format`, `test:markdown-rules`, `check:lectures`, `check:links`, and `backlog doctor` pass, and the implementation notes record the validation
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
1. Read the reference overlay in `time-tools/timeful` and confirm how dsh composes `--patch` layers and which flag positions parse.
2. Write `.dsh/cordis.patch.yml` for the Backlog MCP server and `.dsh/README.md` with the launch command and the environment requirements.
3. Keep the tool caches under `.local/` in `.envrc`, confirm `.gitignore` ignores them, and name the overlay in the tooling table in AGENTS.md.
4. Verify `--dump-config` with and without `--patch`, run `backlog` with `$HOME` read-only, then run the Markdown gates, the deck check, the link check, and `backlog doctor`.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
`.dsh/cordis.patch.yml` registers the Backlog MCP server over stdio (`backlog mcp start`); no other server is registered because the devShell ships no other MCP server. The overlay is applied only through the launcher flag, because dsh has no project-local overlay discovery. `.envrc` exports `XDG_CACHE_HOME` and `npm_config_cache` under `.local/` before `use flake`, so the Bun runtime behind `backlog` has a writable cache while DSH mounts `$HOME` read-only. `.gitignore` already ignored `.local`, so it needed no edit. AGENTS.md now names the cache exports in the `.envrc` row and adds rows for the overlay and its README.

Validation evidence:
- `dsh web --patch .dsh/cordis.patch.yml --dump-config`, with a throwaway `DSH_HOME`, composes one `mcp-backlog` entry; `dsh web --dump-config` composes none; `dsh headless --patch .dsh/cordis.patch.yml --dump-config` also composes it, so the profile-then-flag form parses.
- `dsh web --patch .dsh/cordis.patch.yml --dump-default-config` exits 1 with `--dump-default-config prints the bundle layers and takes no --patch`, matching the README.
- With `$HOME` read-only, `backlog task list` exits 0 with the `.envrc` cache exports and 1 without them; `backlog mcp start` answers `initialize` and lists 20 tools, including `task_list`, `task_create`, and `task_view`.
- `bash -n .envrc` passes.
- `pnpm run format:markdown` changed only the AGENTS.md table alignment. `format:markdown:check`, `lint:markdown`, `test:markdown-format` (34 tests), `test:markdown-rules` (34 tests), `check:lectures` (5 decks, Typst 0.15.1), `check:links` (1953 links, 1951 OK, 0 errors), and `backlog doctor` all pass.
- `.dsh/README.md` is untracked, so the tracked-file gates skip it; checked directly, it passes prettier with the repository config and eslint with `eslint.config.ts`.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
The repository now has a `dsh` overlay that registers the Backlog MCP server as `mcp__backlog__*`, and `.envrc` keeps the caches under `.local/` so backlog runs with `$HOME` read-only. Verified with `--dump-config` both with and without `--patch`, a direct `backlog mcp start` handshake that listed 20 tools, and the Markdown, deck, link, and backlog gates.
<!-- SECTION:FINAL_SUMMARY:END -->
