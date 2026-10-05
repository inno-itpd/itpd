---
id: TASK-019
title: Remove future-week spoilers from the Week 2 materials and AGENTS.md
status: Done
assignee: []
created_date: '2026-10-04 16:17'
updated_date: '2026-10-04 16:21'
labels: []
dependencies: []
priority: high
type: docs
ordinal: 19000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Future assignments and topics are not settled, and the Week 2 materials currently teach Week 3+ facts as if they were: identifier families (`Q-nn` W4, `U-nn` W7), the Weeks 3-9 traceability rows, future artifact paths, MUP/MVP build weeks, and Week 3/4/5 claims in guides and examples. The materials must present Week 2 as the frontier so students are not taught spoilers that can later change.

Decisions made with the user:
- Scope: student-facing docs plus AGENTS.md; leave `course/syllabus.md`, the backlog records, and `lectures/` untouched.
- Keep the `**Since: W3**` requirement blocks and their markers in `requirements/`; remove only incidental future-week wording in W1/W2 text, examples, and week claims.
- Keep the minimum usable product candidate in Week 2; drop the claim that it is built as the MUP in Week 3.
- Replace the future identifier families and the Weeks 3-9 traceability rows with a generic rule plus the Week 2 row.
- Keep "inside Week 3" action-point due dates; keep Week 1/Week 2 context in examples and scrub W3+ week numbers from them.
- Replace the Week 5 meeting example in process requirements with a Week 2 validation example.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 No file under `assignments/` states what a future week does, except action-point due dates inside Week 3 and `**Since:**` markers
- [x] #2 No guide carries a future-week claim or a Week 3+ example
- [x] #3 Process requirements no longer name Q-nn or U-nn, and the traceability table holds only the Week 2 row under a generic rule
- [x] #4 Artifact requirements drops the `## Later Weeks` section and its TOC entry, and its examples carry no Week 3+ numbers
- [x] #5 Repository requirements keeps its `**Since: W3**` blocks and no longer names Week 3 in the `.gitignore` rule
- [x] #6 AGENTS.md resolves both future-week TODOs, trims the destination map to W1/W2 with an add-when-written note, and names no future identifier family
- [x] #7 All four Markdown gates and `check:lectures` pass, and a sweep for `Week [3-9]|W[3-9]` finds only the intentional keeps
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
1. assignments/assignment-1.md:122 and guides/alternatives-research.md:58: rewrite "a later week that needs another product" without the week.
2. assignments/assignment-2.md: drop "for later weeks" (:84), the Week 3 MUP build sentence and TODO (:113-114), "Week 3 inherits" (:244); keep Week 3 due dates (:194, :351).
3. guides/user-stories-and-prototyping.md: rewrite :124, :169, :182 without Week 3.
4. guides/comparison-and-synthesis.md: drop "in Week 5" (:147) and "in Week 4" (:164).
5. requirements/process-requirements.md: rewrite :280, :304, :366; drop MUP/MVP build weeks (:411, :413); resolve identifier TODO (:450) and genericize :454; keep only the Week 2 traceability row (:474-483); delete Weeks 10-11 paragraph (:485-486); drop "Software quality is Week 4" (:503); replace the Week 5 meeting example with a Week 2 validation example (:556-564).
6. requirements/artifact-requirements.md: genericize :65; scrub W3/W8 examples (:330, :621-622); delete the Later Weeks section (:788-807) and its TOC entry (:32).
7. requirements/repository-requirements.md: drop "in Week 3" (:45); keep the Since: W3 blocks and the :7 rationale.
8. AGENTS.md: resolve identifier TODO (:113-114) and destination-map TODOs (:143, :153), trim map to W1/W2, remove the retrospective sentence (:166), genericize the Since: W3 example (:178) and the Scrum week references (:205-209).
9. Format, run the four Markdown gates and check:lectures, sweep for future-week references and dangling anchors, then finalize.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Edited 9 files. assignments: assignment-2 lost the Week 3 MUP build sentence, the "later weeks" clause, and the "Week 3 inherits" clause; assignment-1 genericized the later-week rationale. Guides: user-stories (3 sentences), comparison (Week 5 claim + Week 4 example), alternatives. process-requirements: constraints rule, context-diagram sentence, candidate sentence, MUP/MVP build weeks, identifier TODO and sentence, traceability table trimmed to the Week 2 row, Weeks 10-11 paragraph and "Software quality is Week 4" removed, Week 5 meeting example replaced with a Week 2 validation example. artifact-requirements: TOC entry and Later Weeks section removed, two examples scrubbed, two-location wording genericized. repository-requirements: .gitignore rule no longer names Week 3; the five Since: W3 blocks kept. AGENTS.md: both future-week TODOs resolved, destination map trimmed to W1/W2, retrospective sentence removed, checklist example genericized, Scrum week references genericized.

Verification: format:markdown, format:markdown:check, lint:markdown, test:markdown-format (34/34), test:markdown-rules (34/34), and check:lectures (2 decks) all pass. Sweep of Week [3-9]|W[3-9] across the edited files finds only the two intentional Week 3 due dates in assignment-2 and the five Since: W3 markers in repository-requirements; no Q-nn/U-nn, no Later Weeks section, no future-week TODOs.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Removed future-week spoilers from the Week 2 materials and AGENTS.md: 9 files changed, 39 insertions and 92 deletions. Assignments, guides, process and artifact requirements no longer state Week 3+ facts or name Q-nn/U-nn; the traceability table keeps only the Week 2 row, the Later Weeks artifact list is gone, and examples carry no W3+ numbers. The five Since: W3 blocks, the Since: mechanism rationale, and the Week 3 action-point due dates were kept by decision.

Verified with pnpm run format:markdown, format:markdown:check, lint:markdown, test:markdown-format (34/34), test:markdown-rules (34/34), and check:lectures (2 decks), plus a sweep for Week [3-9]|W[3-9] that found only the intentional keeps. No commit was made.
<!-- SECTION:FINAL_SUMMARY:END -->
