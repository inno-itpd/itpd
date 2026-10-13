---
id: TASK-111
title: Write the Definition of Done requirements
status: Done
assignee: []
created_date: '2026-10-12 19:09'
updated_date: '2026-10-12 19:55'
labels: []
dependencies: []
references:
  - requirements/local-task-tracking-requirements.md
  - requirements/repository-requirements.md
modified_files:
  - requirements/definition-of-done-requirements.md
type: docs
ordinal: 107000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Assignment 3 adds `docs/definition-of-done.md`, and `CONTRIBUTING.md` links it rather than restating it.
This task creates `requirements/definition-of-done-requirements.md` with the completion bar for three units, a story, a task, and a pull request, one section each with disjoint lists.
It also states how a team that keeps a Definition of Done in its in-repository task tracker records where that list lives, without tying the two together.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 The file follows the usual reading order and is marked `**Since: W3**`
- [x] #2 The three unit sections come in the order story, task, pull request, and the lists are disjoint: each item sits under the smallest unit it applies to, the story list cites the task and pull-request lists rather than repeating their items, and the items are plain bullets rather than checkboxes
- [x] #3 The pull-request list requires: one task issue closed by the pull request and linked; the accountable reviewer ticks every task acceptance criterion before approving, and the approval comes from a member other than the author; the repository checks (link check, Markdown check, product-code CI) are green; a user-visible change updates `[Unreleased]` in `CHANGELOG.md`; the claimed criteria pass on the branch and on `main` after merge; no secret, recording, or private-only material is committed; and implementation notes in the pull request description record the decisions made and how the change was checked
- [x] #4 The story list requires: every acceptance criterion passes on `main`; every task issue that works on the story has closed with its pull request merged; the story issue links the evidence for each criterion; and the accountable member has checked that each criterion is runnable and every link resolves; it cites the close-on-customer-acceptance rule instead of restating it
- [x] #5 A team that uses the in-repository tracker with its own Definition of Done states in the file where that list lives, such as `backlog/config.yml`; no rule ties the two lists together
<!-- AC:END -->

## Definition of Done
<!-- DOD:BEGIN -->
- [x] #1 All acceptance criteria are satisfied
- [x] #2 Changed Markdown files are formatted: `pnpm run format:markdown`
- [x] #3 `pnpm run lint:markdown` passes
- [x] #4 `pnpm run test:markdown-format` and `pnpm run test:markdown-rules` pass
- [x] #5 `pnpm run check:lectures` passes
- [ ] #6 `pnpm run check:links` passes
- [x] #7 Implementation notes record the decisions made and the validation results
<!-- DOD:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
D13 and the task ACs fix the eight pull-request items and the four story items and leave the task items open; the Task list carries the two task-level facts: every acceptance criterion the task carries is satisfied, and the task closes as completed when the pull request that closes it merges, per Closing A Task, which also gives the story item its two citation targets, the Task and Pull Request lists.
Each required item cites its owner: Closing A Task for the closure and the tick, Branch Protection And Pull Requests for the approval and the implementation notes, Link Checking and Continuous Integration for the checks, Changelog Releases And Versioning for the unreleased entry, and Sensitive Information Reference for the secrets bar.
The tracker statement sits in The Task, because tracker tasks are the in-repository analogue of a task issue: the file states where the tracker list lives, such as backlog/config.yml, and no rule ties the two lists together.
The file carries a Recommended item on checkability, and no guide link, because the planning-and-tracking guide TASK-112 writes does not cover the Definition of Done.
The full example is the meeting-booking Definition of Done; its story section cites Showing Working Software by the course repository URL, the one citation a student file cannot make relatively.
Validation: format:markdown (the new file needed no change), format:markdown:check, lint:markdown, both vitest suites (34 and 34), and check:lectures (3 decks, Typst 0.15.1) pass; check:links reports 860 total with 3 errors, all the planning-and-tracking.md forward references from TASK-109 and TASK-110, and a focused lychee run on the new file reports 22 total, 22 OK, 0 errors; DoD item 6 stays open until TASK-112 lands.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Added requirements/definition-of-done-requirements.md: docs/definition-of-done.md with the story, task, and pull request sections, their disjoint minimum items, the tracker pointer, and a meeting-booking full example; every gate passes except the repo-wide check:links, which reports only the planning-and-tracking guide forward references until TASK-112 lands.
<!-- SECTION:FINAL_SUMMARY:END -->
