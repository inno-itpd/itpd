---
id: TASK-185.06
title: Introduce the final exam pitch early in Lecture 10
status: In Progress
assignee:
  - '@codex'
created_date: '2026-11-27 15:09'
updated_date: '2026-11-27 15:43'
labels: []
dependencies: []
documentation:
  - lectures/AGENTS.md
  - exam/README.md
modified_files:
  - lectures/lecture-10.typ
  - lectures/lecture-10.pdf
parent_task_id: TASK-185
type: docs
ordinal: 182000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
The exam section starts from what students learned in customer reviews and usability testing and asks what they would try next. The first teaching slide introduces the simulated pilot decision, the panel, and the action the team asks the panel to take.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 The Discussion slide opens the exam section by asking students what they still need to learn after customer feedback and usability testing, what they could try next, and whose help they would need.
- [x] #2 The first teaching slide explains the simulated pilot decision, the team’s choice of a panel role, and its request for one specific action. The later coaching-network example includes its trial and success criteria.
- [x] #3 The regenerated Lecture 10 PDF matches the Typst source. The exam section follows Discussion, main body, Quiz, and Key takeaways, with each slide on one page.
<!-- AC:END -->

## Definition of Done
<!-- DOD:BEGIN -->
- [x] #1 All acceptance criteria are satisfied
- [x] #2 Changed Markdown files are formatted: `pnpm run format:markdown`
- [x] #3 `pnpm run lint:markdown` passes
- [x] #4 `pnpm run test:markdown-format` and `pnpm run test:markdown-rules` pass
- [x] #5 `pnpm run check:lectures` passes
- [ ] #6 `pnpm run check:links` passes
- [x] #7 Implementation notes record the decisions made and the validation results
<!-- DOD:END -->

## Implementation Plan

<!-- SECTION:PLAN:BEGIN -->
1. Open with a discussion about what the team could try next after customer feedback and usability testing.
2. Introduce the simulated pilot pitch on the next slide. Follow with comparison of evidence, the coaching-network example, the pitch checklist, and the briefing. Close with Quiz and Key takeaways.
3. Rebuild the PDF, verify slide order and layout, and run the repository checks.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
The exam section now has four content slides. It opens with the simulated pilot decision and the audience. The coaching-network example connects the usability observation to one pilot question, one success criterion, and one actionable request. The pitch checklist keeps the five rubric topics and the closing slide retains logistics.

The generated Lecture 10 PDF has 33 pages for 33 slides. Inspected rendered pages 30–33 and verified their order and one-slide-per-page layout. The lecture consistency check, Markdown lint, both Markdown test suites, and the repository link check passed. The Markdown format check flagged only unrelated local edits to TODO.md in the working tree. It passed in an isolated copy using the committed TODO.md. The rewrite changes no Markdown covered by the formatter.

Revised the exam section to match the lecture structure. The Discussion asks what the team could learn and try next after customer feedback and usability testing. The first teaching slide introduces a pilot as one possible next step and explains the panel’s role in the exam. Restored the evidence comparison, full worked example, quiz, and takeaways.

The rebuilt PDF has 37 slides on 37 pages. The lecture consistency check passed and the rendered discussion, introduction, example, and closing slides were inspected. Markdown lint and both test suites passed. The format check passed in an isolated copy with the committed TODO.md. Verified all six rendered exam links against local files and anchors. The full link check passed earlier in the revision and later returned HTTP 503 for a pre-existing external GitHub URL used by TODO.md and course/plans/a5-plan.md. The retry reproduced that external error.
<!-- SECTION:NOTES:END -->
