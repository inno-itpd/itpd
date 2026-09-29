---
id: TASK-003
title: Pin Node 26 and move the package manager to pnpm
status: Done
assignee: []
created_date: '2026-09-29 22:35'
updated_date: '2026-09-29 22:47'
labels: []
dependencies: []
type: chore
ordinal: 3000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
`engines.node` allows Node 22, 24, and 26, and CI uses Node 24, so the gates run on a version the repository does not claim to support and the claimed support is untested.

Pin the repository to Node 26, which is what the flake provides, and replace npm with pnpm: one lockfile, one package manager field, and CI and the editor tasks on the same tool.

Dependabot needs no change: its `npm` ecosystem reads `pnpm-lock.yaml`, and the new CI pin is a `github-actions` update.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 `package.json` declares `packageManager: pnpm@<version>` and an `engines.node` range that only Node 26 satisfies
- [x] #2 `pnpm-lock.yaml` is committed and `package-lock.json` is deleted
- [x] #3 `.vscode/tasks.json` and `AGENTS.md` name the pnpm commands
- [x] #4 Dependabot keeps the new `pnpm/action-setup` pin current through the existing `github-actions` group
- [x] #5 Every CI job installs through the shared `prepare` action with pnpm on Node 26 and runs on a frozen lockfile
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

- `node --version` is v26.9.0 and `pnpm --version` is 12.3.4, from the flake.
- `pnpm import` produced `pnpm-lock.yaml` from the old `package-lock.json`, so the resolved versions are unchanged.
- `pnpm run format:markdown:check`, `pnpm run lint:markdown`, `pnpm run test:markdown-format`, `pnpm run test:markdown-rules`, and `pnpm run fmt:check` all pass.
- CI is not verifiable locally. The workflow was not run in GitHub Actions, so the `pnpm/action-setup` SHA and the Node 26 runner image are unproven until the first pull request runs.

Left as In Progress until the change is committed.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Pinned the repository to Node 26 and replaced npm with pnpm.
`package.json` declares `packageManager: pnpm@12.3.4` and `engines.node: ^26.0.0`; `pnpm import` produced `pnpm-lock.yaml` from the old `package-lock.json`, so the resolved versions are unchanged, and `package-lock.json` is deleted.
The three CI jobs now share `.github/actions/prepare`, a composite action that installs pnpm, sets Node 26 with the pnpm cache, and runs `pnpm install --frozen-lockfile`.
Updated `.vscode/tasks.json`, `.github/pull_request_template.md`, `eslint/markdown/README.md`, the error message in `scripts/markdown.mjs`, and `AGENTS.md`.
Dependabot needed no change: its `npm` ecosystem reads `pnpm-lock.yaml`, and the new `pnpm/action-setup` pin falls under the existing `github-actions` group.
Verified by all four gates plus `fmt:check` passing on Node 26.9.0 and pnpm 12.3.4.
Not verified locally: the workflow has not run in GitHub Actions, so the `pnpm/action-setup` SHA and the Node 26 runner image are unproven until the first pull request runs.
<!-- SECTION:FINAL_SUMMARY:END -->
