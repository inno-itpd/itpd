---
id: TASK-012
title: Reframe the Week 2 deck around requirements and prototyping concepts
status: Done
assignee: []
created_date: '2026-10-02 12:08'
updated_date: '2026-10-02 12:23'
labels: []
dependencies: []
references:
  - lectures/lecture-2.typ
  - lectures/AGENTS.md
  - assignments/assignment-2.md
  - requirements/process-requirements.md
  - guides/user-stories-and-prototyping.md
  - guides/validating-with-the-customer.md
  - tmp/swp-2026/labs/lab-2.txt
  - tmp/swp-2026/labs/lab-3.txt
  - tmp/itpd-2025/assignments/assignment-7.md
modified_files:
  - lectures/lecture-2.typ
  - lectures/lecture-2.pdf
type: docs
ordinal: 12000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
TASK-011 rebuilds the Week 2 deck but leaves it organised around the destinations a team writes to: slides name `docs/product-vision.md`, `reports/week-02/prototypes.md`, `meeting-report.md`, and `us/US-nn.md` rather than the concepts behind them. The instructor wants the deck to teach the week's key concepts, so a student who has not yet opened the assignment learns the ideas first and looks up paths there. The in-source TODO comments record the concept boundaries that were still open (who counts as a user, whether stories may name system parts, what a hard criterion is, what MoSCoW obliges). This task resolves them and reframes the deck, then rebuilds the committed PDF. It overlaps TASK-011 on `lectures/lecture-2.typ` and `lectures/lecture-2.pdf`; finish it before or together with TASK-011.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 No slide carries a `docs/` or `reports/` path or a backticked filename; `US-nn`, `GAP-nn`, and `VP-nn` identifiers remain.
- [x] #2 The deck keeps the four sections Why this week, The chain, Vocabulary, and Validating with the customer; the Key Takeaways closers and their helpers are removed.
- [x] #3 The deck adds concept slides for constraints versus assumptions, the context diagram, MoSCoW prioritization, and prototype forms and fidelity.
- [x] #4 The removed material stays out: the planning-moved-to-Week-3 slide, the How to decide section, the What is next slide, and their commented blocks are deleted.
- [x] #5 Stories are for any actor with a goal; a story does not name a screen or other system part, while an acceptance criterion may name observable system state; one invented running example carries the worked examples.
- [x] #6 The file header records the reframe and its deviations, and `pnpm run check:lectures` passes on a rebuilt `lectures/lecture-2.pdf`.
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
1. Rewrite the header provenance: record the reframe, the deleted material, and the new concept slides.
2. Edit the four sections in place: drop paths while keeping identifiers, delete the Key Takeaways closers and helpers, remove the dead commented blocks.
3. Add the four concept slides (constraints and assumptions, context diagram, MoSCoW, prototype forms) and resolve each concept-boundary TODO.
4. Reformat the worked examples around one invented running product.
5. Build with `pnpm run build:lectures`, compare slide call sites with PDF pages, render and read the new dense slides.
6. Run `pnpm run check:lectures` and the Markdown gates, then commit the source and PDF together.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Reframed lectures/lecture-2.typ in place: kept the four sections, deleted the Key Takeaways closers plus the takeaways() and key() helpers, removed the planning-moved argument and its commented block, and resolved the TODO comments. Added four concept slides: Constraints and assumptions, The context diagram, Prioritizing with MoSCoW, and Forms of prototype. Dropped paths while keeping US-nn/GAP-nn/VP-nn/Q-nn, and pointed every worked example at one invented study-group planner. Rebuilt lecture-2.pdf (32 pages, 720x405).

Validation: `pnpm run check:lectures` -> "lectures: 2 deck(s) match their sources, built with Typst 0.15.1". `pnpm run lint:markdown` clean. `pnpm run test:markdown-format` and `pnpm run test:markdown-rules` each 34/34. Rendered the new dense slides (Constraints, A user story, MoSCoW, Forms of prototype, Trace what changed) and the Questions page; no merged paragraphs or overflow. Note: `pnpm run format:markdown:check` fails on 5 Markdown files that this task did not touch (assignments/assignment-2.md, guides/user-stories-and-prototyping.md, guides/validating-with-the-customer.md, requirements/artifact-requirements.md, requirements/process-requirements.md); they are unmodified versus HEAD, so the red gate is pre-existing.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Reframed lectures/lecture-2.typ so it teaches the Week 2 concepts instead of naming the files a team writes to: dropped paths but kept US-nn/GAP-nn/VP-nn/Q-nn, deleted the Key Takeaways closers and their helpers, kept the four sections and every Quiz, and added slides for constraints versus assumptions, the context diagram, MoSCoW, and prototype forms and fidelity. All worked examples now use one invented study-group planner. Rebuilt the 32-page lecture-2.pdf. Verified with `pnpm run check:lectures`, `pnpm run lint:markdown`, and both Markdown plugin test suites; rendered the new dense slides to confirm no overflow. The `format:markdown:check` gate is red on five Markdown files this task did not touch.
<!-- SECTION:FINAL_SUMMARY:END -->
