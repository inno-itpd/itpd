---
id: TASK-037
title: Give each requirement one owner across the requirements files and course rules
status: Done
assignee: []
created_date: '2026-10-05 01:50'
updated_date: '2026-10-05 01:56'
labels:
  - docs
dependencies: []
priority: high
ordinal: 37000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
The same Week 2 rules were stated in three to six places across process-requirements.md, artifact-requirements.md, repository-requirements.md, and course/rules.md, and the copies had drifted: rules.md contradicted the syllabus on the late penalty and itself on credentials, and the two US-01 examples differed. Most requirements commits had to touch three or four files for one semantic change.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 Story rules: process owns what a story says, artifact owns the issue shape and the only US-01 and US-09 examples, repository owns the form, labels, and PR mechanics; no rule is stated in two of them
- [x] #2 AC-nn scoping and retirement are stated once, in process Acceptance Criteria
- [x] #3 Product vision: artifact lists the parts and links process for their content; the process goal example is gone and process links the Value Proposition section rather than the guide
- [x] #4 Prototypes: process Validation keeps the meaning and links artifact Prototypes for the file contents and formats
- [x] #5 Changes, TBD, and None semantics, including when a TBD is finished, are owned by artifact Meeting Report; process sections link it
- [x] #6 Artifact Visibility Model has one table under Sensitive Information Reference, and credentials are never committed and go to Moodle only when needed
- [x] #7 course/rules.md keeps only the soft and hard deadline pair, matches the artifact rules on credentials and screenshots, links the template-sentence rule in process Research Honesty, and describes every file correctly
- [x] #8 AGENTS.md states which file owns which kind of rule
- [x] #9 Every anchor linked from another file still resolves
- [x] #10 process Minimum Usable Product Candidate no longer names the Week 2 path, which assignment-2 already gives
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
Follow ~/.claude/plans/pasted-content-id-730c-there-are-eventual-lampson.md: dedupe per cluster (stories, vision, prototypes, decisions, placement, privacy), fix rules.md, add the ownership table to AGENTS.md, run the gates, one commit.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
The Assumptions path stays in process Assumptions: artifact-requirements has no research-docs section, and adding one would only repeat assignment-1. The MUP path was dropped from process because assignment-2 already names it. Phrase recount after the change: 'exactly one VP-nn' 1 (was 4), TBD rules 1 owner, 'at least two acceptance' 1, 'grown into a specification' 1.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Gave each requirement one owner across process, artifact, and repository requirements and course/rules.md (198 lines removed, 121 added), fixed the rules.md contradictions on the late penalty, credentials, and screenshots, and added the ownership table to AGENTS.md. Verified with format:markdown:check, lint:markdown, both Markdown fixtures, check:lectures, and a script that resolved every relative heading link in the 19 tracked Markdown files (0 broken).
<!-- SECTION:FINAL_SUMMARY:END -->
