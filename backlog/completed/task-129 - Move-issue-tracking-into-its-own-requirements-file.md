---
id: TASK-129
title: Move issue tracking into its own requirements file
status: Done
assignee: []
created_date: '2026-10-13 08:40'
updated_date: '2026-10-13 08:45'
labels: []
dependencies: []
type: docs
ordinal: 125000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
repository-requirements.md carries the issue tracker rules beside the platform plumbing, and the section has grown past one section: the W2 shared rules plus the W3 Issue Fields, Assignees, and GitHub Projects, with Week 4 touching the issue machinery again. Give issue tracking its own requirements file, as local-task-tracking-requirements.md and minimum-usable-product-requirements.md were given theirs, so repository-requirements.md stays repo plumbing. Every inbound link, TOC row, and router row follows. This is TODO.md's "Move issues to a separate doc".
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 requirements/issue-tracking-requirements.md holds the moved content as Opening Issues, Linking A File From An Issue Or A Pull Request, Issue Fields, Assignees, and GitHub Projects, each `**Since:**` marker intact, under the title Issue Tracking Requirements
- [x] #2 repository-requirements.md no longer holds the section or its TOC rows, its `## Contributing` rule 5 links the new file, and the moved text's permalink link points at `repository-requirements.md#permalinks-and-snapshots`
- [x] #3 Every inbound link points at the new file: general-requirements.md, user-stories-requirements.md, task-issues-requirements.md, planning-requirements.md, guides/planning-and-tracking.md, and assignments/assignment-2.md
- [x] #4 README.md, SKILL.md, and course/rules.md route to the new file, and AGENTS.md moves "the rules every issue shares" to the new file's rows
- [x] #5 TODO.md's "Move issues to a separate doc" item is ticked with the new file named
- [x] #6 No link to repository-requirements.md#issue-tracking, #issue-fields, #assignees, or #github-projects remains outside backlog/
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
1. Write requirements/issue-tracking-requirements.md. 2. Remove the section and TOC rows from repository-requirements.md and repoint Contributing rule 5. 3. Repoint the six inbound files. 4. Update README.md, SKILL.md, course/rules.md, AGENTS.md, and TODO.md. 5. Run the gates, check the criteria, and record the notes.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
The Issue Tracking section moved out of repository-requirements.md into requirements/issue-tracking-requirements.md, restructured like the earlier extractions: ## Opening Issues holds the W2 rules (blank issues off, the bootstrap pull request, every issue from a form), ## Linking A File From An Issue Or A Pull Request holds the full-URL-on-main rule, and Issue Fields, Assignees, and GitHub Projects follow as h2 sections, so the #issue-fields, #assignees, and #github-projects anchors survive. The moved text's permalink link points back at repository-requirements.md#permalinks-and-snapshots, and ## Contributing rule 5 links the new file. Every inbound link was repointed (general, user-stories, task-issues, planning, the planning guide, and assignment 2); task-issues' intro now splits the shared rules from the branch and pull request rules. Routers updated: README.md, SKILL.md, and course/rules.md split the issue-tracking row out of Repository Requirements; AGENTS.md gained the file in both tables and the repository row lost 'the rules every issue shares'; TODO.md's 'Move issues to a separate doc' item is ticked with the file named. Decided: one h2 per part, splitting the shared rules into Opening Issues and the file-linking rule; the scheduling references point at #issue-fields rather than the whole file. Verified: format:markdown:check, lint:markdown, both vitest suites (34 and 34), check:lectures (3 decks match), check:links (1019 OK, 0 errors with fragments), and backlog doctor clean; no link to the old anchors remains outside backlog/.
<!-- SECTION:NOTES:END -->
