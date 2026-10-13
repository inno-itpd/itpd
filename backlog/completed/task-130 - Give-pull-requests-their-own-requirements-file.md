---
id: TASK-130
title: Give pull requests their own requirements file
status: Done
assignee: []
created_date: '2026-10-13 08:58'
updated_date: '2026-10-13 09:03'
labels: []
dependencies: []
priority: medium
type: docs
ordinal: 126000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
The pull request rules are split across repository-requirements.md, task-issues-requirements.md, and definition-of-done-requirements.md, so no single file owns the pull request lifecycle.
Move it out of repository-requirements.md into requirements/pull-requests-requirements.md, leaving repository-requirements.md with the branch protection settings, and repoint every inbound link.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 requirements/pull-requests-requirements.md owns the pull request lifecycle: every change through a pull request, one change per pull request, branch naming, the template and its implementation notes, review and approval, the evidence, bot and workflow pull requests, and the Week 1 minimums.
- [x] #2 repository-requirements.md keeps only the branch protection settings, and its TOC, repository-setup pointer, Pinning rule, and Contributing section are updated.
- [x] #3 Every inbound link in assignments, course, and requirements points at the new file, and no tracked file outside backlog/ names the old anchor.
- [x] #4 README.md, course/rules.md, SKILL.md, AGENTS.md, and course/syllabus.md route to the new file.
- [x] #5 The Markdown gates, the plugin fixtures, check:lectures, and check:links pass.
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
Split the pull request lifecycle out of repository-requirements.md into requirements/pull-requests-requirements.md, moving rules 3-8 and the Week 1 minimums verbatim: Every Change Goes Through A Pull Request, One Change Per Pull Request, Branch Naming, The Pull Request Template (now naming the description's implementation notes), Review And Approval, Keeping The Evidence, Bot And Workflow Pull Requests (consolidating Pinning rule 4 and Contributing rule 7), and Week 1 Minimums.
repository-requirements.md keeps the branch protection settings under Branch Protection and points to the new file; its TOC, repository-setup pointer, Pinning rule 4, and Contributing rule 3 were updated, and Contributing rule 7 was removed.
Decisions: the new file owns only the PR lifecycle, so Closing A Task stays in task-issues-requirements.md and the pull request done list stays in definition-of-done-requirements.md, both now linking the new file; the old branch-protection-and-pull-requests anchor is accepted as broken, with every in-repo link migrated.
Routing was added to README.md, course/rules.md, SKILL.md, and both AGENTS.md tables; assignment-1's table, Week 1 sweep sentence, and minimums link were updated, assignment-2's branch and template link was split, and the syllabus Week 1 pointer now names both files.
Validation: format:markdown:check, lint:markdown, both plugin fixtures, check:lectures, and the fragment-aware check:links (1047 OK, 0 errors) pass; rg for the old anchor outside backlog/ returns nothing.
A pre-existing formatting drift in issue-tracking-requirements.md (a missing blank line before issue-fields rule 2) was corrected by the formatter.
<!-- SECTION:NOTES:END -->
