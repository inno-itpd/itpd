---
id: TASK-112
title: Write the planning and tracking guide
status: Done
assignee: []
created_date: '2026-10-12 19:09'
updated_date: '2026-10-12 20:04'
labels: []
dependencies: []
references:
  - guides/validating-with-the-customer.md
  - guides/user-stories-and-prototyping.md
modified_files:
  - guides/planning-and-tracking.md
type: docs
ordinal: 108000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Week 3 teaches planning, and its method has no home: the requirements own rules, the guides own method, and the lecture deck alone cannot carry it because students read it once.
This task adds `guides/planning-and-tracking.md` following the other guides shape, so `assignments/assignment-3.md` can link its steps.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 The guide follows the existing guides section shape (`## What You Produce`, `## Step 1` onward, `## Common Mistakes`) and the one-sentence-per-line style
- [x] #2 It covers SMART goals and the five threshold-of-success steps: gather the team, picture failure, list failure statements, convert them to success statements, and keep the minimal SMART set
- [x] #3 It covers the roadmap and its zoom level, the sprint, milestone, and release model, and progress monitoring at the team weekly review
- [x] #4 It covers risks and contingency: cause, event, and impact in one sentence; trigger and window; mitigation and the fallback; several options mean several risks; and points of no return are decisions
- [x] #5 It covers the review-and-adjust loop (the lecture PDSA reference) and leading a milestone description with the outcome, the Minto framing behind the first-sentence rule
- [x] #6 It does not cover estimation, which arrives with the Week 4 ceremonies
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
1. Write `guides/planning-and-tracking.md` in the existing guides' shape: an intro that links the planning and risk requirements, a timebox, the table of contents, `## What You Produce`, seven numbered steps, and `## Common Mistakes`, one sentence per line.
2. Steps: the threshold of success (SMART and the five steps: gather the team, picture failure, list failure statements, convert them to success statements, keep the minimal set); the roadmap's zoom level; the sprints and their releases; the milestones, including leading the description with the outcome; the risks and their fallbacks, including points of no return as decisions; progress monitoring at the team's weekly review; and the PDSA review-and-adjust loop.
3. Keep it method, not rules: link `requirements/planning-requirements.md`, `requirements/risks-requirements.md`, and the `repository-` and `decisions-` requirements instead of restating them; cover no estimation, which arrives with the Week 4 ceremonies.
4. Run the gates: `format:markdown`, `format:markdown:check`, `lint:markdown`, the two plugin suites, `check:lectures`, and `check:links` (which also resolves the guide's three forward references from TASK-109 and TASK-110).
5. Check the acceptance criteria, record the implementation notes, and move the task to Done.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Decisions: the guide is method only and cites Planning Requirements, Risk Requirements, Issue Tracking, Changelog Releases And Versioning, and Decision Requirements instead of restating them; its shape follows the other guides: an intro with the rule links and a timebox, a table of contents behind the raw h2, a What You Produce block, one section per step, and Common Mistakes.
The steps keep the lecture's strategic-then-tactical order: threshold of success, roadmap zoom level, sprints and releases, milestones, risks and fallbacks, progress monitoring, and the PDSA review-and-adjust loop. The five ToS moves keep the lecture's wording, including the minimal SMART set; the failure statements stay out of the committed file because The Threshold Of Success says the file holds the kept set and nothing else. The milestone step carries the first-sentence rule and names Minto's pyramid principle as the framing; the risk step keeps one contingency per risk and sends points of no return to the decision log; progress monitoring keeps the team's review distinct from the customer meeting.
No estimation: the concept and the word do not appear, because the ceremonies arrive with TASK-010 in Week 4.
The deming.org PDSA link that the lecture uses is rejected by lychee with a 403, so the guide links the Wikipedia PDCA article instead of adding a course-wide exclusion to lychee.toml.
Validation: format:markdown (the first pass reformatted the new file; the later passes needed nothing), format:markdown:check, lint:markdown, both vitest suites (34 and 34), and check:lectures (3 decks, Typst 0.15.1) pass; check:links reports 896 total, 894 OK, 0 errors, which also resolves the three planning-and-tracking.md forward references from TASK-109 and TASK-110 and so clears the condition behind TASK-111's open DoD item 6. backlog doctor reports no duplicate IDs, self-referential dependencies, or cycles.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Added guides/planning-and-tracking.md: the method for the threshold of success and its five steps, the roadmap's zoom level, the sprint and release model, milestone descriptions led by the outcome, risks and contingency including points of no return, progress monitoring at the team's weekly review, and the PDSA adjust loop, with Common Mistakes. No estimation. Verified with format:markdown, format:markdown:check, lint:markdown, both plugin suites (34 and 34), check:lectures (3 decks), check:links (896 total, 0 errors), and backlog doctor.
<!-- SECTION:FINAL_SUMMARY:END -->
