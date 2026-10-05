---
id: TASK-007
title: Track task IDs across local and remote branches
status: Done
assignee: []
created_date: '2026-09-30 21:49'
updated_date: '2026-09-30 22:05'
labels: []
dependencies: []
ordinal: 7000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
The Backlog.md project is configured filesystem-only, so the CLI allocates task IDs from the working tree alone.
That is what makes two branches able to hand out the same `TASK-00N`, because nothing outside the current checkout is ever read.

`filesystem_only: true` is the root of it.
`GitOperations.listRecentBranchTips` returns an empty list in that mode, and the same short-circuit sits in `computeActiveBranchSnapshot`, in `refreshRemoteRefsForTaskRead`, and in `getActiveBranchSettings`, so there is no path by which cross-branch state reaches ID allocation while the flag is true.
This repository has an `origin` remote and five branch tips, so the flag records a state that is not the situation.

`check_active_branches` and `remote_operations` are both `false`, which disables the two halves of the feature independently.
Without the first, allocation never asks about other branches at all.
Without the second, the branch list covers `refs/heads` only and `origin/*` is left out, so a branch that exists only on the remote is invisible even with the first enabled.
With both on, allocation builds its ID set from the task corpus across branches plus other worktrees of this repository, and it refreshes remote refs before it hands out an ID, because an ID that looks free only because the remote refs are stale is an ID another clone already published.

`active_branch_days` decides what the word "branches" means, so it has to be set from this repository rather than left at the 30-day default.
Only the current branch bypasses the window; every other tip is filtered on its committer date, which means a branch nobody has touched for longer than the window stops reserving its IDs.
The default is shorter than a course term, so 90 days is the value that covers it.

`auto_commit` and `bypass_git_hooks` stay as they are.
Turning off filesystem-only mode does not turn on committing, and task changes should still land in a commit the author writes.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 `filesystem_only` is `false` in `backlog/config.yml`, because filesystem-only mode returns no branch tips and leaves ID allocation reading the working tree alone
- [x] #2 `check_active_branches` and `remote_operations` are both `true`, so `refs/remotes/origin/*` is part of the branch list and remote refs are refreshed before an ID is allocated
- [x] #3 `active_branch_days` is 90, because the 30-day default is shorter than a course term and a tip older than the window stops reserving its IDs
- [x] #4 `auto_commit` and `bypass_git_hooks` are unchanged, because leaving filesystem-only mode must not start committing task changes
- [x] #5 `AGENTS.md` records the cross-branch guarantee and the limits it does not cover
- [x] #6 Verification is a probe and not `backlog doctor`, which backlog 1.45.1 does not have: a worktree on `main` allocates an ID above the highest ID committed on any branch instead of the `TASK-004` that the same checkout allocated under the old settings
<!-- AC:END -->

## Definition of Done
<!-- DOD:BEGIN -->
- [x] #1 All acceptance criteria are satisfied
- [x] #2 Changed Markdown files are formatted: `pnpm run format:markdown`
- [x] #3 `pnpm run lint:markdown` passes
- [x] #4 `pnpm run test:markdown-format` and `pnpm run test:markdown-rules` pass
- [x] #5 `pnpm run check:lectures` passes
<!-- DOD:END -->

## Implementation Plan

<!-- SECTION:PLAN:BEGIN -->
Set the four keys with `backlog config set`, add two sentences to the work-tracking section of `AGENTS.md`, and prove the result by allocating a task in a throwaway worktree on `main` before and after the change.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
The probe ran in `git worktree add /tmp/opencode/itpd-probe main`, with the config copied in and `BACKLOG_CWD` pointed at the worktree, and the worktree was removed afterwards.
With the old four settings that checkout handed out `TASK-004`, which is a live duplicate: `backlog/tasks/task-004 - Check-the-lecture-PDFs-match-their-Typst-sources.md` already exists on `lectures`.
`main` carries only TASK-001 through TASK-003, so a per-checkout allocation always lands in that gap.
With the new settings the same checkout handed out `TASK-007` and then `TASK-008`, which is above every ID committed on any branch, so the cross-branch read is what changed the answer.

`TASK-007` was still a collision, and that is the honest limit of the guarantee.
It is uncommitted in the other checkout, on the `lectures` branch, and `getActiveAndCompletedTaskIds` sees committed refs plus its own working copy, so an ID is invisible to every other checkout until the task file is committed.
The second probe in the same worktree got `TASK-008`, because the `TASK-007` file was by then in that working copy, which shows the working copy of the current checkout is counted and only its own.

`active_branch_days: 90` is set from the term rather than from the tips.
Every tip in this repository is two days old, so any value would pass the probe; the default of 30 is shorter than a course term, and the current branch is the only tip that bypasses the window, so a branch nobody touched for a term would stop reserving its IDs.

Two limits come from the source rather than from this repository.
Only the current branch bypasses the timestamp filter, and IDs in `backlog/archive/tasks/` are excluded from the allocation set by design, because archive acts as a soft delete and those IDs are meant to be reusable.
Remote refs are read through `git fetch` before an ID is allocated, so the guarantee needs network access and needs the other clone to have pushed.

`backlog doctor` is documented in the `AGENTS.md` command table as the way to find duplicate IDs, and backlog 1.45.1 answers `error: unknown command 'doctor'`, so acceptance criterion 5 was rewritten and the verification is the worktree probe instead.
The row is a separate inaccuracy and is not fixed by this task.

`backlog config set` rewrote `backlog/config.yml` with `definition_of_done` moved to the top and collapsed to a flow sequence, and that reformatting was committed on its own as `chore(backlog): format config`; the working tree then held only the four planned key changes.
The two probes are untracked files inside the removed worktree, so nothing of them is in this repository.

Gates: `pnpm run format:markdown` reported no further change, `pnpm run format:markdown:check`, `pnpm run lint:markdown`, both vitest suites at 17 tests each, and `pnpm run check:lectures` all pass.

Re-verified on backlog 1.52.0, which `9862e5c` pulled into the flake, and two of the notes above no longer hold.
`backlog doctor` exists in 1.52.0 and reports `No duplicate IDs, self-referential dependencies, or dependency cycles found.`, so the row in the `AGENTS.md` command table is accurate again and acceptance criterion 6 is now also covered by the command it names.
1.45.1 answered `unknown command 'doctor'`; that was a version gap, not a documentation error.

The worktree limit is gone as well, and the probe that recorded it is what shows it.
The same throwaway worktree on `main`, with the same uncommitted TASK-007 in the other worktree of the same repository, was handed `TASK-008` by 1.52.0 where 1.45.1 had handed it `TASK-007`.
1.52.0 scans the worktrees of the same repository when it builds the set of occupied IDs, so an uncommitted task file in a sibling worktree already reserves its ID.
The limit that remains is the one in the last paragraph: a separate clone needs its task file pushed, and the CLI sees the remote refs its own fetch has brought in.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Task IDs are allocated across branches and remote refs instead of per checkout.
`filesystem_only` was the switch that made the difference, because filesystem-only mode returns no branch tips at all, so `check_active_branches` and `remote_operations` alone would have changed nothing.
Those two are now `true`, and `active_branch_days` is 90 rather than the 30-day default, because the default is shorter than a course term and only the current branch bypasses the window.
`auto_commit` and `bypass_git_hooks` are untouched, so task changes still land in a commit the author writes.

The proof is a worktree on `main`.
Under the old settings that checkout allocated `TASK-004`, a live duplicate of a task on `lectures`; under the new settings it allocated `TASK-007` and then `TASK-008`, above every ID committed on any branch.
The worktree was removed and nothing of the probe is in the repository, and `backlog doctor` on 1.52.0 reports no duplicate IDs.

The limit is the one that the network creates.
A task file in a sibling worktree of this repository already reserves its ID, uncommitted, because the CLI scans the worktrees of the same repository.
A task file in another clone reserves nothing until it is pushed, because the remote refs the CLI reads are the ones its own fetch has seen.
Archived IDs stay reusable, and the current branch is the only tip that bypasses the `active_branch_days` window.
`AGENTS.md` states the guarantee and those limits in the work-tracking section.
<!-- SECTION:FINAL_SUMMARY:END -->
