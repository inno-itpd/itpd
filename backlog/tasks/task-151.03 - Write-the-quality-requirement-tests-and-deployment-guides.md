---
id: TASK-151.03
title: Write the quality requirement tests and deployment guides
status: To Do
assignee: []
created_date: '2026-10-27 08:44'
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
- [ ] #1 `guides/quality-requirement-tests.md` exists with a preamble, a timebox, a ToC, `## What You Produce`, Steps 1 to 4 (Make The Requirement Testable, Write The Test, Pick The Environment The Test Needs, Record The Progress) with their subsections, and `## Common Mistakes`.
- [ ] #2 `guides/deployment-and-environments.md` exists with a preamble, a timebox, a ToC, `## What You Produce`, Steps 1 to 6 (Map The Four Environments, Prepare The VM, Configure The Deployment, Deploy To Staging And Run The Deployed Test, Deploy To Production And Verify, Document The Deployment) with their subsections, and `## Common Mistakes`.
- [ ] #3 The tests guide's `## Common Mistakes` covers a test that restates the requirement, a manual test used as the second implemented test, a `deployed` test that is really an inspection, a result on the test instead of the plan, output pasted into the `Evidence` cell, a deployed test run against production, a real address in a public file, an ADR that cites a `QRT-nn`, and a release that claims a quality requirement its tests have not verified.
- [ ] #4 The deployment guide's `## Common Mistakes` covers a committed secret, a real IPv4 address in a public file, staging that does not represent production, a test run against production, a deployment nobody else can repeat, an assumed domain name, a link check pointed at the private address, and a deployment document that stops at the first successful run or copies `docs/setup.md`.
- [ ] #5 `guides/quality-and-architecture.md` gains `## Step 8: Document The Features` before `## Common Mistakes`, with its ToC entry, covering that a feature is a capability rather than an artifact, the story/FR/ADR/glossary places its facts live, the choice of where features are documented, and the element-naming scheme for an agent; no `docs/features.md` path is required.
- [ ] #6 `guides/planning-and-tracking.md`'s Step 2 notes Assignment 5's milestone minimum (at least two milestones due in `SPRINT-05` through `SPRINT-09` in total, an existing one counts, the two are due in different sprints) while the requirement leaves the milestone set to the team.
- [ ] #7 Every link in the new and edited guides resolves to an existing heading, the guides link the requirements that own each rule rather than restating a rule's numbers or lists, and the guides explain method rather than define requirements.
<!-- AC:END -->

## Definition of Done
<!-- DOD:BEGIN -->
- [ ] #1 All acceptance criteria are satisfied
- [ ] #2 Changed Markdown files are formatted: `pnpm run format:markdown`
- [ ] #3 `pnpm run lint:markdown` passes
- [ ] #4 `pnpm run test:markdown-format` and `pnpm run test:markdown-rules` pass
- [ ] #5 `pnpm run check:lectures` passes
- [ ] #6 `pnpm run check:links` passes
- [ ] #7 Implementation notes record the decisions made and the validation results
<!-- DOD:END -->
