---
id: TASK-151.02
title: 'Land the Week 5 CI, environment, deployment, and visibility rules'
status: To Do
assignee: []
created_date: '2026-10-27 08:44'
labels: []
dependencies: []
references:
  - course/plans/a5-plan.md
  - requirements/repository-requirements.md
  - requirements/visibility-requirements.md
  - requirements/definition-of-done-requirements.md
  - requirements/architecture-requirements.md
  - requirements/adr-requirements.md
documentation:
  - course/plans/a5-plan.md
modified_files:
  - requirements/repository-requirements.md
  - requirements/visibility-requirements.md
  - requirements/definition-of-done-requirements.md
parent_task_id: TASK-151
priority: high
ordinal: 132000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Land the Week 5 continuous-integration, environment, deployment, visibility, and Definition of Done rules, per `course/plans/a5-plan.md`.

Read the plan's `## Design Decisions` (continuous integration, the environments, `docs/deployment.md` is not `docs/setup.md`, the deployment, the QA evidence does not name the address) and its `## Changes To The Requirements` for `repository-requirements.md`, `visibility-requirements.md`, and `definition-of-done-requirements.md`, plus the `## No Change` list.

No requirements file is added, every new rule is `**Since: W5**`, rules are numbered continuously within their section, and no rule gets a second owner. Follow the repository conventions in `AGENTS.md`.

Required outcome:
- `repository-requirements.md`'s W5 CI block replaces the "formatting or type checking" wording with the five separately named checks, adds `actionlint` over `.github/workflows/`, requires each check that applies to the product's stack, says what to do when one does not apply, includes at least one test for each critical module the testability requirement names, keeps the pinning rule, and says the workflow deploys nothing.
- `repository-requirements.md` gains `## Environments And Deployment` with its ToC entry: the four environments and what each runs, the university VM from the portal, recreating it, the password, SSH from a campus machine, the campus member who deploys and runs the `deployed` test, staging and production as separate deployments on separate ports with separate configuration and secrets, the customer's IPv4 access from the university network with no domain name, the manual deploy, verification and rollback, `docs/deployment.md` as the runbook that links `docs/setup.md` rather than repeating it, placeholders instead of a real address, and no committed secret.
- `visibility-requirements.md` sends the staging and production addresses to Moodle only, with `docs/deployment.md` and a test's `**Runs at:**` carrying a placeholder or environment variable, and the public report pointing at the Moodle submission for the address.
- `definition-of-done-requirements.md`'s W5 pull request item names `actionlint` and the applicable product-code CI checks, and the full example's `## Pull Request` list gains the item.

Verify and leave unchanged: `architecture-requirements.md` requires only the context and container views and carries no Week 5 forward reference, `adr-requirements.md`'s `**Addresses:**` lists only `FR-nnn` and `QR-nn`, and no feature index or `FEAT-nn` family is added anywhere.

Do not edit `assignments/`, `guides/`, the routers, or any decision log here; later tasks own them.

When done, record implementation notes and set the task to Done.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [ ] #1 `requirements/repository-requirements.md`: the `**Since: W5**` CI block names `actionlint` over `.github/workflows/` and the five product-code checks separately (linting, formatting, type checking, build, automated tests), each required when it applies to the stack, with a check that does not apply recorded as not applicable, the testability requirement's critical modules covered from a clean checkout, pinned actions, and no deployment job.
- [ ] #2 `requirements/repository-requirements.md`: `## Environments And Deployment` exists after `## Continuous Integration` with its ToC entry and is `**Since: W5**`, owning the four environments, the university VM and its portal, SSH from a campus machine, the campus member who deploys, staging and production as separate deployments, the manual deploy, verification and rollback steps, `docs/deployment.md` versus `docs/setup.md`, the secrets rule, and the rule that no real address is committed.
- [ ] #3 `requirements/visibility-requirements.md`: `## Sensitive Information Reference` gains the staging and production address row and a W5 sentence sending the addresses to Moodle only, with the placeholder rule for `docs/deployment.md` and a test's `**Runs at:**`.
- [ ] #4 `requirements/definition-of-done-requirements.md`: the `**Since: W5**` pull request item names `actionlint` and the applicable product-code CI checks, and the full example's `## Pull Request` list gains the item.
- [ ] #5 `requirements/architecture-requirements.md` and `requirements/adr-requirements.md` are not edited, and the task confirms that the architecture document's required views end at the container view, with no Week 5 forward reference.
- [ ] #6 The new rules keep one owner each: the environment and deployment mechanics live in `repository-requirements.md`, the address visibility in `visibility-requirements.md`, and the pull request check item in `definition-of-done-requirements.md`.
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
