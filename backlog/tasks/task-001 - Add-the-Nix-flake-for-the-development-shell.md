---
id: TASK-001
title: Add the Nix flake for the development shell
status: Done
assignee: []
created_date: '2026-09-29 22:35'
updated_date: '2026-09-29 22:47'
labels: []
dependencies: []
type: chore
ordinal: 1000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
The repository has no pinned toolchain, so the Node version, the package manager, and the Backlog and Typst binaries are whatever happens to be on the machine.

Model the flake on the one in the `timeful` repository: flake-parts, the `nix-systems/default/future-26.11` systems input, a pinned `nixpkgs`, and the `backlog-md` package as a flake input rather than a local build.

The dev shell carries `nodejs_26`, `pnpm`, `typst`, the `backlog` CLI, and `ripgrep`, and sets `BACKLOG_CWD` so the CLI finds the project from the repository root.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 `nix develop` provides nodejs 26, pnpm, typst, and the `backlog` CLI
- [x] #2 `nix develop` works through direnv from the repository root
- [x] #3 `nix flake lock` resolves, and `flake.lock` is committed
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
Verification on 2026-09-30, all inside `nix develop`:

- `node --version` v26.9.0, `pnpm --version` 12.3.4, `typst --version` 0.15.1, `backlog --version` 1.52.0.
- `nix flake lock` resolved, and `flake.lock` is committed.
- `direnv` is on this machine and `.envrc` is `use flake`, so entering the directory loads the shell. `.direnv/` is gitignored.

The flake is modelled on the one in the `timeful` repository: flake-parts, `nix-systems/default/future-26.11`, a pinned `nixpkgs`, and `backlog-md` as a flake input instead of a local build.

Left as In Progress until the change is committed.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Added `flake.nix`, `flake.lock`, and `.envrc`, modelled on the flake in the `timeful` repository: flake-parts, `nix-systems/default/future-26.11`, a pinned `nixpkgs`, and `backlog-md` as a flake input rather than a local build.
The dev shell provides nodejs 26, pnpm, typst, the `backlog` CLI, and ripgrep, and sets `BACKLOG_CWD`.
Verified with `nix develop --command` reporting v26.9.0, 12.3.4, typst 0.15.1, and backlog 1.52.0, plus a clean `nix flake check` and `nix flake lock`.
`.direnv/` is gitignored.
<!-- SECTION:FINAL_SUMMARY:END -->
