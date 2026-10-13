---
id: TASK-132
title: Disambiguate form fields from issue fields
status: Done
assignee: []
created_date: '2026-10-13 09:28'
updated_date: '2026-10-13 09:30'
labels: []
dependencies: []
type: docs
ordinal: 128000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
GitHub uses "field" for three different things: a field of an issue form, the entries `Story`, `Acceptance criteria`, and `Value proposition`; an organization-level issue field, `Sprint`, `Responsible`, and `Accountable`; and a project field shown as a column. The materials use the word for all three, so a student reading Issue Fields can look for `Story` in the issue sidebar, or create `Sprint` as a project field, which is not an issue field. Minimal fix: define the term in Issue Fields and call the issue-form entries form fields in the two Issue Form sections; no heading, anchor, or routing change.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 `requirements/issue-tracking-requirements.md` Issue Fields defines an issue field as the organization field on the issue itself, set after creation and shown in its sidebar, not a field of the issue form and not a field a project defines of its own
- [x] #2 `requirements/task-issues-requirements.md` The Issue Form calls the description, `Acceptance criteria`, and `Story` entries form fields
- [x] #3 `requirements/user-stories-requirements.md` The Issue Form calls the `Value proposition`, `Priority reason`, and acceptance criteria entries form fields
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
Scope: three files, wording only. Issue Fields opens with the term defined as the organization field on the issue itself, set after creation and shown in the issue sidebar, not a field of the issue form and not a field a project defines of its own; the three real fields follow unchanged. The two Issue Form sections call their entries form fields (description, `Acceptance criteria`, `Story`; `Value proposition`, `Priority reason`, acceptance criteria), so they cannot be read as sidebar metadata. No heading, anchor, path, or routing change, so README, course/rules.md, and SKILL.md need none; bare uses elsewhere (task-issues rules 56 and 100-101 and the planning field rows) were left as is because a file path or the colon style already scopes them. Verified: format:markdown (no-op after format:markdown:check had passed), lint:markdown, test:markdown-format 34/34, test:markdown-rules 34/34, check:lectures (3 decks match, Typst 0.15.1), check:links (1048 total, 0 errors, 2 excluded); only the three requirements files changed.
<!-- SECTION:NOTES:END -->
