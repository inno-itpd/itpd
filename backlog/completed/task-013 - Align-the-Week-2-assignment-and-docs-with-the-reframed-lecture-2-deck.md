---
id: TASK-013
title: Align the Week 2 assignment and docs with the reframed lecture-2 deck
status: Done
assignee: []
created_date: '2026-10-03 15:30'
updated_date: '2026-10-03 15:43'
labels: []
dependencies: []
references:
  - assignments/assignment-2.md
  - requirements/process-requirements.md
  - requirements/artifact-requirements.md
  - guides/user-stories-and-prototyping.md
  - lectures/lecture-2.typ
  - AGENTS.md
modified_files:
  - assignments/assignment-2.md
  - requirements/process-requirements.md
  - requirements/artifact-requirements.md
  - guides/user-stories-and-prototyping.md
  - AGENTS.md
  - lectures/lecture-2.typ
  - lectures/lecture-2.pdf
type: docs
ordinal: 13000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
The lecture-2 deck was reframed to teach concepts rather than paths, and its terminology now leads the Week 2 materials. The assignment and the requirements and guides it links do not yet match it: constraint sources, the story-versus-criterion design rule, the user definition, and the proof-of-concept / prototype / MUP / MVP vocabulary have drifted. This task aligns the docs with the deck, fixes three deck nits, and rebuilds the deck PDF.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 process-requirements.md records four constraint sources with environmental defined (weeks left in the course, the academic calendar, course-provided tools) and team-given reduced to team size and skills, and points at the product vision for where constraints are stored
- [x] #2 process-requirements.md defines a user as any actor with a goal, including the operator or administrator who keeps the product running
- [x] #3 process-requirements.md states that a story does not name a screen, a button, or a component while an acceptance criterion may name a screen, a field, or a system state
- [x] #4 process-requirements.md ## Validation defines proof of concept, prototype, minimum usable product (built in Week 3), and minimum viable product (built in Week 5), says a code spike is recorded as a prototype either way, and its item 1 tests the story or assumption the team is least sure about
- [x] #5 assignment-2.md Part 1 and the checklist mark constraints customer-given, team-given, environmental, or derived; Part 2 carries the story and criterion design rule; Part 5 links the Validation vocabulary; the seven HTML TODOs are untouched
- [x] #6 artifact-requirements.md Product Vision example carries the environmental row (nine-week course, one customer meeting a week) and neither the environmental nor the constraint-identifier TODO remains
- [x] #7 guides/user-stories-and-prototyping.md uses <user> in the template, carries the user definition, and adds the criterion-may-name-state sentence in Step 3 and the code-spike-is-a-PoC sentence in Step 6
- [x] #8 lecture-2.typ says no Scrum in this deck and names Week 3 for the Scrum elements, names the section Vocabulary, and expands MUP and MVP as Minimum; lecture-2.pdf is rebuilt and pnpm run check:lectures passes
- [x] #9 AGENTS.md Terminology includes proof of concept (PoC) beside MUP and MVP
- [x] #10 The four Markdown gates pass and every changed link and heading anchor resolves
- [x] #11 TASK-011 is left untouched and this task records the lecture-2 PDF rebuild overlap in its notes
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
Aligned the Week 2 materials with lecture-2.typ after the deck reframe.

Decisions locked with the user before editing:
1. Four constraint sources; environmental is a condition the setting imposes (weeks left in the course, the academic calendar, course-provided tools); team-given is team size and skills.
2. The story and criterion design rule lives in process-requirements.md and in assignment-2.md.
3. A user is any actor with a goal, including the operator or administrator; the guide template uses <user>.
4. PoC, prototype, MUP, and MVP are defined in process-requirements.md ## Validation, and assignment-2 Part 5 links the definition.
5. MoSCoW is unchanged: only Won't Have needs a reason.
6. The seven HTML TODOs in assignment-2.md are untouched, for a later task.
7. TASK-011 is untouched; this task records the deck-rebuild overlap instead.

Files:
- requirements/process-requirements.md: constraints live in the product vision; four sources; user definition; story and criterion design rule; ## Validation item 1 defines the four terms and item 2 tests the story or assumption the team is least sure about; the recommended bullet names the customer as the reactor in this course.
- requirements/artifact-requirements.md: Product Vision example constraint table uses team-given 3 people and a new environmental row (nine-week course, one customer meeting a week); both TODO comments removed.
- assignments/assignment-2.md: Part 1.2 maps the four types to examples; Part 2.3 carries the design rule; Part 5.2 links ## Validation; checklist updated.
- guides/user-stories-and-prototyping.md: template uses <user>; user definition; criterion-may-name-state sentence in Step 3; code-spike-is-a-PoC sentence in Step 6.
- AGENTS.md: Terminology gains proof of concept (PoC).
- lectures/lecture-2.typ: header says no Scrum in this deck and names Week 3; section renamed Prototyping to Vocabulary; Minimal expanded as Minimum; lecture-2.pdf rebuilt (27 pages, unchanged count).

Verification:
- pnpm run format:markdown applied; format:markdown:check clean; lint:markdown clean; test:markdown-format 34/34; test:markdown-rules 34/34.
- pnpm run check:lectures: 2 deck(s) match their sources, built with Typst 0.15.1.
- pdftotext confirms the Vocabulary section and Minimum usable/viable product wording; no Minimal remains anywhere in the tracked Markdown.
- Every changed link and anchor resolves, including artifact-requirements.md#product-vision and process-requirements.md#validation.
- backlog doctor: no duplicate IDs, self-referential dependencies, or cycles.

No commit is made; the changes sit in the working tree, with lecture-2.pdf beside its source.
<!-- SECTION:NOTES:END -->
