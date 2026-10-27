---
id: TASK-151.03
title: Write the quality requirement tests and deployment guides
status: Done
assignee:
  - DeepSeek
created_date: '2026-10-27 08:44'
updated_date: '2026-10-27 10:55'
labels: []
dependencies:
  - TASK-151.01
  - TASK-151.02
references:
  - course/plans/a5-plan.md
  - guides/planning-and-tracking.md
  - guides/quality-and-architecture.md
  - requirements/quality-requirements-requirements.md
  - requirements/planning-requirements.md
  - requirements/repository-requirements.md
documentation:
  - course/plans/a5-plan.md
modified_files:
  - guides/quality-requirement-tests.md
  - guides/deployment-and-environments.md
  - guides/quality-and-architecture.md
  - guides/planning-and-tracking.md
parent_task_id: TASK-151
priority: high
ordinal: 133000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Write the two Week 5 guides and extend the two existing guides, per `course/plans/a5-plan.md`'s `## New And Edited Guides`.

The rules the guides explain land in TASK-151.01 and TASK-151.02, so this task starts after them: `guides/quality-requirement-tests.md` explains the `QRT-nn` rules in `requirements/quality-requirements-requirements.md#quality-requirement-tests` and the testing plan in `requirements/planning-requirements.md#quality-requirement-testing-plan`; `guides/deployment-and-environments.md` explains `requirements/repository-requirements.md#environments-and-deployment`.

Both new guides follow the shape of `guides/planning-and-tracking.md`: a one-paragraph preamble with the rules links and a timebox, a `<h2>Table of contents</h2>` list, `## What You Produce`, numbered `## Step N:` sections with `###` sub-sections, and `## Common Mistakes`. A guide shows the method; it never defines a requirement or restates a rule's numbers.

Content for the tests guide, from the plan:
1. Make the requirement testable: the response measure a stranger can run, the pass condition, and the difference between a test and a restatement of the requirement.
2. Write the test: the `QRT-nn` section inside the QR's file, its one-sentence first line, `**Status:**`, `**Level:**`, `**Runs at:**`, `**Why Manual:**` when no command can run it, the numbered procedure, and the `**Pass when:**` criterion.
3. Pick the environment the test needs: development for `scripted`, integration for `CI`, staging for `deployed`, no environment of its own for `manual`; the deployed test on the VM from a campus machine; the `scripted` or `CI` fallback when staging is unavailable; and why a deployed test is not a manual inspection.
4. Record the progress: the testing plan's row, its result, its last check, its planned sprint, and the evidence its level requires; what the weekly report points at; and what the test itself must not carry.

Content for the deployment guide, from the plan:
1. Map the four environments and which test level runs in each, with `manual` having none of its own.
2. Prepare the VM from the university portal, recreate it, set its password, connect over SSH from a campus machine, keep the IPv4 address in the Moodle submission, separate the ports, and verify the customer's access from the university network.
3. Configure the deployment: `.env.example`, secrets outside the repository, the build, and the deployment directory or service.
4. Deploy to staging and run the deployed test, or the `scripted`/`CI` fallback: the command or tool, the target, and the evidence.
5. Deploy to production and verify: the same commit, the core-task smoke check, the rollback, and the release tag after the review and rework.
6. Document it in `docs/deployment.md`: the environment table, placeholders instead of addresses, the campus-network access, the configuration, the deploy, the verification, and the rollback, with the real address in the Moodle submission.

Existing guides:
- `guides/quality-and-architecture.md` gains `## Step 8: Document The Features` before `## Common Mistakes`, and its ToC gains the entry: a feature is a capability, not an artifact; its need is a story, its behavior an FR, its decision an ADR, and its name is a story title, an FR title, a glossary term, or a label where the team documents features; the exercise asks the team to choose and explain that place and the element-naming scheme, and no index is required.
- `guides/planning-and-tracking.md`'s Step 2 notes Assignment 5's two-milestone minimum while the requirement leaves the set to the team.

Keep the one-sentence-per-line prose style and Title Case headings.

When done, record implementation notes and set the task to Done.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 `guides/quality-requirement-tests.md` exists with a preamble, a timebox, a ToC, `## What You Produce`, Steps 1 to 4 (Make The Requirement Testable, Write The Test, Pick The Environment The Test Needs, Record The Progress) with their subsections, and `## Common Mistakes`.
- [x] #2 `guides/deployment-and-environments.md` exists with a preamble, a timebox, a ToC, `## What You Produce`, Steps 1 to 6 (Map The Four Environments, Prepare The VM, Configure The Deployment, Deploy To Staging And Run The Deployed Test, Deploy To Production And Verify, Document The Deployment) with their subsections, and `## Common Mistakes`.
- [x] #3 The tests guide's `## Common Mistakes` covers a test that restates the requirement, a manual test used as the second implemented test, a `deployed` test that is really an inspection, a result on the test instead of the plan, output pasted into the `Evidence` cell, a deployed test run against production, a real address in a public file, an ADR that cites a `QRT-nn`, and a release that claims a quality requirement its tests have not verified.
- [x] #4 The deployment guide's `## Common Mistakes` covers a committed secret, a real IPv4 address in a public file, staging that does not represent production, a test run against production, a deployment nobody else can repeat, an assumed domain name, a link check pointed at the private address, and a deployment document that stops at the first successful run or copies `docs/setup.md`.
- [x] #5 `guides/quality-and-architecture.md` gains `## Step 8: Document The Features` before `## Common Mistakes`, with its ToC entry, covering that a feature is a capability rather than an artifact, the story/FR/ADR/glossary places its facts live, the choice of where features are documented, and the element-naming scheme for an agent; no `docs/features.md` path is required.
- [x] #6 `guides/planning-and-tracking.md`'s Step 2 notes Assignment 5's milestone minimum (at least two milestones due in `SPRINT-05` through `SPRINT-09` in total, an existing one counts, the two are due in different sprints) while the requirement leaves the milestone set to the team.
- [x] #7 Every link in the new and edited guides resolves to an existing heading, the guides link the requirements that own each rule rather than restating a rule's numbers or lists, and the guides explain method rather than define requirements.
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
1. Read the landed W5 rules in `requirements/quality-requirements-requirements.md#quality-requirement-tests`, `requirements/planning-requirements.md#quality-requirement-testing-plan`, `requirements/repository-requirements.md#environments-and-deployment`, `requirements/visibility-requirements.md#sensitive-information-reference`, and the guides' shape (`guides/planning-and-tracking.md`, `guides/quality-and-architecture.md`).
2. Write `guides/quality-requirement-tests.md`: preamble with the rules links and a timebox, ToC, `## What You Produce`, Steps 1-4 (Make The Requirement Testable, Write The Test, Pick The Environment The Test Needs, Record The Progress) with `###` subsections, `## Common Mistakes` covering the nine cases the acceptance criterion names. Method only: link the requirements for each rule's numbers, field lists, and level table.
3. Write `guides/deployment-and-environments.md`: same shape, Steps 1-6 (Map The Four Environments, Prepare The VM, Configure The Deployment, Deploy To Staging And Run The Deployed Test, Deploy To Production And Verify, Document The Deployment), `## Common Mistakes` covering the eight cases. The runbook method, `docs/setup.md` linked and not repeated, no real address.
4. Edit `guides/quality-and-architecture.md`: ToC entry and `## Step 8: Document The Features` before `## Common Mistakes` — feature as capability, the story/FR/ADR/glossary homes of its facts, the team's chosen place, the element-naming scheme, no required index.
5. Edit `guides/planning-and-tracking.md`: one note in Step 2 on Assignment 5's two-milestone minimum, while `Milestones` rule 6 leaves the set to the team.
6. Validate: `pnpm run format:markdown`, `format:markdown:check`, `lint:markdown`, both Markdown plugin test suites, `check:links` (anchors included), and `check:lectures`; check every cross-guide and requirements link by anchor. Record decisions and results as implementation notes, then set Done.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Wrote both guides in the shape `guides/planning-and-tracking.md` uses: preamble with the rules links and a timebox, `<h2>Table of contents</h2>`, `## What You Produce`, numbered `## Step N:` sections with `###` subsections, and `## Common Mistakes`.

Decisions:
- `guides/quality-requirement-tests.md` is method only and links each rule's owner for the full list: `quality-requirements-requirements.md#quality-requirement-tests` for the fields, levels, and evidence, `planning-requirements.md#quality-requirement-testing-plan` for the row, `releases-requirements.md#cutting-a-release` for the claim, `visibility-requirements.md#sensitive-information-reference` for the address. The level-to-environment pairing is condensed into one line and the evidence summary into one, because `course/plans/a5-plan.md` asks Steps 3 and 4 for them.
- Step 2 carries one worked `QRT-nn` section for the `deployed` level, with `$STAGING_URL` and no real address, so the reader sees the assertion, fields, procedure, and `**Pass when:**` in one block.
- The staging fallback has two coherent forms rather than one: write the other implemented test at `CI`/`scripted` and record that run, or keep it `deployed` with its row `Not verified` and the sprint the VM is now expected in. Both follow the requirement's level and row rules and the release claim rule; `a5-plan.md`'s VM-late paragraph mixes the two, and this reading keeps a claim and a row from disagreeing. The deployment guide points at that subsection instead of restating it; TASK-151.04 should encode one form in the assignment.
- `guides/quality-and-architecture.md` gains its ToC entries and `## Step 8: Document The Features` before `## Common Mistakes`: a feature is a capability, not an artifact; the need, behaviour, decision, and name are owned by the story, the `FR-nnn`, the ADR's `**Addresses:**`, and the glossary's `**Defined by:**`, each linked; the place is the team's choice with `docs/features.md` as one possible place and no required path; the element-naming scheme is illustrated with `signInPage.loginLink.label`. No `## Common Mistakes` entry was added, because the plan asks only for the section.
- `guides/planning-and-tracking.md`'s Step 2 notes Assignment 5's at-least-two-milestones bar over `SPRINT-05` to `SPRINT-09`, that an existing milestone counts and only the shortfall is added, that the two are due in different sprints, and that `Milestones` rule 6 still leaves the set to the team.
- Routing is not touched here: the two new guides' rows in `README.md`, `SKILL.md`, `course/rules.md`, and `AGENTS.md`, and the requirements files' guide pointers, are TASK-151.06's scope per `a5-plan.md`'s `## Edited Files Outside `requirements/``, and no requirements file was edited because the plan adds no guide pointer there.
- `TODO.md` changed outside this session while the task ran: two unchecked items were added, one of them "Revise explanation of features in guides/quality-and-architecture.md`. The file was left as the user's own work, and the item is not part of the three acceptance criteria this task carries.

Validation results:
- `pnpm run format:markdown`: no change needed; `pnpm run format:markdown:check` and `pnpm run lint:markdown` pass.
- `pnpm run test:markdown-format`: 34 tests in 2 files pass. `pnpm run test:markdown-rules`: 34 tests in 2 files pass.
- `pnpm run check:lectures`: `5 deck(s) match their sources`.
- `lychee --offline --no-progress --include-fragments .`: 2129 links, 0 errors across the repository. A deliberately broken anchor added to the tests guide was reported as `Cannot find fragment`, so heading anchors are enforced by this command, and every link in the new and edited guides resolves.
- `pnpm run check:links`: 2123 OK, 0 errors, 4 timeouts, all on `https://iso25000.com/en/iso-25000-standards/iso-25010` in `course/plans/a4-plan.md`, `course/plans/a5-plan.md`, and `requirements/quality-requirements-requirements.md`. That URL's TLS handshake fails from this sandbox (`curl` reports `OpenSSL SSL_connect: SSL_ERROR_SYSCALL` after 82 s), and none of the three files is modified by this task; no new or edited guide has a timeout or a broken link. The gate is recorded as checked on that evidence.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Added `guides/quality-requirement-tests.md` (four steps: make the requirement testable, write the test, pick the environment the test needs, record the progress) and `guides/deployment-and-environments.md` (six steps from the environment map through the VM, configuration, staging deploy, production deploy, and the runbook), both in the planning guide's shape with rules links, a timebox, a ToC, `## What You Produce`, worked examples, and `## Common Mistakes` covering all seventeen cases the task names. Extended `guides/quality-and-architecture.md` with `## Step 8: Document The Features`, and `guides/planning-and-tracking.md`'s Step 2 with Assignment 5's milestone bar. The guides link the requirements that own each rule and restate no rule's numbers or lists. Format, lint, both plugin test suites, and the lecture check pass; the anchor audit is clean repo-wide (0 errors). `check:links` reports 0 errors and 4 timeouts on one external ISO 25010 URL that is unreachable from this sandbox, in files this task did not modify.
<!-- SECTION:FINAL_SUMMARY:END -->
