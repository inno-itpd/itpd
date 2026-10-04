---
id: TASK-020
title: De-duplicate meeting instructions and separate the kickoff from later meetings
status: Done
assignee: []
created_date: '2026-10-04 17:36'
updated_date: '2026-10-04 17:45'
labels: []
dependencies: []
references:
  - requirements/process-requirements.md
  - requirements/artifact-requirements.md
  - guides/customer-kickoff-meeting.md
  - guides/validating-with-the-customer.md
modified_files:
  - requirements/process-requirements.md
  - requirements/artifact-requirements.md
  - guides/validating-with-the-customer.md
  - guides/customer-kickoff-meeting.md
  - assignments/assignment-1.md
  - assignments/assignment-2.md
  - README.md
  - AGENTS.md
priority: high
type: docs
ordinal: 20000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
The meeting rules are restated across process and artifact requirements, both guides, and both assignments, and the kickoff overlaps the ordinary meeting in the validating guide, whose own TODO comments ask for the split. Backlog.md tracks this at "Separate kickoff meeting from ordinary meeting in requirements" and "generic meetings process - align questions with the goal of the meeting". Give every rule one canonical owner, keep both guides self-contained, compress the assignments to week deltas with links, and rename the kickoff guide to match the course vocabulary.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 requirements/process-requirements.md#meeting-with-the-customer states each rule once: every-meeting section first, Week 1 deltas second, no later-only Recommended block, and the objectivity and question-count contradictions are gone
- [x] #2 requirements/artifact-requirements.md Meeting Script keeps the Key improvements minima in one statement and points at process requirements for the five-areas floor; Customer Meeting Artifacts no longer repeats the script requirement
- [x] #3 guides/validating-with-the-customer.md carries no TODO comment, derives areas from the target without kickoff framing, defines the open/closed tag check, links the permission and Key improvements rules, and lets ## Decisions trace to what the decision actually changed
- [x] #4 guides/customer-kickoff-meeting.md replaces guides/customer-interview.md, and every reference to the old path resolves, including README.md and AGENTS.md
- [x] #5 assignment-1.md Part 7 and assignment-2.md Part 5 are short workflows with week minima and links, carry no restated requirement text, and the assignment-2 wording TODO is gone
- [x] #6 All four Markdown gates and pnpm run check:lectures pass, and every changed link and anchor resolves
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
Canonical owners: process requirements own the every-meeting rules and the kickoff floor; artifact requirements own the script sections, the report shape, and the permission questions; the guides keep the method; assignments keep paths, week minima, and links.

Changes:
- process-requirements.md: reordered ## Meeting With The Customer to every-meeting rules then Week 1 deltas; linked both guides by name; trimmed the permission, report, and Key improvements restatements; deleted the later-meeting Recommended block, whose content lives in the validating guide.
- artifact-requirements.md: Meeting Script states the Key improvements minima once in the sections table; Customer Meeting Artifacts dropped the duplicate script item.
- guides/validating-with-the-customer.md: all five TODO comments resolved; areas defined from the target without kickoff framing; permission and Key improvements rules linked; ## Decisions traces to what changed.
- guides/customer-interview.md renamed to guides/customer-kickoff-meeting.md and retitled; README.md, AGENTS.md, both assignments, and the requirements updated.
- assignment-1.md Part 7 and assignment-2.md Part 5 compressed to short workflows with week minima and links; the assignment-2 wording TODO removed.

Validation:
- pnpm run format:markdown (artifact table reflow), format:markdown:check, lint:markdown, test:markdown-format 34/34, test:markdown-rules 34/34, check:lectures 2/2.
- lychee offline with fragments over README, AGENTS, assignments, guides, requirements, course: 0 errors.
- rg finds no customer-interview reference and no meeting-related TODO outside history.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Separated kickoff from later meetings and de-duplicated the meeting rules. Process requirements now own the every-meeting rules and the kickoff deltas, artifact requirements own the script and report shapes, the guides keep the method, and both assignments state only their week minima and link the rules. Renamed the kickoff guide to customer-kickoff-meeting.md. All four Markdown gates and check:lectures pass; the offline fragment link check reports no errors.
<!-- SECTION:FINAL_SUMMARY:END -->
