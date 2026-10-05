---
id: TASK-036
title: Define the boundary and give it its own section
status: Done
assignee: []
created_date: '2026-10-05 01:30'
updated_date: '2026-10-05 01:30'
labels:
  - docs
dependencies: []
modified_files:
  - requirements/process-requirements.md
  - requirements/artifact-requirements.md
  - guides/user-stories-and-prototyping.md
  - assignments/assignment-2.md
  - lectures/lecture-2.typ
  - lectures/lecture-2.pdf
type: docs
ordinal: 36000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
"Boundary" was vague in Lecture 2 and the Week 2 materials. It mixed three meanings: a list of what the product will not do, a line on the context diagram, and a split of responsibility. The rule "every actor must survive your boundary" treated an exclusion list as a filter on actors, though actors are outside by definition. Items had no defined shape, though Won't Have reasons had to name one. The lecture said Won't Have outlines the boundary, while the requirement said an item needs no story. Decided: keep the standard meaning of system boundary, the line between the product and its environment. The context diagram draws the line, and the vision lists the contested parts of it: what the product will not do, who handles it instead (an external system or actor, the user by hand, or nobody), and why. Items get no ID family and are cited by text. The boundary and Won't Have are independent but consistent. Split the combined section into Stakeholders, Boundary, and System Context.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 process-requirements.md replaces Stakeholders, Boundary, And Context with ## Stakeholders, ## Boundary, and ## System Context, each Since: W2, and no link to #stakeholders-boundary-and-context remains
- [x] #2 ## Boundary defines the boundary as the line between the product and its environment, states its purpose, and requires each item to say what the product will not do, who handles it (external system or actor, the user by hand, or nobody), and why; the table is an Example, not a required shape
- [x] #3 ## System Context replaces "every actor must survive your boundary" with two checks: every handler named by the boundary is on the diagram, and nothing on the diagram does a job the boundary leaves to nobody
- [x] #4 MoSCoW rule 5 states the boundary and Won't Have are independent but consistent, and a Won't Have reason quotes the boundary item it rests on
- [x] #5 The Product Vision example in artifact-requirements.md uses the three-column boundary, its Context prose matches the new checks, and the Won't Have example quotes a real item verbatim
- [x] #6 guides/user-stories-and-prototyping.md Step 1 explains where boundary items come from and why each one names its handler, and links the three new sections
- [x] #7 assignment-2.md requires at least 3 boundary items with handler and reason, links each new section, and its checklist matches
- [x] #8 lecture-2.typ defines the boundary as a line drawn by the diagram and written down by the vision, the context slide carries the two checks, the MoSCoW slide drops "Won't Have things outline the boundary", and the PDF is rebuilt with the page count unchanged
<!-- AC:END -->

## Definition of Done
<!-- DOD:BEGIN -->
- [x] #1 All acceptance criteria are satisfied
- [x] #2 Changed Markdown files are formatted: `pnpm run format:markdown`
- [x] #3 `pnpm run lint:markdown` passes
- [x] #4 `pnpm run test:markdown-format` and `pnpm run test:markdown-rules` pass
- [x] #5 `pnpm run check:lectures` passes
<!-- DOD:END -->

## Implementation Plan

<!-- SECTION:PLAN:BEGIN -->
See ~/.claude/plans/i-think-our-definition-breezy-firefly.md: split the section, define the boundary in its standard meaning, give items a what/handled-by/why shape, fix the diagram rule and MoSCoW rule 5, align the vision example, guide, Assignment 2, and lecture 2, then run the gates.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Grounded in the standard term: the system boundary as in Robertson & Robertson's product boundary, C4 System Context, and the UML subject. The written list follows Wiegers' Limitations and Exclusions. Example reasons are tied to the worked example's constraints and kickoff. course/syllabus.md:114 was left alone, because "the boundary of what the team will not do" still summarises the list. Validation: format:markdown:check, lint:markdown, test:markdown-format, test:markdown-rules, and check:lectures all pass; rg finds no stakeholders-boundary-and-context, "survive your boundary", or "outline the boundary" outside backlog/.
<!-- SECTION:NOTES:END -->
