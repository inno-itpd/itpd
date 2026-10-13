---
id: TASK-126
title: Extract the changelog and release rules into releases-requirements.md
status: Done
assignee: []
created_date: '2026-10-13 06:34'
updated_date: '2026-10-13 06:48'
labels:
  - docs
dependencies: []
references:
  - requirements/repository-requirements.md
  - requirements/planning-requirements.md
  - requirements/definition-of-done-requirements.md
  - guides/planning-and-tracking.md
  - AGENTS.md
ordinal: 122000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
The '## Changelog, Releases And Versioning' section in 'requirements/repository-requirements.md' is marked '<!-- TODO decompose -->': it packs an artifact's rules — the 'CHANGELOG.md' format and '[Unreleased]' section, Semantic Versioning, tags and their protection, release titles, and cutting a release — into a file that otherwise owns platform mechanics, and it carries no example, unlike the artifact-group requirements files. Extract it into 'requirements/releases-requirements.md', decomposed into sections, and move the routing with it in the same change, as 'AGENTS.md' requires.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 requirements/releases-requirements.md carries the rules decomposed into `## Where The Changelog Lives`, `## The Changelog`, `## Versioning And Tags`, `## Cutting A Release`, and `## Full Example`, with the six lifted rules preserved in meaning, `Protect mapped tags from being moved or deleted` reworded to protect release tags, and a `CHANGELOG.md` full example added.
- [x] #2 requirements/repository-requirements.md no longer carries the section, the `<!-- TODO decompose -->` marker, or its table-of-contents entry.
- [x] #3 The four inbound links in `requirements/planning-requirements.md`, `requirements/definition-of-done-requirements.md`, and `guides/planning-and-tracking.md` are retargeted and resolve in the offline lychee run; the external `pnpm run check:links` run is deferred because several hosts time out from this environment.
- [x] #4 `SKILL.md`, `README.md`, `course/rules.md`, and `AGENTS.md` route the new file in the same change: the release rules leave the Repository rows and a Release row is added.
- [x] #5 The local gates pass: `pnpm run format:markdown`, `format:markdown:check`, `lint:markdown`, `test:markdown-format`, `test:markdown-rules`, `check:lectures`, and `backlog doctor`.
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
1. Write 'requirements/releases-requirements.md' with the agreed decomposition and full example. 2. Delete the section and the TODO marker from 'requirements/repository-requirements.md'. 3. Retarget the four inbound links in planning-requirements.md, definition-of-done-requirements.md, and guides/planning-and-tracking.md. 4. Route the new file in SKILL.md, README.md, course/rules.md, and AGENTS.md. 5. Run the gates and finalize.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
AC #2 corrected after implementation: the section did have a table-of-contents entry ('- [Changelog, Releases And Versioning](#changelog-releases-and-versioning)' at line 22), so it was removed along with the section and the marker. The original AC assumed it was never listed.

Decomposed the section into `requirements/releases-requirements.md` with sections Where The Changelog Lives, The Changelog, Versioning And Tags, Cutting A Release, and Full Example; the six rules are preserved in meaning, the tag-protection rule now names release tags, and the new file adds the full `CHANGELOG.md` example the section never had. The border stays explicit: the file links `planning-requirements.md#releases` for when a release is cut, and planning links the file for the changelog, tags, and titles.

Removed the section, the TODO marker, and the table-of-contents entry from `repository-requirements.md`; retargeted the four inbound links in `planning-requirements.md`, `definition-of-done-requirements.md`, and `guides/planning-and-tracking.md`; routed the file in `SKILL.md`, `README.md`, `course/rules.md`, and `AGENTS.md`.

Validation: `pnpm run format:markdown`; `format:markdown:check`; `lint:markdown`; `test:markdown-format` (34 tests); `test:markdown-rules` (34 tests); `check:lectures` (3 decks match their sources); `backlog doctor` (no duplicate IDs, self-references, or cycles); `lychee --offline --include-fragments .` reports 0 errors, 979 OK, 21 excluded. The full `pnpm run check:links` is deferred: several external hosts (keepachangelog.com, aistudio.google.com, opencode.ai, assemblyai.com, wikipedia.org, docs.github.com, lychee.cli.rs, rust-lang.github.io, c4model.com) time out from this environment; the DoD item stays unchecked.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Extracted the changelog and release rules from repository-requirements.md into requirements/releases-requirements.md, decomposed into four sections plus a full CHANGELOG.md example, and moved the routing in SKILL.md, README.md, course/rules.md, and AGENTS.md. Verified with the Markdown gates, check:lectures, backlog doctor, and an offline lychee run reporting no local errors; the external link check is deferred at the maintainer direction.
<!-- SECTION:FINAL_SUMMARY:END -->
