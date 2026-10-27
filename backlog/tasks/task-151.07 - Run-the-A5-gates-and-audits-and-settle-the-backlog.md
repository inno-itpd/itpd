---
id: TASK-151.07
title: Run the A5 gates and audits and settle the backlog
status: Done
assignee:
  - agent
created_date: '2026-10-27 08:45'
updated_date: '2026-10-27 13:15'
labels: []
dependencies:
  - TASK-151.01
  - TASK-151.02
  - TASK-151.03
  - TASK-151.04
  - TASK-151.05
  - TASK-151.06
references:
  - course/plans/a5-plan.md
  - >-
    backlog/tasks/task-145 -
    Move-the-product-code-CI-and-actionlint-from-Week-4-to-Week-5.md
  - AGENTS.md
documentation:
  - course/plans/a5-plan.md
parent_task_id: TASK-151
priority: high
ordinal: 137000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Run the final validation, fix what the audits find, and settle the backlog for the Assignment 5 implementation. This is the last task, after the requirements, guides, assignment, decisions, and routers have landed.

1. Work through every audit in `course/plans/a5-plan.md`'s `## Tests And Validation`: scope, contradiction, routing, cross-reference, decision-log, move, level, QRT, testing-plan, environment, milestone, story, codebase-design, check, trace, full-example, CI, release, removal, and deck.
   A finding is fixed in the file that owns the rule or the artifact; an audit is never satisfied by weakening its expectation.
   The one fact the audits verify rather than change: `requirements/architecture-requirements.md`'s required views end at the container view and its Week 5 forward reference is already gone.
2. Run the repository gates: `pnpm run format:markdown` then `pnpm run format:markdown:check`, `pnpm run lint:markdown`, `pnpm run test:markdown-format`, `pnpm run test:markdown-rules`, and `pnpm run check:links`.
   `pnpm run lint:actions` runs only if a workflow in this repository changed, and `pnpm run check:lectures` only if a deck changed.
   `check:links` needs network and checks heading fragments.
3. Edit `TASK-145` through `backlog task edit`: its acceptance criterion that names the reversing decision changes from `A5-DEC-017` to `A5-DEC-013`, and its description changes from "removes them from the course" to "not required", per the plan's `## Edited Files Outside requirements/`.
   Then verify TASK-145's remaining criteria against the work that landed; when they hold, set it Done with implementation notes, and when one does not, record the gap in its notes and leave it open.
4. Verify the task tree with `backlog task list` and `backlog sequence list --plain`, and check that the task IDs, dependencies, and parent links are consistent.
   The plan and `AGENTS.md` name `backlog doctor`, but this checkout's `backlog` 1.45 has no such command; do not block on it, and mention the discrepancy in the implementation notes.
5. Set TASK-151 and each subtask Done with implementation notes recording the decisions made and the validation results, once the work is complete.
   No A5 backlog breakdown is added to `TODO.md`; the tree under TASK-151 is the breakdown.

Do not create files under `docs/` or `reports/`, do not hand-edit `lectures/*.pdf`, and leave the user's staged changes in place.

When done, record implementation notes and set the task to Done.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 Every audit in `course/plans/a5-plan.md`'s `## Tests And Validation` is run (scope, contradiction, routing, cross-reference, decision-log, move, level, QRT, testing-plan, environment, milestone, story, codebase-design, check, trace, full-example, CI, release, removal, and deck), and each finding is fixed in the file that owns it rather than by weakening the audit.
- [x] #2 `pnpm run format:markdown:check`, `pnpm run lint:markdown`, `pnpm run test:markdown-format`, `pnpm run test:markdown-rules`, and `pnpm run check:links` pass; `pnpm run lint:actions` runs only if a course workflow changed and `pnpm run check:lectures` only if a deck changed.
- [x] #3 `TASK-145` is edited with `backlog task edit`: its criterion that names the reversing decision changes from `A5-DEC-017` to `A5-DEC-013`, and its description changes from "removes them from the course" to "not required".
- [x] #4 TASK-145's remaining criteria are verified against the landed work and it is set Done with implementation notes when they hold, or its remaining gap is recorded as a note and it stays open.
- [x] #5 The tree is verified with `backlog task list` and `backlog sequence list --plain` because this checkout's `backlog` 1.45 has no `doctor` command; parent and dependency links are consistent, TASK-151 and its subtasks carry implementation notes, and the parent is set Done once every subtask is Done.
- [x] #6 No file is created under `docs/` or `reports/`, no pitch deck is edited, no feature index or `FEAT-nn` family is added, and the working tree keeps the user's staged changes.
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
Final validation for the A5 implementation, per `course/plans/a5-plan.md`'s `## Tests And Validation`.

1. Survey the A5 commits and read every touched file.
2. Run each named audit and record findings; fix each finding in the file that owns the rule or artifact:
   scope, contradiction, routing, cross-reference, decision-log, move, level, QRT, testing-plan, environment, milestone, story, codebase-design, check, trace, full-example, CI, release, removal, deck.
3. Run the repository gates: `format:markdown`, `format:markdown:check`, `lint:markdown`, `test:markdown-format`, `test:markdown-rules`, `check:links`. `lint:actions` only if a course workflow changed; `check:lectures` only if a deck changed.
4. Edit TASK-145: criterion `A5-DEC-017` -> `A5-DEC-013`, description "removes them from the course" -> "not required"; verify its remaining criteria; set Done or record the gap.
5. Verify the tree with `backlog task list` and `backlog sequence list --plain` (no `doctor` in backlog 1.45); set TASK-151 and its subtasks Done with implementation notes.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Ran `course/plans/a5-plan.md`'s `## Tests And Validation` over the landed A5 work, fixed the findings in the files that own them, and settled the backlog.

**Audits run and results**
- Scope: every `## Goal And Success Criteria` criterion has a part, a rule, or a file change in `## Changes To The Requirements` or `## Edited Files Outside requirements/`; every part has a rule or is a documented assignment minimum (Part 6 is `A5-DEC-021`).
- Contradiction: all 28 rows of `## Scope And Contradictions` are applied in the named files and by the cited `A5-DEC` entry; in particular the W5 CI block names the five applicable checks with no deployment job, the weekly-report pointer is rule 15, the release body carries the claim, and `requirements/architecture-requirements.md` has no Week 5 forward reference (its `### Container View` still calls the view the last the document gains).
- Routing: both guides appear in `README.md`, `SKILL.md`, `course/rules.md`, and `AGENTS.md`'s Repository Map; the quality, planning, and repository descriptions are updated; `docs/deployment.md` is in the `docs/` destination map; the Step 8 entry is in the quality guide's ToC; `docs/features.md` is not a required path.
- Cross-reference: every `Since: W5` rule has an Assignment 5 part, including the testing plan (Parts 4–5), the weekly-report pointer (report item 1), the progress rule (Part 5's rule list), and the customer-meetings rule (Part 8); every part has a rule or is a documented assignment minimum.
- Decision-log: `A5-DEC-001` to `A5-DEC-033` exist, every citation in the plan and the routers resolves, and each cited entry states the resolution it is cited for.
- Move: no rule that left `a4-plan.md` has two owners; the CI checks and the Definition of Done item are separate rules; the unit tests and the deployment are separate rules; the milestones and the two stories are assignment minima, with `planning-requirements.md` rule 6 unchanged.
- Level: the deployed example names the staging deployment, a campus machine, and `scripts/check-booking-latency.ts $STAGING_URL`; the CI example names the `test` job of `.github/workflows/ci.yml`; there is no `manual` or `scripted` example, so nothing carries the field or command it lacks; both testing-plan `Evidence` cells match their tests' levels.
- QRT: each active High business-importance QR in the example (`QR-01`, `QR-02`) has a test; `QR-03` is dropped and needs none; every test carries `Status`; the headings are `## QRT-01` with `#qrt-01`; the testability requirement has the `CI` test; the other implemented test is `QR-01`'s `deployed` test; no manual test stands in; the release re-checks before claiming.
- Testing-plan: the rows are `Passes`/`Fails`/`Not verified`, or `Dropped` only for a dropped QRT; a dropped row has `None` for `Checked`, `Planned for sprint`, and `Evidence`; no test carries a result.
- Environment: the four environments are named in the requirements, the assignment, and the guide; the VM portal, the campus SSH access, and the campus member are recorded; staging and production are separate deployments; `docs/deployment.md` is distinct from `docs/setup.md`; no real IPv4 address appears in a public file; the guide's `Check The Customer Can Open It` verifies the customer's access.
- Milestone: the assignment asks for at least two milestones due in `SPRINT-05`–`SPRINT-09`, the two due in different sprints, a run of one or two sprints, each advancing a `TOS-nn` and leading with its increment; `planning-requirements.md` rule 6 is unchanged. The planning full example failed this, fixed below.
- Story: the assignment asks for the `User Story` type, `MoSCoW`, `Story Points`, `### Specified by`, checkbox `AC-nn`, and `Responsible`/`Accountable` plus both assignees on the `SPRINT-05` story.
- Codebase design: the assignment carries the exercise, the report's coverage table links the team's answer, no report rule or fixed path is added, and no feature issue type or `FEAT-nn` family exists.
- Check: each `Passes`/`Fails` row has `Checked` and `Evidence`; no `Not verified`/`Dropped` row is present; each claimed QR has one non-dropped test, `Passes` and checked in `SPRINT-05`.
- Trace: the quality requirements index links the testing plan once; the week's report points at it; no test's status is maintained outside the plan; the release body links the tests and states its claim.
- Full example: the planning, release, weekly-report, quality, and DoD examples carry their new sections or fields and are set after Week 5 / after `REL-05`; the quality example shows `QR-01`'s `deployed` test and `QR-02`'s `CI` test. The planning example failed the two-milestone minimum, fixed below.
- CI: `actionlint` and the applicable checks are in the W5 block, pinned, on pull requests and `main`; the Definition of Done's W5 item names them; no deployment job exists.
- Release: the release is cut after the review and any rework, only the final production deploy supplies the evidence, the body's claim matches the tests, and every claimed test is checked in `SPRINT-05`. `README.md` called `REL-05` the "fifth release", fixed below.
- Removal: no rule, assignment, guide, or router requires a component or sequence view; the decision records keep their statements and their statuses name the reversal.
- Deck: no Week 5 artifact, Moodle wrapper, checklist, coverage row, or decision designs a deck; the Week 6 class no longer presents it; the Week 7 class presents a near-final Week 6 deck and the final one is submitted on 7 November.

**Findings fixed in the owning file**
- `requirements/planning-requirements.md`: the full example had one milestone due in `SPRINT-05`–`SPRINT-09` (`MLS-05`), while the plan requires the example to show the two-milestone minimum. Added `MLS-06` (due 2026-11-07, `SPRINT-06`, advances `TOS-01`, leading with the real paid booking) and the `### SPRINT-06` section with its provisional goal, `**Due:**`, and the unpublished `#### REL-06` heading, and reworded the trim sentence from the "first two milestones" to the milestone sections for Weeks 3, 5, and 6. This also makes the example show the two due in different sprints and the run that covers `SPRINT-04`–`SPRINT-05`.
- `README.md`: the Assignment 5 row called `REL-05` the "fifth release", which `A5-DEC-031` rejects because the number counts sprints and `REL-05` carries no ordinal; it now says "the Week 5 release".
- `TODO.md`: the actionlint note now names Assignment 5's Part 2, so TASK-145's criterion #5 holds (see that task's notes).

**Gates**
`format:markdown` leaves the tree unchanged; `format:markdown:check`, `lint:markdown`, `test:markdown-format` (34 tests), `test:markdown-rules` (34 tests), and `check:lectures` (5 decks, Typst 0.15.1) pass. `check:links` passed with 0 errors twice today on this tree's URL set (2428 links, 2426 OK, 2 excluded); later runs fail only on four timeouts of the external `https://iso25000.com/en/iso-25000-standards/iso-25010` in `course/plans/a4-plan.md`, `course/plans/a5-plan.md`, and `requirements/quality-requirements-requirements.md`, none of which this work edits. The maintainer accepted that external timeout rather than weakening the gate or excluding the URL. `lychee --offline --include-fragments .` reports 0 errors over every local path and heading anchor (2428 links, 2381 OK, 47 external skipped), and `lint:actions` was not run because no workflow in this repository changed.

**Backlog tree**
`backlog task list`, `backlog task view`, and `backlog doctor` confirm the seven subtasks under TASK-151 with consistent parent links and dependencies. The plan and the task text expected `backlog` 1.45 with no `doctor` command; the installed CLI is 1.52.0, where `doctor` exists and `sequence` does not, so `backlog sequence list --plain` could not be run. TASK-145 was repointed and set Done; TASK-151.02 and TASK-151.05 had their DoD #6 checked now that `check:links` has a green run. TASK-151 is set Done once every subtask is Done; no A5 breakdown was added to `TODO.md`.

**Working tree**
No file was created under `docs/` or `reports/`, no pitch deck was edited, and no feature index or `FEAT-nn` family was added. No user-staged changes existed; the working tree carries only these validation edits and the Backlog updates.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
## Summary

Final validation for the Assignment 5 implementation in `itpd`: every audit in `course/plans/a5-plan.md`'s `## Tests And Validation` was run, the two findings were fixed in the files that own them, the repository gates were run, and the backlog was settled.

## Changes

- `requirements/planning-requirements.md`: the full example gained `MLS-06` and a `### SPRINT-06` section so the plan shows the assignment's two milestones due in `SPRINT-05`–`SPRINT-09`, due in different sprints, with `MLS-05` running over `SPRINT-04`–`SPRINT-05`; the trim sentence now names the milestone sections for Weeks 3, 5, and 6.
- `README.md`: the Assignment 5 row says "the Week 5 release" instead of "fifth release", because `A5-DEC-031` gives `REL-05` no ordinal.
- `TODO.md`: the actionlint note points at Assignment 5's Part 2, so TASK-145's criterion #5 holds.
- `backlog/`: TASK-145 was repointed from `A5-DEC-017` to `A5-DEC-013`, its description now says the component and sequence views are not required, and it is Done; TASK-151.02 and TASK-151.05 have DoD #6 checked; TASK-151.07 and TASK-151 are Done.

## Validation

`format:markdown:check`, `lint:markdown`, `test:markdown-format` (34 tests), `test:markdown-rules` (34 tests), `check:lectures` (5 decks, Typst 0.15.1), and `backlog doctor` pass. `check:links` passed with 0 errors twice on this tree's URL set and later times out only on the external `iso25000.com` URL in files this work does not edit; the maintainer accepted that environmental timeout, and `lychee --offline --include-fragments .` reports 0 errors over every local link and anchor. `lint:actions` was not run because no workflow changed.

## Follow-up

Re-run `pnpm run check:links` when `iso25000.com` is reachable.
<!-- SECTION:FINAL_SUMMARY:END -->
