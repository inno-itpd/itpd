---
id: TASK-151.02
title: 'Land the Week 5 CI, environment, deployment, and visibility rules'
status: Done
assignee: []
created_date: '2026-10-27 08:44'
updated_date: '2026-10-27 10:25'
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
- [x] #1 `requirements/repository-requirements.md`: the `**Since: W5**` CI block names `actionlint` over `.github/workflows/` and the five product-code checks separately (linting, formatting, type checking, build, automated tests), each required when it applies to the stack, with a check that does not apply recorded as not applicable, the testability requirement's critical modules covered from a clean checkout, pinned actions, and no deployment job.
- [x] #2 `requirements/repository-requirements.md`: `## Environments And Deployment` exists after `## Continuous Integration` with its ToC entry and is `**Since: W5**`, owning the four environments, the university VM and its portal, SSH from a campus machine, the campus member who deploys, staging and production as separate deployments, the manual deploy, verification and rollback steps, `docs/deployment.md` versus `docs/setup.md`, the secrets rule, and the rule that no real address is committed.
- [x] #3 `requirements/visibility-requirements.md`: `## Sensitive Information Reference` gains the staging and production address row and a W5 sentence sending the addresses to Moodle only, with the placeholder rule for `docs/deployment.md` and a test's `**Runs at:**`.
- [x] #4 `requirements/definition-of-done-requirements.md`: the `**Since: W5**` pull request item names `actionlint` and the applicable product-code CI checks, and the full example's `## Pull Request` list gains the item.
- [x] #5 `requirements/architecture-requirements.md` and `requirements/adr-requirements.md` are not edited, and the task confirms that the architecture document's required views end at the container view, with no Week 5 forward reference.
- [x] #6 The new rules keep one owner each: the environment and deployment mechanics live in `repository-requirements.md`, the address visibility in `visibility-requirements.md`, and the pull request check item in `definition-of-done-requirements.md`.
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
Read `course/plans/a5-plan.md` (Design Decisions, Changes To The Requirements, Tests And Validation), the three files this task owns, and the already-landed Week 5 rules in `quality-requirements-requirements.md` for the level/environment split.

1. `requirements/repository-requirements.md`
   - Replace the single `**Since: W5**` rule 8 with rules 8–12: `actionlint` over `.github/workflows/`; the five product-code checks named separately (linting, formatting, type checking, build, automated tests), each required when it applies to the stack, on pull requests and `main`, pinned per `#pinning-third-party-actions`; a check that does not apply recorded as not applicable with its reason; at least one automated test for each critical module the mandated testability `QR-nn` names, run from a clean checkout; the workflow stops at the build and the tests, with no deployment job.
   - Add `## Environments And Deployment` after `## Continuous Integration` with its ToC entry: a short preamble, then `**Required**` rules for the four environments (development, integration, staging, production) and what runs in each; the university VM from the portal, recreated, own password, SSH from a university-network machine; the campus member who deploys and runs the `deployed` test; the customer's IPv4 access from the university network with no domain name; staging and production as separate deployments on separate ports with separate configuration and secrets; the manual deploy of the same commit to both; verification of the core task and rollback; `docs/deployment.md` as the runbook that links `docs/setup.md` instead of repeating it; placeholders instead of a real address; the VM's configuration outside the repository with `.env.example` carrying the shape.
   - Keep one owner: the levels-to-environment mapping, the `**Runs at:**` placeholder, and the address destination stay links to `quality-requirements-requirements.md` and `visibility-requirements.md`; the general secrets rule stays in `## Configuration And Sensitive Information`.

2. `requirements/visibility-requirements.md`
   - Add the staging and production deployment address row to `## Sensitive Information Reference`, among the Moodle-only rows.
   - Add a `**Since: W5**` paragraph: the addresses are Moodle only, `docs/deployment.md` carries a placeholder, a `QRT-nn`'s `**Runs at:**` names the staging deployment with a placeholder or environment variable, and the weekly public report points at the Moodle submission rather than naming the address.

3. `requirements/definition-of-done-requirements.md`
   - Rewrite the `**Since: W5**` pull request rule to name `actionlint` and the applicable product-code CI checks, without restating the five checks.
   - Add the item to the full example's `## Pull Request` list.

4. Verify and leave unchanged: `architecture-requirements.md` (`## Container View` is the last required view, no Week 5 forward reference) and `adr-requirements.md` (`**Addresses:**` lists only `FR-nnn` and `QR-nn`); confirm no `FEAT-nn` family or feature index is added and no `assignments/`, `guides/`, router, or decision log is touched.

5. Run `pnpm run format:markdown`, then `format:markdown:check`, `lint:markdown`, `test:markdown-format`, `test:markdown-rules`, `check:lectures`, and `check:links`; record the results and the decisions in the implementation notes, then close the task.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
## Implementation Notes

Implemented the three requirements files TASK-151.02 owns, per `course/plans/a5-plan.md`'s `## Design Decisions` (continuous integration, the environments, `docs/deployment.md` is not `docs/setup.md`, the deployment, the QA evidence does not name the address) and its `## Changes To The Requirements`.

**Changes**
- `requirements/repository-requirements.md`
  - `## Continuous Integration`: the single `**Since: W5**` rule 8 is now rules 8–12. Rule 8 adds `actionlint` over `.github/workflows/` on pull requests and on `main`, pinned. Rule 9 requires the product-code CI with a named step for each applicable check among linting, formatting, type checking, build, and automated tests, on pull requests and on `main`, pinned. Rule 10 makes a check that does not apply recorded as not applicable with its reason, rather than silently skipped. Rule 11 requires at least one automated test for each critical module the testability requirement names, run from a clean checkout. Rule 12 stops the continuous integration at the build and the tests, with no deployment job, and links the manual deployment.
  - `## Environments And Deployment` is new after `## Continuous Integration` and carries its ToC entry: the four environments and what each is; the university VM from the portal, recreated, with the team's own password and SSH from a university-network machine; the campus member who deploys and runs the `deployed` test; the customer's IPv4 access with no domain name and the course's meaning of "live accessible"; staging and production as separate deployments on separate ports with separate configuration and secrets; the manual deploy of the same commit to staging and then production; post-deploy verification of the core task and the rollback; `docs/deployment.md` as the runbook that links `docs/setup.md` and repeats none of it; no real address, with the placeholder and environment-variable form; and the VM's configuration and secrets outside the repository, with `.env.example` carrying the shape.
- `requirements/visibility-requirements.md`: the staging and production deployment address row in `## Sensitive Information Reference`, and a `**Since: W5**` paragraph that sends the addresses to Moodle only, with the placeholder in `docs/deployment.md`, the placeholder or environment variable in a `QRT-nn`'s `**Runs at:**`, and the weekly public report pointing at the Moodle submission for the address.
- `requirements/definition-of-done-requirements.md`: the `**Since: W5**` pull request rule names `actionlint` and the applicable product-code CI checks without restating the five, and the full example's `## Pull Request` list gains the item.

**Boundaries kept**
- `requirements/architecture-requirements.md` and `requirements/adr-requirements.md` are untouched, and `git status` confirms it. `### Container View` still says the container view is the last view the document gains, neither file carries a `**Since: W5**` marker or a component or sequence view requirement, and `**Addresses:**` still lists only `FR-nnn` and `QR-nn`.
- One owner each: the environment and deployment mechanics live in `repository-requirements.md`, the address visibility in `visibility-requirements.md`, and the pull request check item in `definition-of-done-requirements.md`. The `QRT-nn` levels and the environments they run in stay in `quality-requirements-requirements.md` and are linked from the environments table rather than restated; the general secrets rule stays in `## Configuration And Sensitive Information`; the release claim stays in `releases-requirements.md`; the deployed instance at the Sprint Review stays in `customer-meetings-requirements.md`.
- No requirements file is added, every added rule is `**Since: W5**` and numbered continuously in its section, no `FEAT-nn` family, feature index, or `docs/features.md` requirement is added, and `assignments/`, `guides/`, the routers, `course/syllabus.md`, `TODO.md`, and the decision logs are untouched.

**Validation**
- `pnpm run format:markdown`: reformatted `requirements/repository-requirements.md`; `pnpm run format:markdown:check` passes.
- `pnpm run lint:markdown` passes.
- `pnpm run test:markdown-format` and `pnpm run test:markdown-rules`: 34 tests each, pass.
- `pnpm run check:lectures`: 5 decks match their sources with Typst 0.15.1, pass.
- `pnpm run check:links`: 2013 links, 2007 OK, 2 excluded, 1 redirect, 0 errors, and 4 timeouts, all on `https://iso25000.com/en/iso-25000-standards/iso-25010`, in `course/plans/a4-plan.md`, `course/plans/a5-plan.md`, and `requirements/quality-requirements-requirements.md`. None of those files is edited here, and the host is unreachable from this environment: DNS resolves to `198.57.150.143`, `curl` times out after 70 s, and `web_fetch` fails, while the previous task's run on this machine passed at 12:46. `lychee --offline --include-fragments .` passes over the repository with 0 errors, and the three changed files pass `lychee --offline --include-fragments` with 0 errors, so every added path and heading anchor resolves. DoD #6 is left unchecked: the only failure is the external timeout, not a link this change introduces.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
## Summary

Land the Week 5 continuous-integration, environment, deployment, and visibility rules in the three requirements files `course/plans/a5-plan.md` gives them, each with one owner and every added rule marked `**Since: W5**`.

## Changes

- `requirements/repository-requirements.md`: the W5 CI block is now rules 8–12 — `actionlint` over `.github/workflows/`; the five product-code checks named separately (linting, formatting, type checking, build, automated tests), each required when it applies to the stack; a not-applicable record with its reason; at least one automated test for each critical module the testability requirement names, from a clean checkout; pinned actions; and no deployment job. A new `## Environments And Deployment` section, with its ToC entry, owns the four environments, the university VM and its portal and SSH access, the campus member who deploys and runs the `deployed` test, the IPv4-only production access with no domain name, staging and production as separate deployments, the manual deploy, the post-deploy verification and rollback, `docs/deployment.md` versus `docs/setup.md`, the placeholder address rule, and the secrets rule.
- `requirements/visibility-requirements.md`: the staging and production deployment address row in `## Sensitive Information Reference`, and a `**Since: W5**` paragraph sending the addresses to Moodle only, with the placeholder in `docs/deployment.md`, the placeholder or environment variable in a `QRT-nn`'s `**Runs at:**`, and the public report pointing at the Moodle submission.
- `requirements/definition-of-done-requirements.md`: the `**Since: W5**` pull request item names `actionlint` and the applicable product-code CI checks, and the full example's `## Pull Request` list gains it.

## Boundaries

`requirements/architecture-requirements.md` and `requirements/adr-requirements.md` are untouched: the container view is still the last required view, no Week 5 forward reference exists, and `**Addresses:**` still lists only `FR-nnn` and `QR-nn`. No `FEAT-nn` family, feature index, or `docs/features.md` requirement is added; `assignments/`, `guides/`, the routers, and the decision logs are untouched.

## Validation

`format:markdown:check`, `lint:markdown`, `test:markdown-format` (34 tests), `test:markdown-rules` (34 tests), and `check:lectures` (5 decks, Typst 0.15.1) pass. `check:links` reports 0 errors with 2007 links OK, and 4 timeouts on the external `https://iso25000.com/iso-25000-standards/iso-25010` URL in three files this change does not touch; the host is unreachable from this environment (DNS resolves, TCP connections time out), and `lychee --offline --include-fragments` passes over the repository with 0 errors.

## Follow-up

Re-run `pnpm run check:links` when `iso25000.com` is reachable; no link this change adds is broken.
<!-- SECTION:FINAL_SUMMARY:END -->
