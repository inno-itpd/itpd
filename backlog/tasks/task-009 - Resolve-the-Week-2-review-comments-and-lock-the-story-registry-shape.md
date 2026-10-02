---
id: TASK-009
title: Resolve the Week 2 review comments and lock the story registry shape
status: To Do
assignee: []
created_date: '2026-10-02 07:07'
labels: []
dependencies: []
references:
  - >-
    backlog/tasks/task-008 -
    Swap-Week-2-and-Week-3-requirements-and-prototyping-before-planning.md
  - AGENTS.md
  - assignments/assignment-2.md
  - course/syllabus.md
  - guides/user-stories-and-prototyping.md
  - guides/validating-with-the-customer.md
  - requirements/artifact-requirements.md
  - requirements/process-requirements.md
  - requirements/repository-requirements.md
modified_files:
  - AGENTS.md
  - assignments/assignment-2.md
  - course/syllabus.md
  - guides/user-stories-and-prototyping.md
  - guides/validating-with-the-customer.md
  - requirements/artifact-requirements.md
  - requirements/process-requirements.md
  - requirements/repository-requirements.md
ordinal: 9000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Task-008 left 43 HTML review comments across six tracked files: `AGENTS.md` (2), `assignments/assignment-2.md` (17), the two Week 2 guides (6), `requirements/artifact-requirements.md` (12), and `requirements/process-requirements.md` (6).
They are not independent edits: taken together they settle one story-registry shape, one meeting-method correction, and one repository-vocabulary correction.
This task records the decisions first, then applies them in the layering order, so the assignment and the guides state only the delta and the requirements stay the single source of truth.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [ ] #1 `docs/user-stories/README.md` stays the index and `us/US-nn.md` holds the stories; the README carries `## Active stories`, `## Minimum usable product candidate`, and `## Inactive stories`; every path and relative link in the materials moves to the `us/` level
- [ ] #2 Story files carry YAML frontmatter: `id`, `title`, `priority` (`must|should|could|won't`), `status` (`active|inactive`), `gap`, `vp`, optional `sources`, and either `issue` (active) or `reason` (inactive); the body keeps the identifier in its H1
- [ ] #3 `Won't Have` is inactive by definition; the inactive reasons are `removed`, `superseded`, and `won't-have`, each with a date
- [ ] #4 Inactive stories keep a file and a reason and nothing else: no issue and no acceptance criteria; `## Changes` is required only when a story changed after it was written
- [ ] #5 The minima are 8 IDs total, at least 5 active, at least two criteria per active story, and a strict non-empty `Must Have` MUP candidate; `course/syllabus.md:120` agrees
- [ ] #6 A split parent is `superseded`, keeps its ID and file, and is traceable from both children; the semantic rule lives in `process-requirements.md` and the table shape in `artifact-requirements.md`
- [ ] #7 `sources` records additional origins such as a meeting-report anchor; a new need does not rewrite the Week 1 research, and only a contradiction does, per the traceability rules
- [ ] #8 `## Key improvements` is required for every meeting script, two rewrites at the kickoff and one after; `assignment-1.md` is unchanged and the kickoff-only wording leaves `artifact-requirements.md`
- [ ] #9 The Week 2 validation target is the prototype, the boundary, and the MUP candidate, with the other stories only if time allows, and the customer's MUP verdict is a `## Decisions` row naming the `US-nn` it changes
- [ ] #10 `interviewer` becomes `moderator` in all seven sites, including the `## Roles` row and the async-meeting rule
- [ ] #11 `AGENTS.md` states the Scrum elements (one-week sprints from Week 3; planning, grooming, estimation, and retrospective required; no daily standup, no Product Backlog/PBI/story points), adds the five terms to Terminology, deletes both stale comments, and registers `reports/week-NN/sprint-retrospective.md` with its structure deferred
- [ ] #12 `repository-requirements.md` opens issues for active stories only, says the issue does not copy the criteria, and states the Markdown check must accept YAML frontmatter
- [ ] #13 `course/syllabus.md:115` and `:120` match the `us/` path and the 8/5 minima
- [ ] #14 All 43 comments are gone; `pnpm run format:markdown`, `pnpm run lint:markdown`, `pnpm run test:markdown-format`, and `pnpm run test:markdown-rules` pass; `check:lectures` is unchanged and its inherited red is recorded in the notes
<!-- AC:END -->

## Implementation Plan

<!-- SECTION:PLAN:BEGIN -->
1. Record the decisions here, then edit `requirements/process-requirements.md` (semantics) before `requirements/artifact-requirements.md` (shapes), because links are written against the anchors the first one sets.
2. Add the two repository additions and the two syllabus lines.
3. Update both guides, then `assignments/assignment-2.md`, then `AGENTS.md` last.
4. Sweep every relative link and heading anchor in the eight edited files plus `README.md`; the `us/` move is the failure point.
5. Run the four Markdown gates; stage only if a new tracked file appears, which none is expected to.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Decisions locked while planning this task, with the user, before any edit:

1. Story shape: `docs/user-stories/us/US-nn.md`; frontmatter plus body; the README index has `## Active stories`, `## Minimum usable product candidate`, and `## Inactive stories`.
2. Active priorities are must/should/could; `priority: won't` implies `status: inactive`; inactive reasons are `removed`, `superseded`, `won't-have`.
3. Inactive obligations: file plus a short reason; no issue and no acceptance criteria; the Inactive table columns are Story | Status | Reason | Date.
4. `gap` and `vp` stay singular and required in frontmatter; `sources` is an optional list for anything else, such as a meeting anchor.
5. Minima: 8 IDs total, at least 5 active, MUP candidate strict non-empty subset of Must Have, at least two criteria per active story.
6. Meeting target: prototype plus boundary plus MUP candidate, other stories only if time allows; the MUP verdict is a `## Decisions` row.
7. `## Key improvements`: required for every meeting, two rewrites at the kickoff and one after; `assignment-1.md` unchanged.
8. `interviewer` renamed to `moderator` in all seven sites.
9. Sprints: one course week from Week 3; planning, grooming, estimation, and retrospective required; no daily standup, no Product Backlog, no PBI, no story points; estimation unit left unstated until Week 3.
10. Sprint retrospective at `reports/week-NN/sprint-retrospective.md`; structure deferred to the Week 3 work and registered only as a placeholder.
11. YAML frontmatter is required, so the Markdown check must accept it (MD041).
12. `sources` does not rewrite the Week 1 research; only a contradiction does, per the traceability rules.

Low-leverage resolutions applied while editing: keep the "no product code" sentence and add that a code spike on a branch is not product code; singular "the goal" with "the goal traces to at least one VP-nn"; keep one line separating a goal from a quality goal and a threshold; the MUP candidate is a proposal and Week 3 schedules the index as it stands; the issue links to the story and does not copy the criteria and tracks that story's added value; drop the Week 1-template comparison and link the three permission questions instead of restating them; state the reasons for the two-row minima; require commits alongside issues and reviews in the contribution table; use neutral deviations wording; define MoSCoW in prose in the guide without inventing a URL; genericize the "marking" example jargon in the validating guide; mention the kickoff method once, by link; keep "ask about the last time" without Week 1 framing; link the `VP-nn` location; add no `C-nn` family; name Gherkin without a link; drop the "team 7" example; make `## Changes` conditional on the story having changed; say "the question it was built to answer"; tie the branch-evidence sentence to `repository-requirements.md:111`; state that assumptions live at the end of `docs/research/value-proposition.md`; keep the forward references to `Q-nn` and the threshold; replace "earns its keep" with plain language; keep the criteria rule in process requirements only; delete the week-specific sentence at `AGENTS.md:200` without moving it to `tmp/`.

Scope: `backlog.md` is untouched; task-008 acceptance criteria 16 and 19 are carried by the deck follow-up task; no deck is rebuilt; no commit is made without an explicit request.

`pnpm run check:lectures` is inherited-red on this branch: the committed `lectures/lecture-2.pdf` is 127949 bytes while the current source builds 115282. This task does not touch `lectures/`, so the Definition of Done item is judged as not-regressed, and the failure stays owned by the deck follow-up task.

Task-008's note that pinned backlog 1.45 has no `--append-notes` is wrong: `backlog task edit --help` lists it. Use it if this task's notes need to grow, or `--notes` to replace whole.
<!-- SECTION:NOTES:END -->

## Definition of Done
<!-- DOD:BEGIN -->
- [ ] #1 All acceptance criteria are satisfied
- [ ] #2 Changed Markdown files are formatted: `pnpm run format:markdown`
- [ ] #3 `pnpm run lint:markdown` passes
- [ ] #4 `pnpm run test:markdown-format` and `pnpm run test:markdown-rules` pass
- [ ] #5 `pnpm run check:lectures` passes
<!-- DOD:END -->
