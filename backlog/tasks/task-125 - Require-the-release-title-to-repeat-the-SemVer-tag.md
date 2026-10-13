---
id: TASK-125
title: Require the release title to repeat the SemVer tag
status: Done
assignee: []
created_date: '2026-10-13 06:12'
updated_date: '2026-10-13 06:14'
labels: []
dependencies: []
modified_files:
  - requirements/repository-requirements.md
  - requirements/planning-requirements.md
  - guides/planning-and-tracking.md
  - TODO.md
type: docs
ordinal: 121000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
The release rules own the tag but say nothing about the release title, and the maintainer TODO keeps 'release title: always SemVer' open. The versioning requirement gains the title rule: the title repeats the tag exactly, and a nickname belongs in the release body, since GitHub rejects a second release for a tag. The planning deferral and the guide name the release titles, handoff.md D32 records the rule and the rejected alternative, and the TODO item is ticked.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 `requirements/repository-requirements.md` item 4 requires the release title to match the tag and puts a nickname in the release body
- [x] #2 `requirements/planning-requirements.md` and `guides/planning-and-tracking.md` name the release title where they defer to or explain versioning
- [x] #3 `handoff.md` D32 records the rule and why an extra release per tag was rejected
- [x] #4 The `TODO.md` item `release title: always SemVer` is ticked
- [x] #5 `backlog doctor` passes
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

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
The rule lives in `requirements/repository-requirements.md` item 4, the owner of versioning: the release title repeats the tag (`vN.N.N`), so title and tag match, and a nickname goes in the release body.
An extra release per tag with an alternative title was considered and dropped: GitHub rejects a second release for a tag (UI: "tag name has already been taken"; REST: `422 already_exists`), so the versioned title is the only one a team can publish.
No new list item, so items 5-6 keep their numbers; `**Since: W3**` and the section `<!-- TODO decompose -->` marker are unchanged.
Companion touches: the planning deferral names the release titles; the guide number section states the title repeats the tag; `handoff.md` D32 records the rule and the rejection; the `TODO.md` item is ticked.
Validation: `pnpm run format:markdown`, `format:markdown:check`, and `lint:markdown` pass; `test:markdown-format` and `test:markdown-rules` pass (34 each); `check:lectures` reports 3 decks matching their sources (Typst 0.15.1); `check:links` 988 total, 986 OK, 0 errors, 2 excluded; `backlog doctor` clean.
<!-- SECTION:NOTES:END -->
