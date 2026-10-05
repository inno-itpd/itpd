---
id: TASK-068
title: Require links on main from every issue and pull request
status: Done
assignee: []
created_date: '2026-10-05 18:13'
updated_date: '2026-10-05 18:14'
labels: []
dependencies: []
ordinal: 68000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
The rule to link a file on main by its full URL lived only inside the Traces to rule, but change comments, verdict comments, task issues, and pull request descriptions cite files too, and a relative link breaks in all of them. The link check never sees issue or PR bodies. Move the rule to Issue Tracking in repository-requirements.md, contrasted with the commit-hash permalink for submission.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 repository-requirements.md Issue Tracking requires a full URL on main for a file linked from an issue, an issue comment, or a pull request description, and says why not a commit hash
- [x] #2 user-stories-requirements.md links the rule instead of restating it
- [x] #3 general-requirements.md Traceability Into Later Weeks links the rule for citations from an issue or pull request
- [x] #4 assignment-2.md links the rule where it orders the merges before stories link them
- [x] #5 Markdown format check and lint pass
<!-- AC:END -->

## Definition of Done
<!-- DOD:BEGIN -->
- [ ] #1 All acceptance criteria are satisfied
- [ ] #2 Changed Markdown files are formatted: `pnpm run format:markdown`
- [ ] #3 `pnpm run lint:markdown` passes
- [ ] #4 `pnpm run test:markdown-format` and `pnpm run test:markdown-rules` pass
- [ ] #5 `pnpm run check:lectures` passes
<!-- DOD:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Moved the main-link rule from the Traces to rule into Issue Tracking rule 9, covering issues, issue comments, and pull request descriptions, contrasted with the commit-hash permalink for submission, plus a Recommended hint in the user-story form. user-stories, general-requirements, and Assignment 2 link it instead of restating it.
<!-- SECTION:FINAL_SUMMARY:END -->
