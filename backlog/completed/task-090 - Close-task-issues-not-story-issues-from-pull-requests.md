---
id: TASK-090
title: 'Close task issues, not story issues, from pull requests'
status: Done
assignee: []
created_date: '2026-10-06 14:33'
updated_date: '2026-10-06 14:35'
labels: []
dependencies: []
ordinal: 86000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Decided on 2026-10-06.
Problem: Issue Tracking rule 7 let a pull request target a story, provided it avoided three GitHub auto-close paths (closing keyword, branch created from the issue, Development sidebar link). That tangled a requirement the customer accepts with a unit of work a reviewer merges.
Decisions:
- Every pull request closes exactly one task issue; a story issue is never a pull request's issue. A task that needs more than one pull request is split.
- Dependabot pull requests have no task issue.
- task.yml covers every unit of work, with optional Story and Acceptance criteria fields, one entry per line, so a task may serve several stories.
- Recommended: a story lists its tasks as a task list in its body, not as sub-issues, because a sub-issue has one parent.
- Rework on a rejected story is a new task naming the story and each failed AC-nn and citing the rejection's DEC-nnn.
- The PR template may name the AC-nn and story, or link the task that names them.
- Since W2, applied now; Assignment 2 adds a catch-up step for task.yml.
Rejected: keeping the Refs exception; requiring sub-issues; one story per task; a task spanning several pull requests; reopening closed tasks on rejection.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 repository-requirements.md Issue Tracking rule 2: task.yml is for every unit of work, with optional Story and Acceptance criteria fields
- [x] #2 Issue Tracking rule 7: every pull request closes exactly one task issue, a story issue is never a pull request's issue, Dependabot pull requests are exempt, and the Refs exception is gone
- [x] #3 Issue Tracking recommends a task list in the story body rather than sub-issues, naming the one-parent limit
- [x] #4 Branch Protection rule 6 lets the pull request template link the task issue that names the AC-nn
- [x] #5 user-stories-requirements.md Where Stories Live: the story body may carry a task list of its tasks, closing its tasks does not close it, and rework on a rejected story is a new task
- [x] #6 assignment-2.md Part 1, report evidence, and checklist reflect the task-issue rule, with a catch-up step for the task.yml fields
- [x] #7 course/syllabus.md Week 2 Issue Tracking deliverable and AGENTS.md Terminology mention task issues
<!-- AC:END -->

## Definition of Done
<!-- DOD:BEGIN -->
- [x] #1 All acceptance criteria are satisfied
- [x] #2 Changed Markdown files are formatted: `pnpm run format:markdown`
- [x] #3 `pnpm run lint:markdown` passes
- [x] #4 `pnpm run test:markdown-format` and `pnpm run test:markdown-rules` pass
- [x] #5 `pnpm run check:lectures` passes
- [x] #6 Implementation notes record the decisions made and the validation results
<!-- DOD:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
2026-10-06: Issue Tracking rule 7 now requires every pull request to close exactly one task issue, and a new rule 8 says a story issue is never a pull request's issue, so the old rules 8 and 9 became 9 and 10; nothing cited them by number. Rule 4's blank issue for the forms pull request is closed like any other pull request's task, so it is not an exception to rule 7. Dependabot is exempt by pointing at Pinning Third-Party Actions rather than restating its handling. The Story and Acceptance criteria fields take one entry per line, so a task can serve several stories; that is also why the recommended story-side tracking is a task list in the story body and not sub-issues, which have one parent. Where Stories Live rule 3 already exempted the checklist from change comments, and now names it the task list. Rework after a rejection is a new task citing the rejection's DEC-nnn, with closed tasks left closed. The pull request template rule accepts a link to the task issue that names the AC-nn, so templates already merged stay valid. Assignment 2 gets a one-time catch-up step for the task.yml fields, modelled on the Rests on step, and says pull requests already merged with a reference to a story need no change. The guide, the customer-meetings requirements, and the lectures needed no change.
Validation: format:markdown:check, lint:markdown, test:markdown-format, test:markdown-rules, and check:lectures pass. rg for "refs #", "development sidebar", "not a story", and "reference each pull request" finds no stale text. The #pinning-third-party-actions anchor exists.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Every pull request closes exactly one task issue, and a story issue is never a pull request's issue, because a story closes only on the customer's acceptance. The Refs exception is gone. task.yml covers every unit of work, with optional Story and Acceptance criteria fields. Dependabot pull requests are exempt. A story is recommended to list its tasks as a task list in its body rather than as sub-issues. Rework on a rejected story is a new task. Assignment 2, the syllabus, and AGENTS.md Terminology follow.
<!-- SECTION:FINAL_SUMMARY:END -->
