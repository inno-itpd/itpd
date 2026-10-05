---
id: TASK-055
title: Drop meeting notes as a meeting artifact
status: Done
assignee: []
created_date: '2026-10-05 10:14'
updated_date: '2026-10-05 10:15'
labels: []
dependencies: []
ordinal: 55000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Meeting notes overlap the meeting report and are written by the same team, so they add little as evidence. A meeting produces a report, plus a transcript when it was recorded or held in writing; without a transcript the report is the only record.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 customer-meetings-requirements.md has no Meeting Notes section, and every rule that offered notes names the transcript alone or the report as the record
- [x] #2 A meeting held in writing uses its timestamped exchange as the transcript
- [x] #3 visibility-requirements, both assignments, both meeting guides, README, course/rules.md, and AGENTS.md no longer name meeting notes
- [x] #4 The Markdown gates and the deck check pass
<!-- AC:END -->

## Definition of Done
<!-- DOD:BEGIN -->
- [ ] #1 All acceptance criteria are satisfied
- [ ] #2 Changed Markdown files are formatted: `pnpm run format:markdown`
- [ ] #3 `pnpm run lint:markdown` passes
- [ ] #4 `pnpm run test:markdown-format` and `pnpm run test:markdown-rules` pass
- [ ] #5 `pnpm run check:lectures` passes
<!-- DOD:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Removed Meeting Notes from the meeting requirements. A meeting produces a report, plus a transcript when it was recorded or held in writing (the timestamped exchange is the transcript). Without one, the report is the only record and its Metadata says None with the reason. Ripple edits in visibility, A1, A2, both meeting guides, README, course/rules.md, and AGENTS.md.
<!-- SECTION:FINAL_SUMMARY:END -->
