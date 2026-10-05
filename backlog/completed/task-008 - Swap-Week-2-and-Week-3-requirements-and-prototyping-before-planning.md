---
id: TASK-008
title: 'Swap Week 2 and Week 3: requirements and prototyping before planning'
status: Done
assignee: []
created_date: '2026-10-01 19:07'
updated_date: '2026-10-02 05:08'
labels: []
dependencies: []
references:
  - tmp/itpd-2025/assignments/assignment-2.md
  - tmp/itpd-2025/assignments/assignment-3.md
  - tmp/itpd-2025/lectures/lecture-2.1.pdf
  - tmp/itpd-2025/lectures/lecture-3.pdf
  - tmp/itpd-2025/lectures/lecture-4.pdf
  - tmp/swp-2026/labs/lab-2.txt
  - tmp/swp-2026/labs/lab-3.txt
  - tmp/swp-2026/other/Assignment_Design.md
modified_files:
  - AGENTS.md
  - README.md
  - assignments/assignment-2.md
  - backlog.md
  - course/syllabus.md
  - guides/user-stories-and-prototyping.md
  - guides/validating-with-the-customer.md
  - lectures/lecture-1.typ
  - lectures/lecture-1.pdf
  - lectures/lecture-2.typ
  - lectures/lecture-2.pdf
  - requirements/artifact-requirements.md
  - requirements/process-requirements.md
  - requirements/repository-requirements.md
ordinal: 8000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Week 2 asked for a work plan and a codebase scaffold in the same week, and those two deliverables are in tension.
A scaffold encodes a stack choice, a data model, and a component structure, and all three are decisions about what the product does.
A team that has not settled requirements yet is guessing, and the guess gets thrown away.

The 2025 course made the cost visible.
`tmp/itpd-2025/assignments/assignment-2.md` asked for a four-diagram architecture and five quality requirements with tests, for a product nobody had built or prototyped.
`tmp/itpd-2025/assignments/assignment-3.md` then carried `Update QASs and QASTs` and `Update the priorities`.
The Week 2 requirements were wrong, not merely incomplete.

`tmp/itpd-2025/assignments/assignment-2.md:34` still carries an unresolved comment on the tech-stack line reading `TODO: should they do this before validating requirements and a prototype?`.
Swapping the two weeks is the answer to that question, and the stack decision moves to Week 3 behind the validation.

This task moves requirements and prototyping into Week 2 and planning and the minimum usable product into Week 3, then writes the Week 2 lecture, the Week 2 assignment, the two guides, and the requirements that back them.

The Week 1 research becomes a Week 2 input rather than a Week 1 conclusion.
`GAP-nn` and `VP-nn` feed the vision, the vision feeds the stories, the stories feed the prototype, and the prototype feeds the meeting that changes a story.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 Week 2 is *Requirements & Prototyping* and Week 3 is *Planning & Minimum Usable Product*, because a scaffold encodes a stack, a data model, and a component structure, and all three are decisions about what the product does
- [x] #2 Seven sites in `course/syllabus.md` are updated, including the table of contents anchors, the weekly table, section 2 item 4, both week sections, the Week 4 threshold deliverable, and the assessment catalog, because the table of contents and the catalog both encode the old order and are the easiest sites to miss
- [x] #3 The two remaining `workshop` mentions in the attendance rows are removed, because the Week 2 workshop was cancelled on 2026-09-30 and the other two rows contradicted that
- [x] #4 `## Quality Rules` becomes `## Research Honesty Rules`, because once Week 4 owns software quality, a student grepping this file for quality rules lands on a section about research honesty
- [x] #5 `US-nn` moves from Week 3 to Week 2 in the identifier rules, because the acceptance criteria that `repository-requirements.md` already grades against now have a Week 2 artifact to live in
- [x] #6 The Week 2 traceability row cites the kickoff meeting report action points, because `assignment-1.md` already requires two action points due inside Week 2 and nothing would otherwise collect them
- [x] #7 `## Product Vision And Goals`, `## Constraints`, `## Stakeholders, Boundary, And Context`, `## User Stories And Acceptance Criteria`, and `## Validation` are added to `process-requirements.md`, each carrying `**Since: W2**`
- [x] #8 `## Product Vision`, `## User Stories`, and `## Prototypes` are added to `artifact-requirements.md`, because no Week 2 artifact had a structure requirement and that absence is what blocks an assignment
- [x] #9 There is no `docs/prototypes/`, because a prototype is throwaway by definition and `docs/` is reserved for maintained documentation; the evidence is `reports/week-02/prototypes.md` and the screenshot beside it
- [x] #10 Disposable prototype code does not go on `main`, because a permanent home for throwaway code is the thing the requirement exists to prevent, and `repository-requirements.md` already forbids deleting a branch that is the evidence
- [x] #11 `docs/user-stories/` is a directory with a `README.md` index and one `US-nn.md` per story, because the index is the registry of identifiers and the individual files are what the requirements are held in
- [x] #12 The backlog tool's files are declared repository content rather than artifacts, because otherwise the tool's directory becomes a third location for course work, which `artifact-requirements.md` forbids
- [x] #13 The `**Since: W5**` marker on `## Continuous Integration` becomes a Week 2 Markdown check and a Week 3 product-code check, because Week 2 is mostly prose and a defect in prose is still a defect
- [x] #14 `## Contributing` is added and `CONTRIBUTING.md` moves from an end-of-course recommendation to Required at Week 3, because an unstated commit message format cannot be reviewed
- [x] #15 `## Planning And Issue Tracking` keeps one heading and two `**Since:**` blocks rather than splitting, because the preamble of that file already says a section may hold requirements that begin in different weeks
- [ ] #16 `lectures/lecture-2.typ` exists at 38 slides in five sections, each opening with a Quiz and closing with Key Takeaways, and every borrowing from the 2025 decks and from `swp_2026/` is recorded in its file header
- [x] #17 `assignments/assignment-2.md` exists in the eleven-part shape, with 8 or more stories, at least two observable criteria each, no product code, a required validation meeting, and a change required as a result
- [x] #18 `guides/user-stories-and-prototyping.md` and `guides/validating-with-the-customer.md` are added, because Week 1 ships a guide per activity and the assignment checklist sends the detail to a guide
- [ ] #19 `lectures/lecture-1.typ` no longer says architecture is out of scope, because Week 4 requires an architectural draft and one of the two sentences on that slide was wrong
- [x] #20 The four gates pass and both plugin fixtures pass, and every internal link and heading anchor in the 21 tracked Markdown files resolves
<!-- AC:END -->

## Implementation Plan

<!-- SECTION:PLAN:BEGIN -->
Set the week markers and destinations in `course/syllabus.md`, `AGENTS.md`, and the three requirements files first, because every other file links into them and a link written against the old anchors fails the link check.
Add the Week 2 sections to `process-requirements.md` and the artifact structures to `artifact-requirements.md`.
Write the two guides, then `lectures/lecture-2.typ`, then `assignments/assignment-2.md`, so the assignment cites the deck's vocabulary rather than inventing a second one.
Reword `lecture-1.typ`, append the Week 3 and Week 4 notes to `backlog.md`, and delete `handoff.md`.
Build the deck, compare the page count against the slides written, render the densest slides, and run the four gates.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Two acceptance criteria are left unchecked, and the reason is that a second process revised the lecture decks while this task was in flight.
Criteria 16 and 19 both describe lecture work, and neither describes the current working tree.

`lectures/lecture-2.typ` was edited after the last build.
It went from 38 slide call sites in five sections to 32 in four: the `Why planning moved to Week 3` slide is gone, the `How to decide, not how to do` section divider and its `The stance` slide are gone, and the two `Key Takeaways` closers that went with them are gone, so two of the five sections now have a Quiz with no closer.
Whether that is a tighter deck or a loss of the argument for the reorder is a judgement for whoever finishes the decks, not something this task should decide.
The committed `lectures/lecture-2.pdf` is 127949 bytes and the current source builds 115282, so `pnpm run check:lectures` fails until the deck is rebuilt.
A rebuilt deck must be committed together with its source or CI stays red.

`lectures/lecture-1.typ` had its line 103 reverted to `Not about architecture - you'll have a course next semester`, with the replacement sentence kept as a comment under a `// TODO consider clarifying`.
That is a review decision to reconsider the wording rather than accept it, so criterion 19 stays unchecked.
Week 4 does require an architectural draft, so the sentence still has to change before the course runs.

Three decisions deviate from `handoff.md`, and all three are recorded in `backlog.md`.

No `docs/prototypes/`. A prototype is throwaway by definition, and putting it in `docs/` claims it is maintained documentation.
The evidence is `reports/week-02/prototypes.md`, which follows the `candidate-list.md` shape that Week 1 already uses for week-local evidence.

The Rust mandate is stated generically as a language or platform mandate that came with the catalog project, rather than naming project 4, because `requirements/` is normative and student-facing while the catalog is regenerated each term.

`AGENTS.md` said headings are sentence case in guides and assignments, and every existing H2 in `guides/` and `assignment-1.md` is Title Case.
The files were followed and the rule corrected, so the repository is self-consistent.

Four deck defects were found only by rendering the pages, not by compiling.
Three slides had a stray `)` where a `]` closed the block, and `#slide` is positional, so a broken delimiter swallows the rest of the file instead of erroring locally.
Two slides ran consecutive `#term` lines together, because Typst treats consecutive lines as one paragraph and `proseWrap` is `preserve`.
Two more produced a double colon, because `term` already appends one.
And a bare `>` is not a blockquote in Typst markup, so the worked story pair rendered with literal angle brackets until it became a `quoted()` callout.
All four were in the deck as first written; whether they survived the later revision is not asserted here.

`git ls-files` bites twice, and both times it fails open.
`pnpm run format:markdown` and `pnpm run check:lectures` only see tracked files, so a brand-new deck or assignment passes every gate while being invisible to it.
Staging the new files is what made the formatter find the misaligned tables in `assignment-2.md` and both guides.
A new deck or assignment must be staged before either gate is trusted.

The command table in `AGENTS.md` names `backlog instructions overview` and `backlog doctor`, and neither exists in the pinned backlog 1.45.
`backlog task edit` has `--notes` but no append, so notes are replaced whole.
TASK-007 records that a later version added `doctor`; that does not hold for the toolchain this repository pins.

A second process was working in this repository throughout this task.
The branch was renamed `lectures` to `week-2` and separately `fix-backlog` to `week-2`, a rebase onto `origin/main` reset the index and unstaged this task's files, and commit `1373522` landed a `course/rules.md` deadline rewrite.
None of the requirements, syllabus, assignment, guide, or `AGENTS.md` content this task produced was touched by any of that, and the Markdown gates pass on the staged set.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Week 2 is requirements and prototyping; Week 3 is planning and the minimum usable product.

The Week 1 deliverables no longer arrive where they are needed.
`GAP-nn` and `VP-nn` are inputs to a product vision, the vision feeds prioritized user stories with observable criteria, the stories feed a prototype, and the prototype feeds a customer meeting that has to change at least one story.
Planning in Week 3 now stands on stories the team has already tested, and the stack decision follows that validation rather than preceding it.

Three unfixed questions are recorded rather than hidden.
The threshold of success moves to Week 3, one week after the product goal, so both the requirements and the deck state the difference: a goal is the outcome, a threshold is the measurable bar for calling it done.
Week 3 has no assignment yet, and `docs/work-plan.md` and `docs/threshold-of-success.md` have no artifact structures; `## Later Weeks` in `artifact-requirements.md` now says so explicitly.
And estimation has no source material anywhere in the 2025 decks, so it has to be written from scratch.

The Week 1 lecture already promised *Requirements engineering* and *Planning* in that order on its practice-areas slide, so the reorder delivers what it had advertised.
Only the note that architecture was out of scope had to be reworded, because Week 4 requires an architectural draft.
<!-- SECTION:FINAL_SUMMARY:END -->

## Definition of Done
<!-- DOD:BEGIN -->
- [x] #1 All acceptance criteria are satisfied
- [x] #2 Changed Markdown files are formatted: `pnpm run format:markdown`
- [x] #3 `pnpm run lint:markdown` passes
- [x] #4 `pnpm run test:markdown-format` and `pnpm run test:markdown-rules` pass
- [x] #5 `pnpm run check:lectures` passes
<!-- DOD:END -->
