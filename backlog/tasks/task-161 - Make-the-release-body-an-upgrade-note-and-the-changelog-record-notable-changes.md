---
id: TASK-161
title: Make the release body an upgrade note and the changelog record notable changes
status: Done
assignee: []
created_date: '2026-11-02 14:07'
updated_date: '2026-11-02 14:16'
labels: []
dependencies: []
references:
  - requirements/releases-requirements.md
  - guides/planning-and-tracking.md
  - assignments/assignment-5.md
  - course/decisions/a5.md
  - course/plans/a5-plan.md
  - course/syllabus.md
  - requirements/planning-requirements.md
  - AGENTS.md
  - README.md
  - SKILL.md
  - course/rules.md
  - TODO.md
priority: medium
type: docs
ordinal: 147000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
The release body is written for the course customer, but the customer's artifact is the weekly report; the person who opens a release page has an action to take on the version — the next teammate who redeploys, or a self-hoster the MIT licence permits. The body's recommended content is product-update copy (what a user can do now, what it does not do yet), so it never answers the reader's first question: does this upgrade require anything of me? The changelog's rule is narrower in the same way: it records user-visible changes only, which contradicts the mandated `Deprecated`, `Removed`, and `Security` groups and drops the configuration, migration, dependency-minimum, and security changes an operator must know. The product is MIT-licensed by rule, and `docs/setup.md` and `docs/deployment.md` already document the install, configuration, deploy, and rollback path, so the operator is a real reader, not a proxy. This task settles both: the release body becomes the upgrade note for the person already running the previous version, and the changelog records notable changes for users and operators.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 The changelog requirement uses the notable-changes test — would someone running or using the previous version have to change something, or notice a difference in behaviour, security, or compatibility? — and names the operator class (configuration, migration, raised runtime or dependency minimum, deprecation or removal, security fix, compatibility change) while keeping tests, workflows, internal refactors, tooling, and the act of deploying out.
- [x] #2 The changelog section no longer calls `CHANGELOG.md` user-facing, and its full example contains an operator-visible entry beside the user-visible ones.
- [x] #3 The release body requirement names the reader as the person who already runs the previous version and is deciding whether and how to move to this one, and requires the body to state whether the upgrade needs anything beyond deploying this version or that it does not.
- [x] #4 The `Full changelog` line remains a required last line with nothing after it, unchanged.
- [x] #5 The recommended body content covers the ordered steps with exact identifiers, the version range the note applies to, known issues and their workarounds, and one sentence on why the upgrade is worth taking; it links `CHANGELOG.md`, `docs/setup.md`, and `docs/deployment.md` rather than copying them, and keeps the release page's metadata and the course's records out.
- [x] #6 The full example's release body is an upgrade note that matches the rules, and the prose around it describes that shape.
- [x] #7 The guide's `Write The Release Body` gives the new method — reader, first question, how technical, version range, link owners — and links the requirement instead of restating its list.
- [x] #8 Assignment 5, `AGENTS.md`, `README.md`, `SKILL.md`, `course/rules.md`, `course/syllabus.md`, and `requirements/planning-requirements.md` describe the body as the operator's upgrade note, and no "user-facing release body" remains.
- [x] #9 `course/decisions/a5.md` gains the next `A5-DEC` entry recording the reader and criterion change, and the statuses of the entries it reverses name it.
- [x] #10 No student-facing Markdown outside the decision log still states the old reader or the "user-visible only" changelog rule; the design plan, decision log, completed TODO entries, and backlog records keep their historical text.
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
1. **Changelog criterion** — `requirements/releases-requirements.md#the-changelog`. Replace the user-visible criterion with the notable-changes test. The section intro says `CHANGELOG.md` is the record of notable changes for the people who use and operate the product. W3 rule 2 asks for an entry for every notable change. W5 rule 4 says the file records notable changes only: a change someone running or using the previous version would have to act on, or would notice in behaviour, security, or compatibility. It names the operator class (configuration, required migration, raised runtime or dependency minimum, deprecation or removal, security fix, compatibility change) and keeps the exclusions (a test, a workflow, an internal refactor, a tooling change, and the act of deploying are not entries; a change to how the product is deployed or configured is). The PR-over-commit rationale keeps its point but calls the changelog a curated summary for its readers rather than a user-facing one. In the full example, add an operator-visible `Changed` entry (booking confirmations now leave through the host set by `SMTP_HOST`) beside the existing entries, and update the prose above and below it so the example shows both classes.

2. **Release body rule and example** — `requirements/releases-requirements.md#cutting-a-release`. Make the body the upgrade note. The section intro says what its upgrade note carries. W5 rule 4 is rewritten: the body is the upgrade note for every release from Week 5 on, written for the person who already runs the previous version and is deciding whether and how to move to this one, and it states whether the upgrade requires anything beyond deploying this version, or that it does not; the rest of the shape is the team's. Rule 5 stays unchanged: the body ends with `[Full changelog](<absolute url>)` and nothing follows. Replace the Recommended bullets: the steps in order with exact identifiers and a link to the `docs/setup.md` or `docs/deployment.md` section that carries the procedure; the version range the note applies to when the steps are conditional; known issues and workarounds; one sentence on why the upgrade is worth taking, with the per-change list left to the changelog; no title, tag, commit, or date in the prose; no `REL-nn`, `QR-nn`, test result, or weekly-report restatement, because those records own the checks and the customer's evidence. The runbook carries placeholders and no real address, so linking it from the public body is safe. Rewrite the full example body as an upgrade note (action, version range, known issue, one-sentence why, closing link) and update the prose at line 113 to describe that shape.

3. **Guide method** — `guides/planning-and-tracking.md#write-the-release-body`. Rewrite the section for the operator. The opener names the reader as the person already running the previous version. The first sentence answers what the reader must do with the action or `No action beyond deploying this version`. The method starts from the previous tag, reads the newly released changelog section and the diffs that touched configuration, migrations, dependency manifests, and the deployment. It states how technical to be: name exact identifiers, state the consequence once, teach nothing, link the procedure. It gives the version range, known issues, and the one-sentence why. It names `CHANGELOG.md`, `docs/setup.md`, and `docs/deployment.md` as the linked owners and removes the plan and testing plan from that list, because those records are the course's and the body does not restate them. Keep the paragraph that gives the plan's `REL-nn` block its own home, the sentence that the release page already shows the title, tag, commit, and date, and the `Full changelog` paragraph. In `Pick The Number From What A User Could Observe`, add the operator's compatibility so a change that forces configuration or a migration is not a patch. Keep the headings and the TOC as they are.

4. **Assignment 5** — `assignments/assignment-5.md`. Line 54 calls the body user-facing; line 271 says the changelog is user-visible only; line 274 calls the body the customer-facing note; line 283 writes it for the customer who opens it from the week's report; lines 373 and 424 say user-facing release body. Update all five to the upgrade-note reader and the notable-changes criterion, keeping the citation and the week's minimum (the action statement, the steps when needed, the known issues, the one-sentence why, and the closing line).

5. **Routers and syllabus** — `AGENTS.md` (the requirements row and the layering row), `README.md` (line 66), `SKILL.md` (line 60), `course/rules.md` (line 84), and `course/syllabus.md` (line 201) stop calling the body user-facing and name it the release body for whoever deploys and operates the product. `requirements/planning-requirements.md` (line 158) follows. Leave each router's changelog description alone, since none states the user-visible criterion.

6. **Decision log and records** — `course/decisions/a5.md`. Add `A5-DEC-042` with Status, Reverses, Decision, Why, Alternatives considered, and Where it lands. It reverses the customer-facing reader of `A5-DEC-038`, the content recommendation of `A5-DEC-040` and `A5-DEC-041`, and the changelog clause that `A5-DEC-027` restates; it keeps the team's shape, the link-not-copy rule, and the last-line changelog link. The Decision says the body is the upgrade note, the required content is the action-or-none statement plus the closing `Full changelog` line, the recommended content is the steps with exact identifiers and links, the version range, known issues, and the one-sentence why, and the changelog records notable changes for users and operators with the notable-changes test. The Why says the reader who opens a release page has an action to take, the course customer's artifact is the weekly report, `user-visible only` contradicts the mandated `Deprecated`, `Removed`, and `Security` groups and drops the operator class, and the MIT-licensed product is documented for self-hosting. Update the statuses of `A5-DEC-027`, `A5-DEC-038`, `A5-DEC-040`, and `A5-DEC-041` to name it, and leave every Decision text historical. Update `course/plans/a5-plan.md`'s supersession note (lines 8-9) to name `A5-DEC-042` and the current reader. Update `TODO.md`'s A7 note (line 338) so it no longer says the body stays user-facing; the checked A6 TODO line (line 328) and the log's old Decision text stay as history.

7. **Sweep and validation** — Search the student-facing Markdown for `user-visible`, `user-facing release body`, `customer-facing note`, `No changes visible to a user`, and `one primary reader`; the only allowed survivors are the decision log's historical text and completed TODO entries. Run `pnpm run format:markdown`, then `format:markdown:check`, `lint:markdown`, `test:markdown-format`, `test:markdown-rules`, `check:lectures`, `check:links`, and `backlog doctor`; record the results in the implementation notes.

**Out of scope:** the SemVer requirement itself, the release title and nickname rules, the plan's `REL-nn` block content, the weekly report format, the deferred production verification and the future `Checked UATs` work, and the release process. The body requirement still starts at Week 5, because the note is a delta and `REL-03` and `REL-04` have no previous release to move from.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Implementation decisions: the changelog's criterion is now notable changes for the people who use and operate the product. The test is whether someone running or using the previous version would have to act on the change, or would notice a difference in behaviour, security, or compatibility; configuration, migration, raised runtime or dependency minimums, deprecations, removals, and security fixes are entries, while tests, workflows, refactors, tooling, and the act of deploying are not. The pull-request-template line and the PR-over-commit rationale follow, and the full example gained the `SMTP_HOST` entry so both classes show.

The release body is now the upgrade note for the person already on the previous version: it answers whether anything beyond deploying this version is required. The recommended content is the ordered steps with exact identifiers and links to `docs/setup.md` or `docs/deployment.md`, the version range, known issues and workarounds, one sentence on why, the reader's technical level, and no title, tag, commit, date, or course records. The full example body was rewritten in that register.

The planning guide's `Write The Release Body` was rewritten around the operator reader and the first question, and `Pick The Number From What A User Could Observe` now includes the operator's compatibility. Assignment 5's five places, the routers (`AGENTS.md`, `README.md`, `SKILL.md`, `course/rules.md`), `course/syllabus.md`, and `requirements/planning-requirements.md` now name the release body for whoever deploys it. `requirements/definition-of-done-requirements.md`, `guides/deployment-and-environments.md`, and Assignments 3 and 4 were aligned because they repeat the changelog criterion.

`A5-DEC-042` records the reader and criterion change and reverses the customer-facing reader of `A5-DEC-038`, the content recommendation of `A5-DEC-040` and `A5-DEC-041`, and the changelog clause of `A5-DEC-027`; their statuses name it and their Decision text stays historical. `course/plans/a5-plan.md`'s supersession note and `TODO.md`'s A7 line were updated, and the checked A6 TODO line was marked superseded.

The sweep leaves the old wording only in historical text: the decision log's Decision sections, the a5 plan's design record, the completed TODO entry, and old backlog task records. Pre-existing unstaged changes in `TODO.md`'s A6 block and `course/syllabus.md`'s Week 7 and 8 titles were left untouched, as was the untracked `course/plans/a6-plan.md`.

Validation: `pnpm run format:markdown` formatted 5 files; `format:markdown:check` exit 0; `lint:markdown` exit 0; `test:markdown-format` 34/34; `test:markdown-rules` 34/34; `check:lectures` 6 decks match their sources; `check:links` 2602 total, 2600 OK, 0 errors, 2 excluded, 1 redirect; `backlog doctor` reports no duplicate IDs, self-referential dependencies, or cycles.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Reworked the release record so the release body is the upgrade note and the changelog records notable changes. In `requirements/releases-requirements.md#the-changelog`, the user-visible criterion is replaced by the notable-changes test: a change someone running or using the previous version would have to act on, or would notice in behaviour, security, or compatibility, with configuration, migration, raised runtime or dependency minimums, deprecations, removals, and security fixes named as entries and tests, workflows, refactors, tooling, and the act of deploying kept out; the pull-request-template line and the PR-over-commit rationale follow, and the full example gained an operator-visible `SMTP_HOST` entry. In `#cutting-a-release`, the body is the upgrade note for the person who already runs the previous version, must state whether the upgrade needs action beyond deploying this version or that it does not, must close with the `Full changelog` line with nothing after it, and recommends the ordered steps with exact identifiers and links to `docs/setup.md` or `docs/deployment.md`, the version range, known issues and workarounds, one sentence on why, the reader's technical level, and no metadata or course records; the full example body was rewritten. The planning guide's method, Assignment 5's five places, the routers, `course/syllabus.md`, and `requirements/planning-requirements.md` follow; `requirements/definition-of-done-requirements.md`, the deployment guide, and Assignments 3 and 4 were aligned on the changelog criterion. `A5-DEC-042` records the reader and criterion change, and the statuses of `A5-DEC-027`, `A5-DEC-038`, `A5-DEC-040`, and `A5-DEC-041` name it; the a5 plan's supersession note and the TODO A7 line were updated, and the completed A6 line was marked superseded. Validation: `format:markdown` and its check exit 0; `lint:markdown` exit 0; `test:markdown-format` and `test:markdown-rules` 34/34 each; `check:lectures` 6 decks; `check:links` 2602 total, 2600 OK, 0 errors, 2 excluded, 1 redirect; `backlog doctor` clean. No follow-ups; the deferred production verification remains as TODO.md records it.
<!-- SECTION:FINAL_SUMMARY:END -->
