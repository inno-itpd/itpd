---
id: TASK-039
title: Regroup process and artifact requirements by artifact
status: To Do
assignee: []
created_date: '2026-10-05 02:09'
updated_date: '2026-10-05 02:23'
labels:
  - docs
dependencies: []
priority: medium
ordinal: 39000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
process-requirements.md and artifact-requirements.md split rules by kind (what the work must say vs where it lives and its fields), which is an authoring axis. Students work one artifact at a time, so one story issue means reading five sections across three files, and a customer meeting four or five plus a guide. Regrouping by artifact (research, product vision, user stories, customer meetings, prototypes, weekly report and submission, visibility, plus shared general rules) removes most cross-file hops while keeping one owner per rule. It lands on week-2 before Assignment 2 is published, so no student follows a moved anchor. repository-requirements.md stays separate, since platform setup is a distinct configure-once concern.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [ ] #1 Each artifact group has one requirements file that states where it lives and what each part must say, with Required, Recommended, and Example labels
- [ ] #2 repository-requirements.md keeps platform mechanics and is not merged
- [ ] #3 Every inbound anchor from assignments, guides, course, README, and lectures is migrated and resolves
- [ ] #4 AGENTS.md repository map, layering, and ownership table describe the new structure
- [ ] #5 process-requirements.md and artifact-requirements.md are deleted, and no tracked file outside backlog/ names them
- [ ] #6 The change lands on week-2 before Assignment 2 is published
<!-- AC:END -->

## Definition of Done
<!-- DOD:BEGIN -->
- [ ] #1 All acceptance criteria are satisfied
- [ ] #2 Changed Markdown files are formatted: `pnpm run format:markdown`
- [ ] #3 `pnpm run lint:markdown` passes
- [ ] #4 `pnpm run test:markdown-format` and `pnpm run test:markdown-rules` pass
- [ ] #5 `pnpm run check:lectures` passes
<!-- DOD:END -->

## Implementation Plan

<!-- SECTION:PLAN:BEGIN -->
Decisions: one file per artifact group in `requirements/`, named with the `-requirements` suffix. `repository-requirements.md` stays unchanged. Shared rules go in `general-requirements.md`. The old files are deleted and every inbound link is migrated, with no redirect stubs. The work lands on `week-2`, before Assignment 2 is published.

Each single-artifact file reads in this order: where it lives (path, form, visibility, how it records a change), then one H2 per part with Required, Recommended, and Example labels, then the full example. Each file opens with a one-paragraph scope, its `**Since: WN**` markers, and a link to its guide. Text moves without being reworded, except for link targets and the sentences that only pointed to "the other file".

Target files:

- `general-requirements.md`: Artifact Concepts And Terminology; Where Artifacts Live In The Repository; Identifier Rules; Traceability Into Later Weeks
- `visibility-requirements.md`: Visibility Model; Sensitive Information Reference (H3 to H2); Screenshot Evidence
- `research-requirements.md`: Where Research Lives (new: the four `docs/research/` files); Research Is The Week's Work; Alternatives; Properties And Comparison; Gap Analysis; Value Proposition And Differentiation; Assumptions; Research Honesty Rules
- `product-vision-requirements.md`: Where The Vision Lives (artifact Product Vision rules 1-3); Goal; Stakeholders; Constraints; Boundary; System Context; Full Example
- `user-stories-requirements.md`: Where Stories Live (artifact User Stories); The Story; Acceptance Criteria; MoSCoW Prioritization; Minimum Usable Product Candidate; Full Example (Must Have and Won't Have)
- `customer-meetings-requirements.md`: Where Meeting Artifacts Live (table and rules 1-4); Every Meeting; The Kickoff; Showing Working Software (Since W3); Permission Questions; Meeting Script; Meeting Report; Meeting Transcript; Meeting Notes; then the script, report, and transcript examples
- `prototypes-requirements.md`: Where Prototypes Live (artifact Prototypes); Validation
- `weekly-report-requirements.md`: Weekly Public Report (with its example); AI Usage Report; Declaring Deviations; Private Submission Wrapper

Anchor map, process-requirements.md:

- alternatives, properties-and-comparison, gap-analysis, value-proposition-and-differentiation, assumptions, research-is-the-weeks-work, research-honesty-rules -> `research-requirements.md#<same>`
- product-vision-and-goals -> `product-vision-requirements.md#goal`; constraints, stakeholders, boundary, system-context -> `product-vision-requirements.md#<same>`
- user-stories -> `user-stories-requirements.md#the-story`; acceptance-criteria, moscow-prioritization, minimum-usable-product-candidate -> `user-stories-requirements.md#<same>`
- validation -> `prototypes-requirements.md#validation`
- identifier-rules, traceability-into-later-weeks -> `general-requirements.md#<same>`
- meeting-with-the-customer -> `customer-meetings-requirements.md#every-meeting`, or `#the-kickoff` when the link is about the five areas, the per-area minimum, or the Mom Test. Check each link by hand.

Anchor map, artifact-requirements.md:

- artifact-concepts-and-terminology, where-artifacts-live-in-the-repository -> `general-requirements.md#<same>`
- visibility-model, sensitive-information-reference, screenshot-evidence -> `visibility-requirements.md#<same>`
- weekly-public-report, ai-usage-report, declaring-deviations, private-submission-wrapper -> `weekly-report-requirements.md#<same>`
- meeting-report, meeting-script, meeting-transcript, meeting-notes -> `customer-meetings-requirements.md#<same>`
- customer-meeting-artifacts -> `#permission-questions` when the link is about the three questions, otherwise `#where-meeting-artifacts-live`. Check each link by hand.
- product-vision -> `product-vision-requirements.md#where-the-vision-lives`
- user-stories -> `user-stories-requirements.md#where-stories-live`
- prototypes -> `prototypes-requirements.md#where-prototypes-live`

Point each bare file link (no anchor) at the file that fits its context. Inside the new files, the old same-file `#` links become same-file or cross-file links under the same map.

Steps:

1. Re-run the inbound-link inventory: `git ls-files | grep -v '^backlog/' | xargs grep -ohE '(process|artifact)-requirements\.md(#[a-z0-9-]+)?' | sort | uniq -c`. On 2026-10-05 it found 130 anchored and 17 bare links across assignments/, guides/, course/rules.md, README.md, AGENTS.md, and repository-requirements.md, and none in lectures/*.typ.
2. Create the eight files by moving sections, then delete the two old files.
3. Rewrite the inbound links from the map: sed for the 1:1 anchors, by hand for the two split anchors and the bare links.
4. Update the links in `repository-requirements.md` and nothing else there.
5. Give each new file one row in the README.md and `course/rules.md` "Where The Rules Live" tables.
6. AGENTS.md: update the repository map rows; the Layering ownership table (each artifact file owns its artifact's location, fields, and content; general owns concepts, locations, identifiers, and traceability; visibility owns where each item goes; repository is unchanged); "all three requirements files" in Applicability markers and checklist item 1; and the Do Not references.

Verification:

- The Markdown gates and `pnpm run check:lectures`.
- `rg -n '(process|artifact)-requirements\.md' --glob '!backlog/**'` returns nothing.
- Anchors: the lychee CI job runs without `--include-fragments`, so check fragments locally with a scratch script that slugs every heading and `<h2 id>` GitHub-style and resolves every relative `.md#fragment` link.
- Read `user-stories-requirements.md` end to end, and check that a student can write a story issue without leaving it, apart from the general and visibility links.
<!-- SECTION:PLAN:END -->
