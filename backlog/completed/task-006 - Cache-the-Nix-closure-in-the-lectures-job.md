---
id: TASK-006
title: Cache the Nix closure in the lectures job
status: Done
assignee: []
created_date: '2026-09-30 15:01'
updated_date: '2026-09-30 15:15'
labels: []
dependencies:
  - TASK-005
ordinal: 6000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
TASK-005 moved the deck check into `nix develop` and left the job paying for the whole closure on every run: nixpkgs, node, pnpm, typst, and the fonts are downloaded from the binary cache each time.
That was accepted as the price of pinning the toolchain, and TASK-005 named a cache action as the next step if the duration was worse than the old 17 MB Typst download.

The lectures workflow is the only job that uses Nix, so the cache belongs there and nowhere else: the Markdown jobs install pnpm and Node through `prepare` and never touch a store.

The step cannot come before `cachix/install-nix-action`, because the action lists the store with `nix-store` and a runner has no store until the installer has made one.
The v7 defaults fit as they stand: `backend: actions`, so no Cachix account and no `actions: write` for the `purge` path, and `save: true`, so the first run uploads and later runs restore.

`primary-key` is the exception: it is required, has no default, and the action fails without it, so the workflow has to supply one.
The key is `hashFiles('flake.lock')`, because the lock file is what determines the closure: a flake input bump is a new key, so the cache misses once and refetches, which is the behaviour the pin wants, while a commit that touches no input still hits.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 The lectures job runs `nix-community/cache-nix-action` after `cachix/install-nix-action`, pinned by SHA with the version in a trailing comment, because the action needs a Nix store to read the roots from
- [x] #2 The step order is checkout, install Nix, cache, check: the action runs `nix-store` itself, so it cannot come before the installer
- [x] #3 `flake.nix` and `flake.lock` are unchanged; the cache action needs no flake input and the Markdown jobs are untouched
- [x] #4 Dependabot needs no change: the `github-actions` group pattern is `*`, so the new pin is already inside it
- [x] #5 `AGENTS.md` records the action next to the workflow row that describes the lectures job
<!-- AC:END -->

## Implementation Plan

<!-- SECTION:PLAN:BEGIN -->
Add one step to `.github/workflows/lectures.yml`, read the release SHA out of the action's repository with the GitHub API, and note in `AGENTS.md` that the lectures job now restores its closure from a cache.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
The action is `nix-community/cache-nix-action` v7.0.2, and the SHA was read out of that repository rather than guessed.
The GitHub API gives tag `v7.0.2` as commit `7df957e333c1e5da7721f60227dbba6d06080569`, committed 2026-01-30, and the rolling `v7` tag points at the same commit.

v7 is a different interface from v6, so every input was read out of `action.yml` and `src/` at the pinned commit rather than taken from the v6 docs or from memory.
The inputs in the workflow are the ones the action's own README recommends under "Single step for restore and save", so the configuration is the upstream recommendation rather than something invented here.
The key is better than the one first proposed: it is scoped to `runner.os` and hashes `**/*.nix` as well as `**/flake.lock`, so a change to any Nix source is a new key, not only a change to the lock.

Two things the recommended block needs from the repository, and both were missing.

The first is a permission, and it fails silently.
The purge deletes caches through the GitHub API, which needs `actions: write`, and a workflow that declares `permissions` grants nothing outside the block, so the old `contents: read` meant `actions: none`.
The failure is not a red job.
`saveImpl` runs the first purge before the save, `purgeCaches` lists the caches through `getCachesByPrefixes`, that call has no error handling, and the 403 propagates to the `catch` at the end of `saveImpl`, which only logs a warning.
So the cache would never be written, the deck check would still pass, and the only trace would be a warning in the log.
The workflow now grants `contents: read` and `actions: write`.

The second is where the permission goes.
A job-level `permissions` block replaces the workflow-level one rather than adding to it, so a job block granting only `actions: write` sets `contents` to `none` and `actions/checkout` cannot clone.
The grant belongs in the workflow-level block, where it applies to this workflow only, and the Markdown workflows keep their own `contents: read`.

A note on the restore prefix, because the first version of this task called it unsafe and that was too strong.
`restore-prefixes-first-match` restores a store built for a different `flake.lock` when the primary key misses.
It cannot produce a wrong build: Nix resolves the pinned inputs and fetches whatever the restored store is missing, and a store path is keyed by its derivation, so a stale store is only a wasted download.
It pays off when the lock changed without the closure changing, and it costs an extra upload on a nixpkgs bump.
The right description is a hedge on bandwidth, not a hole in the pin.

Two of the recommended values are worth knowing rather than trusting.

`purge-last-accessed: P1D` does nothing here.
`purgeCaches` runs one pass per configured criterion, and the `purge-created: 0` pass already matches every cache, because `selectOldCaches` keeps anything created at or before now.
So the two criteria together behave exactly like `purge-created: 0` alone, and the README's own prose describes the same OR.
Harmless, and it costs one more listing, but it is not doing the work the comment above it suggests.

`gc-max-store-size-linux: 2G` will not fire.
`collectGarbage` only collects when the store is larger than the cap.
The dev shell's own `PATH` closure measures 461 MB locally, and a fresh runner holds that plus the flake sources, so the store after `nix develop` is well under 2 GB and the cap is inert.
The authoritative number is the line the action prints itself, `Current store size in bytes:`, on the first run; read it and set the cap above it if a cap is wanted at all.

Purging is scoped to `GITHUB_REF`, so a pull request run purges only that pull request's own caches and never the ones `main` holds.
On a `pull_request` from a fork, `actions: write` is downgraded to read, so the listing 403s and the save is skipped, exactly as in the silent case above.
That only matters if this repository takes pull requests from forks.

The step sits after the installer and before the check, so the job is checkout, install Nix, cache, check.

Dependabot needed no change: the `github-actions` group pattern is `*`.

`flake.nix` and `flake.lock` are byte-identical, and the Markdown workflows are untouched.

Gates: `actionlint` 1.7.12 reports no findings on `lectures.yml`, `pnpm run format:markdown:check`, `pnpm run lint:markdown`, both vitest suites, and `pnpm run check:lectures` all pass inside `nix develop`.

Still unproven until a pull request runs: the action on a real runner, the first save, the purge, and the warm-run duration.
Read the job duration and the action's own store-size line on the first pull request and record them here, as TASK-005 asked.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
The lectures job caches its Nix store instead of refetching it.
`nix-community/cache-nix-action` is pinned to `7df957e333c1e5da7721f60227dbba6d06080569` (v7.0.2, read out of that repository with the GitHub API) and runs after `cachix/install-nix-action`, because the action reads the store with `nix-store` and a runner has no store until the installer has made one.
The job is checkout, install Nix, cache, check.

The inputs are the ones the action's own README recommends for a single restore-and-save step, so the configuration is the upstream recommendation and not an invention here.
The key is `nix-${{ runner.os }}-${{ hashFiles('**/*.nix', '**/flake.lock') }}`, which is better than a lock-only key: it is scoped to the runner and it changes on a change to any Nix source, not only to the lock.
`restore-prefixes-first-match` falls back to a store built for a different lock, which cannot produce a wrong build because Nix resolves the pinned inputs regardless; it is a hedge on bandwidth, and the earlier note in this task that called it a hole in the pin was too strong.

The workflow had to change to make the purge work, and the failure mode was the reason this was worth chasing.
The purge deletes caches through the GitHub API, so it needs `actions: write`, and a workflow that declares `permissions` grants nothing outside the block.
With the old `contents: read`, the job would not have gone red: `saveImpl` purges before it saves, the cache listing has no error handling, the 403 lands in the `catch` that only warns, and the result is a cache that is never written under a green check.
The workflow now grants `contents: read` and `actions: write`, at the workflow level.
A job-level block granting only `actions: write` was tried and removed, because a job-level `permissions` replaces the workflow-level one instead of adding to it, which would have set `contents` to `none` and broken the checkout.

Two of the recommended values are recorded as inert rather than useful.
`purge-last-accessed: P1D` adds nothing next to `purge-created: 0`, because the action runs one purge pass per criterion and the created-at-zero pass already matches every cache.
`gc-max-store-size-linux: 2G` will not fire, because the dev shell's `PATH` closure alone measures 461 MB and a fresh runner holds little more than that, and the action only collects garbage above the cap.
The real number is the `Current store size in bytes:` line the action prints on the first run.

Purging is scoped to `GITHUB_REF`, so a pull request never purges what `main` holds, and the one case that would still lose the save is a `pull_request` from a fork, where `actions: write` is downgraded to read.

Nothing else moved.
No flake input is added, so `flake.nix` and `flake.lock` are byte-identical, and the Markdown workflows keep their own `contents: read`.
Dependabot needed no change because the `github-actions` group pattern is `*`.
The one line in `AGENTS.md` that describes the lectures workflow names the cache action, and the table is reformatted by `pnpm run format:markdown`.

The gates pass inside `nix develop`: `actionlint`, the format check, the lint, both vitest suites, and `check:lectures`.
What is not proven until a pull request runs is the action itself, the first save, the purge, and the warm-run duration, which is the number to read then.
<!-- SECTION:FINAL_SUMMARY:END -->

## Definition of Done
<!-- DOD:BEGIN -->
- [x] #1 All acceptance criteria are satisfied
- [x] #2 Changed Markdown files are formatted: `pnpm run format:markdown`
- [x] #3 `pnpm run lint:markdown` passes
- [x] #4 `pnpm run test:markdown-format` and `pnpm run test:markdown-rules` pass
- [x] #5 `pnpm run check:lectures` passes
<!-- DOD:END -->
