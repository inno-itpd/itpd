---
id: TASK-061
title: Remove the places where Assignment 2 blocks or misleads a student
status: In Progress
assignee: []
created_date: '2026-10-05 14:45'
updated_date: '2026-10-05 14:46'
labels:
  - docs
dependencies: []
priority: high
ordinal: 61000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
A review of assignment-2.md against its rules and against the Week 1 rules students actually followed (f4df717) found steps students cannot follow: Part 1 describes a Changes column, TBD, and a reason column that no Week 1 report has; a decision that changed a GAP-nn or VP-nn without dropping it has nowhere to be cited; the Markdown check fails on Week 1 files that Part 1 says to leave alone; the Parts run against their dependencies; the candidate cannot be seen in the filtered issue list; and a refused transcript cannot fit a two-page PDF. It also requires a story change where the rules accept any changed artifact, hides the context diagram and the PR template update, and repeats rules inside Parts.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 research-requirements.md gives a changed gap and value proposition a **Changed:** field, and decisions-requirements.md and general-requirements.md cite it
- [ ] #2 A2 Part 1 step 1 reads from the Week 1 columns Decision, Made by, and Traces to, and says why the catch-up exists
- [ ] #3 A2 has an Order Of Work section in dependency order, and Part 7 puts the formatting-only fix of earlier weeks before the check
- [ ] #4 A2 Part 6 shows the candidate by core task and US-nn in the script, and its agenda opens with permissions and ends with the read-back
- [ ] #5 A2 accepts a changed story or another changed artifact as the meeting's change, everywhere it asks for one
- [ ] #6 A2 names the context diagram and the PR template AC-nn prompt in its steps, coverage table, and checklist, and drops the deviation escape hatch and the duplicated rule bullets
- [ ] #7 A1 and A2 let a refused transcript be a PDF appendix outside the two-page limit
<!-- AC:END -->

## Definition of Done
<!-- DOD:BEGIN -->
- [ ] #1 All acceptance criteria are satisfied
- [ ] #2 Changed Markdown files are formatted: `pnpm run format:markdown`
- [ ] #3 `pnpm run lint:markdown` passes
- [ ] #4 `pnpm run test:markdown-format` and `pnpm run test:markdown-rules` pass
- [ ] #5 `pnpm run check:lectures` passes
<!-- DOD:END -->
