---
id: TASK-101
title: Move local task tracking into its own requirements file
status: Done
assignee: []
created_date: '2026-10-06 19:26'
updated_date: '2026-10-06 19:54'
labels: []
dependencies: []
ordinal: 97000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
repository-requirements.md owns platform mechanics, and its Tracking Tasks Inside The Repository section is growing past one section. Give in-repository task tracking its own requirements file, move the Backlog.md section there, and add two recommendations: a TODO.md of candidate tasks (committed or per member as the team decides) and a workflow that moves Done tasks to completed, with this repository's backlog-cleanup.yml as the example.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 requirements/local-task-tracking-requirements.md holds the moved Backlog.md section as A Task Tracker In The Repository
- [x] #2 The new file recommends a TODO.md checklist for the work in hand and candidate tasks, with its format left to the team
- [x] #3 The new file recommends a workflow that moves Done tasks to completed and links .github/workflows/backlog-cleanup.yml as the example
- [x] #4 repository-requirements.md no longer has the section, every inbound link points at the new file, and its markdownlint example sets gitignore
- [x] #5 Closing A Task exempts the cleanup workflow's pull request from closing a task issue
- [x] #6 General requirements class a TODO.md checklist as repository content, and README.md, course/rules.md, SKILL.md, assignment-2.md, and AGENTS.md route to the new file
- [x] #7 backlog-cleanup.yml has no maintainer-only wording
<!-- AC:END -->

## Definition of Done
<!-- DOD:BEGIN -->
- [ ] #1 All acceptance criteria are satisfied
- [ ] #2 Changed Markdown files are formatted: `pnpm run format:markdown`
- [ ] #3 `pnpm run lint:markdown` passes
- [ ] #4 `pnpm run test:markdown-format` and `pnpm run test:markdown-rules` pass
- [ ] #5 `pnpm run check:lectures` passes
- [ ] #6 `pnpm run check:links` passes
- [ ] #7 Implementation notes record the decisions made and the validation results
<!-- DOD:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
The Backlog.md section moved unchanged from repository-requirements.md to requirements/local-task-tracking-requirements.md as A Task Tracker In The Repository. Decided in review: TODO.md is a working checklist for the work in hand plus candidate tasks, ticked as done and cleared whenever convenient, with its format left to the team and the example showing checkboxes, nesting, and a Later section. Committed or per member is the team's choice; Backlog drafts may hold candidates instead; customer action points go straight to task issues; committed TODO.md edits may ride along in any pull request; from W3 the choice is stated in CONTRIBUTING.md. The cleanup workflow's pull request is exempt from closing a task issue, as for Dependabot. The markdownlint-cli2 example sets gitignore as a general setting so local runs match CI, and TODO.md is not mentioned there. backlog-cleanup.yml lost its maintainer-only wording: the flake.nix comment, the named Lectures workflow, the agents commit scope, and the claim that the link check excludes backlog/. Validation: format:markdown:check, lint:markdown, both plugin fixtures, check:lectures, and check:links (786 OK, 0 errors) pass; actionlint passes on the workflow; no link to the old tracking-tasks-inside-the-repository anchor remains outside backlog/.
<!-- SECTION:NOTES:END -->
