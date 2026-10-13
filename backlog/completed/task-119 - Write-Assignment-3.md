---
id: TASK-119
title: Write Assignment 3
status: Done
assignee:
  - '@opencode'
created_date: '2026-10-12 19:09'
updated_date: '2026-10-13 09:49'
labels: []
dependencies:
  - TASK-127
  - TASK-128
references:
  - assignments/assignment-2.md
modified_files:
  - assignments/assignment-3.md
  - README.md
type: docs
ordinal: 115000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Assignment 3 is the delta for Week 3: planning (threshold of success, project plan, risks, Definition of Done) and delivery (the MUP built on `main`, the stack decision, the release with changelog and SemVer tag, the product-code CI, the GitHub Pages site, and the setup page).
This task writes `assignments/assignment-3.md` in the Assignment 2 shape, ordered by the order of work, linking the rules rather than restating them; it is last because it cites every part.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 The assignment states the soft deadline Thursday 15 October 2026, 23:59 and the hard deadline Friday 16 October 2026, 23:59
- [x] #2 The ordered parts: 1 threshold of success (linked from the vision goal), 2 project plan with its tables, sections, and the two GitHub milestones, 3 the stack decision and the `.gitignore` update, 4 the Definition of Done, `CONTRIBUTING.md`, the public GitHub project with its table view, and the three issue fields and the matching assignees on every scheduled issue, 5 the MUP through task issues and pull requests on `main`, 6 the docs site and `docs/setup.md` linked from the root README, 7 the Week 2 action points and open questions, 8 customer validation with verdicts, 9 the first release after the meeting and rework, and 10 the AI usage part; then the closing sections What Good Looks Like, Assignment Report In The Repository, Assignment Report On Moodle, Submission Procedure, and Checklist
- [x] #3 The week minima appear: 3 or more `TOS-nn` goals, 3 or more `RISK-nn` risks, all seven `SPRINT-nn` sections with the later ones provisional, `MLS-03` plus a second milestone, one public GitHub project whose table view lists every open issue with the three field columns and the assignees, every scheduled issue carrying the three field values and both members as assignees (at minimum the `SPRINT-03` set), every candidate story built and shown or moved out with the customer decision, one `DEC-nnn` for the stack, and the first release tagged
- [x] #4 Every rule the assignment needs is cited, not restated (threshold, plan, risks, Definition of Done, MUP build, Pages, setup, issue fields, GitHub project, meetings, and reports), with concrete paths and week minima
- [x] #5 The README assignments table gains the Week 3 row, and `pnpm run check:links` passes
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
1. Write `assignments/assignment-3.md` in the Assignment 2 shape, ordered by the order of work: the threshold, the plan and risks, the stack, done and the workflow, the MUP, the docs site and setup page, the Week 2 action points, the customer meeting, the first release, and the AI usage report, then the closing sections.
2. Add the Week 3 row to the README assignments table.
3. Run the four Markdown gates, `check:links`, `check:lectures`, and `backlog doctor`; review the parts against TASK-119's acceptance criteria.
4. Record the decisions and validation in the task notes, check the criteria and the DoD, and finish.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Follows the handoff plan: D27's outline with the settled decisions D2 (sprint structure), D3 (dates), D14 and D36 (issue fields, assignees, the public project), D16 (MUP build, meeting verdicts, moving stories out), D17 (the stack decision), D21 (the tooling note), D26 (the week's meeting and report), D31 (the vision link), D32 (the release model), D33 (scheduling), D34 (the setup page), and D35 (the statements). The assignment keeps the ten parts the acceptance criteria list, so the risk register is written in Part 2 with the plan rather than as a separate part. Week minima: 3+ `TOS-nn` goals, 3+ `RISK-nn` risks, seven `SPRINT-nn` sections with `SPRINT-03` and `SPRINT-04` concrete and the rest provisional, `MLS-03` plus a second milestone, the three issue fields and the same two assignees (at minimum the `SPRINT-03` set), every candidate story built and shown or moved out, one `DEC-nnn` for the stack, and the first release tagged. Rules are linked, not restated; Part 3 also carries the stack's `.github/dependabot.yml` entry, and Part 10 is the AI usage report as in Assignment 2. README's assignments table gained the Week 3 row. Validation: format:markdown (no-op), format:markdown:check, lint:markdown, test:markdown-format (34 passed), test:markdown-rules (34 passed), check:lectures (3 decks match, Typst 0.15.1), check:links (1157 total, 1155 OK, 0 errors, 2 excluded, 1 redirect, --include-fragments so the new anchors resolve), and backlog doctor (no duplicates, self-references, or cycles). Modified files: assignments/assignment-3.md, README.md.
<!-- SECTION:NOTES:END -->

## Comments

<!-- COMMENTS:BEGIN -->
created: 2026-10-13 07:38
---
Scope extended by TASK-127: part 4 and the week minima carry the public GitHub project and its table view.
---

created: 2026-10-13 08:26
---
Scope extended by TASK-128: part 4 and the week minima carry the matching assignees.
---
<!-- COMMENTS:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Wrote `assignments/assignment-3.md` in the Assignment 2 shape: ten parts in the order of work — threshold of success with its statements and the vision link; project plan with the seven sprint sections, `REL-03` to `REL-09`, two milestones, and progress monitoring; the risk register; the stack decision, `.gitignore`, and dependabot; the Definition of Done, `CONTRIBUTING.md`, the issue fields, assignees, and the public project; the MUP through task issues and pull requests with the product-code CI; the docs site and `docs/setup.md`; the Week 2 action points; the customer meeting with verdicts; the first release; and the AI usage report — then What Good Looks Like, the repository and Moodle report sections, the submission procedure, and the checklist. Added the Week 3 row to the README assignments table. Verified with the four Markdown gates, `check:lectures`, `check:links` with fragments (0 errors), and `backlog doctor`.
<!-- SECTION:FINAL_SUMMARY:END -->
