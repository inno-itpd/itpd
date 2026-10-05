---
id: TASK-015
title: Make the GitHub issue the source of truth for each user story
status: Done
assignee: []
created_date: '2026-10-03 21:16'
updated_date: '2026-10-03 21:21'
labels: []
dependencies: []
modified_files:
  - AGENTS.md
  - assignments/assignment-2.md
  - course/syllabus.md
  - guides/user-stories-and-prototyping.md
  - guides/validating-with-the-customer.md
  - requirements/artifact-requirements.md
  - requirements/process-requirements.md
  - requirements/repository-requirements.md
priority: high
type: docs
ordinal: 15000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Story files in docs/user-stories/us/ currently hold the requirement while the GitHub issue mirrors them. This task inverts that: the issue is the story, the repository keeps only a thin registry at docs/user-stories/README.md, and every rule, guide, and assignment sentence that names a story file or its YAML frontmatter moves to the issue shape. Decisions made with the user before editing: one issue per story from .github/ISSUE_TEMPLATE/user-story.yml; MoSCoW in moscow:* labels created by any means; a required MUP candidate milestone; inactive stories closed as not planned; delivered active stories closed as completed; validation changes recorded as dated issue comments; the repo-file planner scoped to tasks, not stories; the lecture deck untouched.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 process-requirements.md defines the story as an issue: one issue per story, active means open or closed as completed, inactive means closed as not planned, criteria are required only for active stories, and a validation change is a dated issue comment.
- [x] #2 artifact-requirements.md replaces the story-file and YAML-frontmatter shape with the issue shape and the thin docs/user-stories/README.md registry carrying Active stories, Minimum usable product candidate, and Inactive stories.
- [x] #3 repository-requirements.md requires user-story.yml, the named label set, branch and pull request linking, the MUP candidate milestone, and the close-reason semantics, scopes the repo-file planner to tasks, and drops the YAML-frontmatter clause from the CI section.
- [x] #4 Both Week 2 guides name the issue instead of a story file for producing a story and for recording a meeting change.
- [x] #5 assignment-2.md merges Parts 2 and 3 into Part 2: Write And Track The User Stories As Issues, renumbers the later parts and the table of contents, and updates the coverage table, evidence, what-good-looks-like, and checklist.
- [x] #6 course/syllabus.md Week 2 and the AGENTS.md destination map and terminology match the issue-based story.
- [x] #7 All four Markdown gates pass, and every relative link and heading anchor in the changed files resolves.
- [x] #8 A stale-reference sweep finds no us/US- path, user-story.md reference, or story-frontmatter instruction outside this task's own record.
<!-- AC:END -->

## Definition of Done
<!-- DOD:BEGIN -->
- [x] #1 All acceptance criteria are satisfied
- [x] #2 Changed Markdown files are formatted: `pnpm run format:markdown`
- [x] #3 `pnpm run lint:markdown` passes
- [x] #4 `pnpm run test:markdown-format` and `pnpm run test:markdown-rules` pass
- [x] #5 `pnpm run check:lectures` passes
<!-- DOD:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Applied the issue-as-source-of-truth model across the Week 2 materials. process-requirements.md defines active and inactive through the issue close reason, makes criteria optional for inactive stories, and moves the validation change to a dated issue comment. artifact-requirements.md replaces the story-file and YAML-frontmatter shape with the issue shape and the thin README registry carrying minimal columns. repository-requirements.md requires user-story.yml, the user-story and moscow labels created by any means, the MUP candidate milestone, and the close-reason semantics, and recasts the repo-file planner as a task tracker; the YAML-frontmatter clause is gone from the CI section. Both Week 2 guides name the issue for producing a story and for recording a meeting change. assignment-2.md merges Parts 2 and 3 into Part 2: Write And Track The User Stories As Issues, renumbers the later parts and the table of contents, and updates the coverage table, evidence, what-good-looks-like, and checklist. course/syllabus.md Week 2 and the AGENTS.md destination map and terminology match. The lecture deck is untouched. backlog.md remains untracked and was not edited, per the decision.

Verification: format:markdown:check, lint:markdown, test:markdown-format, and test:markdown-rules all pass. A link and heading-anchor checker over every tracked Markdown file reports all links resolve. check:lectures reports 2 decks match their sources, built with Typst 0.15.1. A stale-reference sweep finds no us/US- path, user-story.md reference, or story-frontmatter instruction outside this task. No commit was made.
<!-- SECTION:NOTES:END -->
