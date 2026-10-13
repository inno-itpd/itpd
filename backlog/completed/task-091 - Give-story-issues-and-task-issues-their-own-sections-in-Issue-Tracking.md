---
id: TASK-091
title: Give story issues and task issues their own sections in Issue Tracking
status: Done
assignee: []
created_date: '2026-10-06 15:06'
updated_date: '2026-10-06 15:08'
labels: []
dependencies: []
ordinal: 87000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Decided on 2026-10-06.
Problem: task issue is a course term with no definition. Issue Tracking was a flat ten-rule list that mixed the story form, the task form, labels, and pull request rules, so no one place said what a task issue is.
Decisions:
- Issue Tracking keeps its anchor and the shared rules: blank issues off, the bootstrap pull request, every issue from a form, links on main.
- A Story Issues subsection holds the platform side of a story issue: the form, its labels, never a pull request's issue, and the two recommendations. The term stays defined in Where Stories Live.
- A Task Issues subsection defines the term and holds the form, the task label, one task per pull request, rework after a rejection (moved from Where Stories Live), the acceptance criteria check before merging, close states, and action points carried out by a task.
- Labels are split per subsection.
- New: close states for a task, an action point that changes the repository is carried out by a task issue, the bootstrap issue gets the task label, a recommended imperative title, and a short example.
- Branch naming says task issue and stays in Branch Protection; the PR template rule names the task first.
- Everything Since W2, with a one-time catch-up in Assignment 2.
Rejected: a separate task-issues requirements file; renaming Where Stories Live; Since W3 for the new rules; a title convention with an identifier.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 repository-requirements.md Issue Tracking has Story Issues and Task Issues subsections, in the table of contents; Task Issues defines task issue, and Story Issues links the definition in Where Stories Live
- [x] #2 Every current Issue Tracking rule and recommendation maps to exactly one place, with the label rule split per subsection
- [x] #3 Task Issues owns the rework rule, the acceptance criteria check before merging, close states, and the action point rule, recommends an imperative title, and has a short example
- [x] #4 The bootstrap rule applies the task label to the first blank issue
- [x] #5 Branch Protection rule 5 names branches after a task issue, and rule 6 names the task issue first
- [x] #6 Inbound links that mean one kind of issue point at story-issues or task-issues: user-stories-requirements.md, customer-meetings-requirements.md rule 10, the prototyping guide, and assignment-2.md
- [x] #7 assignment-2.md Part 1 has a one-time catch-up for the bootstrap label and tasks left open by unmerged pull requests
- [x] #8 AGENTS.md names issues in the repository-requirements.md ownership row, and its action point sentence says a task issue
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
2026-10-06: Issue Tracking keeps its anchor and the rules that apply to both kinds of issue: blank issues off (old 3), the bootstrap pull request (old 4, now also labelling that issue task), every issue from a form (old 5), and links on main (old 10). Story Issues takes the story form (old 1), the user-story and moscow labels (the story half of old 6), never a pull request's issue (old 8, first two sentences), and both old Recommended items; it links the definition in Where Stories Live rather than restating it, and the old closing pointer became its opening. Task Issues defines the term, since nothing else owned it, and takes the task form (old 2), the task label (the task half of old 6), one task per pull request (old 7), work on a story as tasks (old 8, last sentence), the acceptance criteria check (old 9), and the rework rule moved from user-stories rule 2, which now links it. New in Task Issues: close states, an action point that changes the repository is carried out by a task citing it per Identifier Rules (customer-meetings rule 10 Outcome links that task), a recommended imperative title, and an example reusing #12 and story #42 / AC-01, AC-02, so no identifier is allocated. Branch rule 5 now names the task issue and its example became 12-hold-a-slot-while-the-client-pays, because 42 is the story in the examples. The PR template rule links the task first and names the AC-nn only when the task does not. Everything stays Since W2; Assignment 2 gets catch-up step 4 for the bootstrap label and tasks left open by unmerged pull requests. Links about forms, labels, and links on main stay at #issue-tracking.
Validation: format:markdown:check, lint:markdown, test:markdown-format, test:markdown-rules, and check:lectures pass. The ### Story Issues and ### Task Issues headings back all 18 new anchor links. rg finds no 42-add-login-form, tracked issue, or old either/or PR template wording.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Issue Tracking now has Story Issues and Task Issues subsections. Task Issues defines the term and owns the task form, label, one task per pull request, rework, the acceptance criteria check, new close states, and the new action point rule, with an example. Story Issues owns the story form and labels and links the definition in Where Stories Live. Branch naming and the PR template name the task issue; inbound links, Assignment 2, and AGENTS.md follow.
<!-- SECTION:FINAL_SUMMARY:END -->
