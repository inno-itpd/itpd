# Configuration Management Requirements

These requirements define the configuration a project depends on: the plan that inventories it, the items and their fields, the connections between them, the goal-based evaluation that judges it, the first change that comes out of that review, and what of it may be published.
A **configuration** is the files, settings, and processes that produce, check, store, and deliver the repository's artifacts and that an agent reads to find them, per [Artifact Concepts And Terminology](general-requirements.md#artifact-concepts-and-terminology), and how the `CFG-nn` identifier is issued and cited is in [Identifier Rules](general-requirements.md#identifier-rules).
The criteria are the course's own rules: [Repository Requirements](repository-requirements.md) for the delivery, [Agent Instructions Requirements](agent-instructions-requirements.md) for the team's `AGENTS.md`, [General Requirements](general-requirements.md) for the identifiers and the locations, [Pull Request Requirements](pull-requests-requirements.md) and [Release Requirements](releases-requirements.md) for the release, and [Weekly Report Requirements](weekly-report-requirements.md) for the report.
This file links them rather than restating them, because a second copy of a rule goes stale and the stale one is believed.
[Guide: Configuration Management](../guides/configuration-management.md) is the method.

<h2>Table of contents</h2>

- [Where The Configuration Plan And The Review Live](#where-the-configuration-plan-and-the-review-live)
- [The Configuration Items](#the-configuration-items)
- [The Connections](#the-connections)
- [The Evaluation](#the-evaluation)
- [The Recommendation](#the-recommendation)
- [The Public Review](#the-public-review)
- [Full Example](#full-example)

## Where The Configuration Plan And The Review Live

**Since: W8**

The configuration was supplied by the course and built in the weeks before this one, so the week judges what is already there rather than designing it again.
The plan is maintained documentation and the evaluation is that week's evidence, per [Where Artifacts Live In The Repository](general-requirements.md#where-artifacts-live-in-the-repository).

**Required**

1. The configuration plan is `docs/configuration-plan.md`.
   It is the maintained inventory of the configuration: what the items are, what each is for, how each is identified and owned, what each reads and what reads it, and where each lives.
   It documents the configuration as it is and is not a plan of changes, and it schedules none.
   It stays current until the course ends, and it is the file a reader or an agent opens to find the configuration.
2. The configuration review's evidence is `reports/week-NN/cm-evaluation.md`, written in the week the review is held.
   For Assignment 8 that is `reports/week-08/`.
   The evaluation is that week's judgement, and it is not maintained.
3. `docs/configuration-plan.md` carries `**Reviewed:**` under its `#` heading: one date, the day the plan was last reviewed.
   The date advances when the plan is reviewed again, and a plan whose inventory changed without a review keeps its date.
4. A **baseline** is the identified, frozen state of the configuration at a point in time.
   The evaluation's `**Baseline:**` is the tag or commit it judged, and it is frozen, so a later week can tell what state the goal sections describe and how it differs from the plan's current state.
5. The configuration plan is updated in the same pull request when the change alters what it records.
   A settings change that leaves the configuration plan accurate needs no update, and a settings change that alters what it records is recorded in the pull request that closes the task, because a plan that describes last month's repository is worse than none: it is believed.

## The Configuration Items

**Since: W8**

A **configuration item** is one maintained file, setting, or process the project depends on, and a `CFG-nn` is one item.
An item the team cannot find, open, or read is still an item; a defect in the product's behaviour is not, because it is product work rather than configuration.

**Required**

1. An item is a maintained file, a setting, a process, or a dependency the project depends on to be built, checked, delivered, or understood.
   The maintained documentation in `docs/`, the entry points an agent reads, the deployment and its secrets, and the process that produces the weekly report are all items.
   A particular week's report is an instance of its process, not an item of its own, and an application endpoint is product behaviour rather than an item; a defect or a security weakness in one is a risk or a task issue, per [Risk Requirements](risks-requirements.md).
2. A set of files is one item at its index or entry point, such as the functional requirements index or the architecture `README.md`.
   Its `**Where:**` names that path, and the item does not list every file the set holds.
3. The plan groups its items into these five groups, and each item belongs to exactly one of them:

   | Group                       | What it covers                                                                                                                                                                                           | Judged against                                                                                                                                                                                                                                                                                                                                                          |
   | --------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
   | Source control and release  | The branches, the reviews, the tags, the changelog, and the process that cuts a release                                                                                                                  | [Branch Protection](repository-requirements.md#branch-protection), [Pull Request Requirements](pull-requests-requirements.md), and [Releases](releases-requirements.md)                                                                                                                                                                                                 |
   | Checks                      | The link check, the Markdown check, `actionlint`, and the product's continuous integration                                                                                                               | [Link Checking](repository-requirements.md#link-checking), [Pinning Third-Party Actions](repository-requirements.md#pinning-third-party-actions), and [Continuous Integration](repository-requirements.md#continuous-integration)                                                                                                                                       |
   | Environments and secrets    | The four environments, the deployment runbook, the configuration shape, and the secrets                                                                                                                  | [Environments And Deployment](repository-requirements.md#environments-and-deployment), [Configuration And Sensitive Information](repository-requirements.md#configuration-and-sensitive-information), and [Sensitive-Data Incident Response](repository-requirements.md#sensitive-data-incident-response)                                                               |
   | Dependencies and builds     | The pinned actions, the lockfile, the dependency updates, the large-file rule, and the reproducible build                                                                                                | [Pinning Third-Party Actions](repository-requirements.md#pinning-third-party-actions), [Contributing](repository-requirements.md#contributing), [Setup And Run Instructions](repository-requirements.md#setup-and-run-instructions), and [Configuration And Sensitive Information](repository-requirements.md#configuration-and-sensitive-information)                  |
   | Agent context and artifacts | The team's `AGENTS.md` and `CONTRIBUTING.md`, the course's `SKILL.md`, the identifiers, the links, the maintained documentation's locations and indexes, and the process that produces the weekly report | [Agent Instructions Requirements](agent-instructions-requirements.md), [Contributing](repository-requirements.md#contributing), [Identifier Rules](general-requirements.md#identifier-rules), [Where Artifacts Live In The Repository](general-requirements.md#where-artifacts-live-in-the-repository), and [Weekly Report Requirements](weekly-report-requirements.md) |

   The fifth group is why the review is whole-repository: the delivery the customer reaches and the context an agent reads are judged together, because a configuration the agent cannot find is a configuration the next change will contradict.

4. The course materials are an upstream item: the team installs the skill and wires it in, judges it, and does not edit it, per [The Course Materials As An Agent Skill](repository-requirements.md#the-course-materials-as-an-agent-skill).
   A proposed improvement is in the team's own repository, such as a shorter `AGENTS.md` or a repository map that points at the skill's router.
5. The plan carries at least 8 `Active` items, with at least one in each of the five groups.
6. A `CFG-nn` is two digits, repository-wide, and its section is `### CFG-01` under its group.
   The heading is the identifier alone and the first line names the item, so the identifier and the name are both explicit, per [Identifier Rules](general-requirements.md#identifier-rules).
7. An item carries these fields, in this order, as a bulleted list, per [Identifier Rules](general-requirements.md#identifier-rules):

   | Field                       | What it says                                                                                                                                                                                                                                                       |
   | --------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
   | `**Status:**`               | `Active` or `Dropped`                                                                                                                                                                                                                                              |
   | `**Type:**`                 | A short phrase saying what kind of thing it is, such as `document`, `workflow`, `CI pipeline`, `setting`, `dependency`, `skill`, or `process`                                                                                                                      |
   | `**Purpose:**`              | A short paragraph saying what it is for and what breaks without it                                                                                                                                                                                                 |
   | `**Owner:**`                | The person or role responsible for keeping it true                                                                                                                                                                                                                 |
   | `**Where:**`                | The file path, or the settings page in words                                                                                                                                                                                                                       |
   | `**Connections:**`          | Its incident edges, each with its kind and what breaks when it does, per [The Connections](#the-connections)                                                                                                                                                       |
   | `**What good looks like:**` | A short paragraph stating the target the item must meet and linking the rule it must meet by its URL in the course repository, so the link resolves from the repository and from an issue, per [What It States](agent-instructions-requirements.md#what-it-states) |
   | `**Dropped:**`              | Only on a dropped item: the date and the reason it was removed                                                                                                                                                                                                     |

8. The item records no `**Version:**` and the plan records no `**Baseline:**`, because the repository's history and the evaluation's baseline identify the state, and a copy of them in the plan is a second copy to keep true.
9. A dropped item stays where it is, in its group, with `**Status:**` `Dropped` and its `**Dropped:**` date and reason, so no identifier is reused and a reader sees the history in place.
   The item is neither counted nor judged, and the plan carries no `## Dropped Items` section.
10. A configuration the team does not have is named in words in the evaluation's goal sections, has no `CFG-nn`, and receives one only once it exists.
    Naming it in the plan as an item the team then invents would make the inventory describe a repository that is not there.

## The Connections

**Since: W8**

A configuration item is not read alone: a workflow enforces a setting, an index cites a document, and a runbook names a secret.
The connections are how a reader or an agent follows one item to the next, and they are the reason the plan is a graph of edges rather than a list of files.

**Required**

1. Each item's `**Connections:**` field is the single record of its edges.
   The plan carries no connections table, so there is one place to maintain.
2. Each edge names the other end, its kind, and what breaks when it breaks.
   The kind is one of these:

   | Kind       | What the edge says                                                                      |
   | ---------- | --------------------------------------------------------------------------------------- |
   | `reads`    | The item consumes what the other end states or produces                                 |
   | `enforces` | The item makes the other end hold, such as branch protection requiring a check          |
   | `produces` | The item is what the other end reads or publishes                                       |
   | `triggers` | The item starts the other end, such as a release process pushing a tag                  |
   | `cites`    | The item points at the other end as the owner of a fact, such as an index naming a file |

3. The field names the external item when the other end is outside the configuration plan, such as a workflow, a pinned action, the university VM, or the course's `SKILL.md`.
   An edge to an item the plan carries links that item's `CFG-nn` section.
4. The field states the concrete failure, not the risk in general: a workflow renamed without the branch protection rule renamed leaves `main` waiting for a check that no longer reports, and a changelog section written after the tag is pushed leaves a release whose note the changelog contradicts.
5. The evaluation's `**Today:**` and `**A more convenient way:**` cite the field when an edge supports or blocks a change, so a proposal that removes an item names the edges it cuts.

## The Evaluation

**Since: W8**

The evaluation is the week's judgement of the configuration, and it judges by goal rather than by item: the artifacts are the means, so the question is whether the team's set of artifacts is the most convenient way to achieve what it is for.
A review that only reports missing items pushes a team to add configuration; the course wants a team that can take configuration away when the cost says so, and a team that finds the configuration right-sized says why.

**Required**

1. The evaluation is `reports/week-NN/cm-evaluation.md`, headed `# CM Evaluation`, and it carries `**Baseline:**`, `**Reviewed:**`, `## Method`, one `##` section per local goal, `## What We Could Not Judge`, and `## The First Change`, in that order.
2. `## Method` is one paragraph saying who judged, on what date, against which baseline, in what order, and what was out of scope.
   It says that the team wrote a local goal for each artifact family and grouped the artifacts by the goal they serve.
3. A **local goal** is a purpose an artifact set serves, such as deciding what the product should be, specifying what it must do, verifying it, planning and tracking it, learning from its users, communicating it, or keeping the context trustworthy for a reader or an agent.
   The team chooses its own goals and explains each in its own words; the goal is local, not the project's goal, and no minimum number of goals applies.
4. Each goal section carries these fields, in this order, as a bulleted list:

   | Field                        | What it says                                                                                                                                                                                                                        |
   | ---------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
   | `**Today:**`                 | The artifacts that achieve the goal now, each linked to the plan's `CFG-nn` section, and named in words when an artifact is not in the plan                                                                                         |
   | `**A more convenient way:**` | The proposed set and the concrete change, using `Keep`, `Merge`, `Replace`, `Cut`, or `Add`                                                                                                                                         |
   | `**Why:**`                   | The goal is still achieved and the change removes a named mechanism, such as duplication, a manual step, a readerless file, staleness, an unverifiable check, or a context cost, with the evidence from the team's own use          |
   | `**Tradeoffs:**`             | What the change gives up, such as traceability, customer visibility, one source of truth, the agent's context, the review surface, or a learning step, and why the gain is worth the loss or why the team would not make the change |

5. The tradeoff is required: a replacement that hides its loss is the review the course does not want, and a team that finds the change not worth its tradeoff records that and keeps the artifact.
   A change that loses the goal it claims to keep is not a more convenient way.
6. The evaluation does not judge whether an item meets its `**What good looks like:**`, because the criteria are mandatory and an item that does not conform is fixed rather than debated.
   It judges whether the set of artifacts is the most convenient way to achieve the goal.
7. A change never removes an item the criteria require: a required item is fixed or simplified, and only configuration beyond the criteria is cut.
8. A goal section's evidence is a link to a file or a CI run, a sanitized screenshot, or a quoted command output.
   A settings page is named in words and not linked, because it needs authentication, and a screenshot of one is sanitized per [Screenshot Evidence](visibility-requirements.md#screenshot-evidence).
9. An item the team could not judge is the `## What We Could Not Judge` note, with the reason and the risk it carries, so the item is accounted for without a verdict.
10. The evaluation carries no change table, no per-item verdict, no cost table, and no graph paragraph: the goal sections carry the changes and `## The First Change` carries the headline.
11. `## The First Change` is one paragraph naming the one change the team would make first, what it keeps, what it removes, and its main tradeoff.
    The goal sections are not an ordered backlog, and the first change is the team's answer to where it would start rather than the largest change.

## The Recommendation

**Since: W8**

The goal sections and the first change are the evaluation's recommendation.
The recommendation is a judgement rather than a plan: it schedules no work and adds nothing to a backlog.
No separate improvement plan is required, because a plan beside an evaluation is a second document to keep true, and the evaluation's goal sections already say what would change and why.

**Required**

1. The goal sections and the first change are the recommendation, and the evaluation is the review's deliverable.
2. No implementation is required in the review week, and a change the team enacts is extra evidence rather than a requirement.
   A team that runs the review and the usability sessions in the same week is not penalised for having no time to enact a change.
3. An optional change is the same work under the existing rules: a task issue, a pull request, the configuration plan updated in the pull request when the change alters what it records, the green checks, and the release when the change is product-visible, per [Releases](planning-requirements.md#releases).
4. The evaluation schedules no work: the first change and the other changes are a recommendation, not a backlog, and no task issue, sprint item, or implementation is required.
   The evaluation gives no order beyond the first change.

## The Public Review

**Since: W8**

The configuration plan and the evaluation are public, because the product repository is, and they are written from the start as files a reader outside the team may open.
A review that names a private address or a credential is a leak with a heading, and the leak is not the reviewer's honesty but its packaging.

**Required**

1. The configuration plan and the evaluation carry no secret value, no private deployment or dashboard address, and no credential.
2. A goal section that names a failing item and its consequence stays public in words, without the value or the step-by-step that would let a reader use it: the property fails, the address it fails at does not appear.
3. The configuration plan's `**Where:**` for a private setting names the setting in words rather than linking it, and the address stays in the Moodle submission, per [Sensitive Information Reference](visibility-requirements.md#sensitive-information-reference).
4. A leaked credential follows [Sensitive-Data Incident Response](repository-requirements.md#sensitive-data-incident-response): revoke or rotate it, tell the instructor, remove it from the files and the history, and write the account privately.
5. An application endpoint is product behaviour, so a security defect in one is a risk or a task issue rather than a `CFG-nn`, and the review's improvement is in the team's repository rather than in the course materials.

## Full Example

The meeting-booking example's configuration plan and evaluation, abridged: the plan's heading date, the five groups with eight `Active` items and one `Dropped` in place, one item in full, and the evaluation's four goal sections, its note, and its first change.

From `docs/configuration-plan.md`:

```markdown
# Configuration plan

**Reviewed:** 2026-11-19

The configuration this product is built, checked, delivered, and understood by.
Each item is one `CFG-nn`, grouped by what it is for, and each connection names what breaks when the edge does.

## Source Control And Release

### CFG-01

The `main` branch protection and the pull request flow it enforces.

- **Status:** Active
- **Type:** setting
- **Purpose:** every change reaches `main` through a pull request that another member approved, so a broken check or a workflow edit is seen before it lands and the history keeps the reason for each change.
  Without it, one member can push a workflow edit that no one reviews until the gate stops running.
- **Owner:** @ana
- **Where:** the repository's branch protection settings for `main`.
- **Connections:**
  - `enforces` [`CFG-03`](#cfg-03) and [`CFG-04`](#cfg-04), the required checks: a workflow renamed without the required status renamed leaves `main` waiting for a check that never reports, and nothing merges until someone edits the setting.
  - `reads` [`CFG-08`](#cfg-08), the review rule in the team's `AGENTS.md`: a change of reviewer count is a change in both places.
- **What good looks like:** every change to `main` is a merged pull request with one approval from another member, and no member approves their own, per [Branch Protection](https://github.com/inno-itpd/itpd/blob/main/requirements/repository-requirements.md#branch-protection).

### CFG-02

`CHANGELOG.md` and the release process that fills it.

- **Status:** Active
- **Type:** process
- **Purpose:** whoever deploys a release learns what changed and what to do about it.
  Without it, a tag is a commit with no reason and an upgrade is a guess.
- **Owner:** @bo
- **Where:** `CHANGELOG.md` and the release section of `CONTRIBUTING.md`.
- **Connections:**
  - `produces` the release tags: a tag pushed before the changelog's released section is merged leaves a release whose note the changelog contradicts.
  - `triggers` the release pull request, which [`CFG-01`](#cfg-01) holds open until the section is written.
- **What good looks like:** the released section is dated, linked to its release, and the next empty `[Unreleased]` is opened in the same pull request, per [The Changelog](https://github.com/inno-itpd/itpd/blob/main/requirements/releases-requirements.md#the-changelog).

## Checks

### CFG-03

The Markdown check, `.github/workflows/markdown.yml`.

- **Status:** Active
- **Type:** workflow
- **Purpose:** malformed prose fails before it is merged.
  Without it, a broken table reaches a submission and the reader sees it.
- **Owner:** @cyd
- **Where:** `.github/workflows/markdown.yml`.
- **Connections:**
  - `reads` `.markdownlint-cli2.jsonc`, which skips the task tracker and the course materials; a skip added without its reason leaves prose no check covers.
  - `enforces` [`CFG-08`](#cfg-08), because the repository layout it checks against is written there.
- **What good looks like:** it runs on pull requests and on `main`, and the latest `main` run is green before a submission, per [Continuous Integration](https://github.com/inno-itpd/itpd/blob/main/requirements/repository-requirements.md#continuous-integration).

### CFG-04

The link check, `.github/workflows/lychee.yml` and `lychee.toml`.

- **Status:** Active
- **Type:** workflow
- **Purpose:** a report whose links are broken is unusable, so the links are checked before the reader follows one.
  Without it, the private repository link and a moved anchor are found by the customer.
- **Owner:** @cyd
- **Where:** `.github/workflows/lychee.yml` and `lychee.toml`.
- **Connections:**
  - `reads` `lychee.toml`, whose exclusions each carry their reason; an exclusion without one hides the broken link it was added for.
  - `cites` [`CFG-01`](#cfg-01), which holds the merge until it passes.
- **What good looks like:** it runs on pull requests and on `main`, every exclusion states why in the file, and the local run and CI share one configuration, per [Link Checking](https://github.com/inno-itpd/itpd/blob/main/requirements/repository-requirements.md#link-checking).

## Environments And Secrets

### CFG-05

The deployment runbook, `docs/deployment.md`.

- **Status:** Active
- **Type:** document
- **Purpose:** a member on campus can reach the VM and redeploy the commit staging passed, without the member who deployed last.
  Without it, the deployment exists in one person's shell history.
- **Owner:** @bo
- **Where:** `docs/deployment.md`.
- **Connections:**
  - `reads` [`CFG-06`](#cfg-06), the configuration shape the deployment sets: a variable missing from the shape fails on staging rather than at the deploy.
  - `produces` the staging and production deployments: a port changed on the VM and not in the runbook leaves a deployment nobody can reach.
  - `cites` [`CFG-01`](#cfg-01), because the commit it deploys is the one the pull request approved.
- **What good looks like:** the four environments, the manual deploy from the university network, the rollback, and the real values in Moodle and nowhere else, per [Environments And Deployment](https://github.com/inno-itpd/itpd/blob/main/requirements/repository-requirements.md#environments-and-deployment).

### CFG-06

The configuration shape, `.env.example`.

- **Status:** Active
- **Type:** setting
- **Purpose:** a new member and the deployment learn which variables the product needs and which are secret.
  Without it, a variable is discovered by a crash on staging.
- **Owner:** @ana
- **Where:** `.env.example`, with `.env` ignored.
- **Connections:**
  - `produces` the deployment's configuration, which [`CFG-05`](#cfg-05) sets on the VM.
  - `cites` the secrets rule in [Configuration And Sensitive Information](https://github.com/inno-itpd/itpd/blob/main/requirements/repository-requirements.md#configuration-and-sensitive-information): a value in the example makes the file a credential, and a leaked one follows the incident response.
- **What good looks like:** the example carries every variable with a placeholder value, and no real value appears in it, per [Configuration And Sensitive Information](https://github.com/inno-itpd/itpd/blob/main/requirements/repository-requirements.md#configuration-and-sensitive-information).

## Dependencies And Builds

### CFG-07

The pinned actions and the Dependabot configuration, `.github/dependabot.yml`.

- **Status:** Active
- **Type:** dependency
- **Purpose:** a third-party action runs with the repository's token, so it runs at a commit the team chose and is moved only by a reviewed pull request.
  Without it, a retagged action runs code the team never read.
- **Owner:** @bo
- **Where:** `.github/dependabot.yml` and the `uses:` lines of every workflow.
- **Connections:**
  - `produces` every action pin in [`CFG-03`](#cfg-03) and [`CFG-04`](#cfg-04): a pin added without the ecosystem entry is never moved, and one moved without a review is a silent upgrade.
- **What good looks like:** every third-party action is pinned to a commit and the `github-actions` ecosystem keeps the pins moving through reviewed pull requests, per [Pinning Third-Party Actions](https://github.com/inno-itpd/itpd/blob/main/requirements/repository-requirements.md#pinning-third-party-actions).

## Agent Context And Artifacts

### CFG-08

The team's `AGENTS.md`.

- **Status:** Active
- **Type:** document
- **Purpose:** an agent that has just cloned the repository learns the layout, the checks, the conventions, and the files it must not edit, without reading the code to infer them.
  Without it, every agent session rediscovers the repository, and the sessions disagree.
- **Owner:** @cyd
- **Where:** `AGENTS.md`, in the repository root.
- **Connections:**
  - `cites` the course's [`SKILL.md`](https://github.com/inno-itpd/itpd/blob/main/SKILL.md), the router into the requirements.
  - `cites` [`CFG-01`](#cfg-01) and [`CFG-07`](#cfg-07) for the review rule and the pin rule it states.
  - `reads` `docs/configuration-plan.md`, this plan, so an agent starting from the root finds the inventory.
- **What good looks like:** it states the layout, the checks, the conventions, and the off-limits files, each in its own section, and links the course's `SKILL.md` once by its URL, per [What It States](https://github.com/inno-itpd/itpd/blob/main/requirements/agent-instructions-requirements.md#what-it-states).

### CFG-09

The local task tracker, `backlog/` and `TODO.md`.

- **Status:** Dropped
- **Type:** process
- **Purpose:** it kept the team's tasks in the repository before the GitHub project existed.
- **Owner:** @ana
- **Where:** the `backlog/` directory and `TODO.md` that held it.
- **Connections:**
  - `cites` the task issue form it opened, which the team also stopped using.
- **What good looks like:** it was excluded from the Markdown check, per [A Task Tracker In The Repository](https://github.com/inno-itpd/itpd/blob/main/requirements/local-task-tracking-requirements.md#a-task-tracker-in-the-repository).
- **Dropped:** 2026-10-29, per [`DEC-011`](decisions.md#dec-011): the team moved its candidates to the GitHub project in Week 4, and a second tracker listed work that had already closed.
```

From `reports/week-08/cm-evaluation.md`:

```markdown
# CM Evaluation

- **Baseline:** [v0.7.0](https://github.com/<organization>/<repo>/releases/tag/v0.7.0), the release cut at the end of `SPRINT-07`.
- **Reviewed:** 2026-11-19.

## Method

@ana and @cyd reviewed the repository on 19 November against `v0.7.0`, in four passes: the artifacts were grouped by the goal each serves, each group was read for what it costs to keep true, each group was checked against the rules its `**What good looks like:**` links, and the changes were proposed and traded off in the group that would make them.
The product's behaviour, the results of the quality requirement tests that were already passing, and the university's own VM settings were out of scope.

## Deciding What The Product Should Be

- **Today:** the research under `docs/research/`, the value proposition in `docs/product-vision.md`, and the goals in `docs/threshold-of-success.md`, none of which the plan carries because none of them changes without a customer decision; and `DEC-001` to `DEC-014` in `docs/decisions.md`.
- **A more convenient way:** `Keep` the chain as it is.
  The value proposition, the threshold's goals, and the decision that moved a bar are read as one trail, and the Week 9 reflection quotes the threshold's failure statements directly.
- **Why:** the team changed three goals in the course, and each change cites the decision that moved it, so the chain has been used rather than filed: the bar moved twice, and both times the record said who moved it and why.
- **Tradeoffs:** the threshold's fourteen failure statements are long and one reader outside the course will not read them, but the reflection and the customer's review both depend on them, so the length is the cost of the evidence.

## Specifying What It Must Do

- **Today:** the functional requirements index, the architecture document and its ADR index, and the glossary, none of which the plan carries; and `docs/product-backlog.md`, a hand-written mirror of the GitHub project.
- **A more convenient way:** `Merge` the backlog mirror into the GitHub project.
  The mirror was last updated in Week 5 and now lists three stories that closed in `SPRINT-06`; the project already shows the milestone, `Responsible`, `Accountable`, and the assignees.
- **Why:** the mirror is a second copy that one member updates, and it has been wrong for three sprints, so it has already cost a reader more than it saved; the project is the schedule and the issues are the stories.
- **Tradeoffs:** a reader of the repository snapshot loses the backlog view, because the project needs a login and is not in the snapshot.
  The replacement is a sentence in [`CFG-08`](../../docs/configuration-plan.md#cfg-08) saying where the backlog lives and one saved view, which is less than a copy and more than a broken one.

## Verifying It

- **Today:** [`CFG-03`](../../docs/configuration-plan.md#cfg-03), the Markdown check; [`CFG-04`](../../docs/configuration-plan.md#cfg-04), the link check; the quality requirement tests and the testing plan; the two analytics and two observability dashboards; and the `UT-01` results.
- **A more convenient way:** `Merge` the Markdown check and the link check into one workflow with two jobs, `markdown` and `links`.
  The two files repeat the same checkout, the same permissions, and the same action pin, so an action bump is two pull requests and one of them is forgotten.
  The team also proposes to `Add` a seed script: resetting staging to the test data is five SQL statements in the runbook, and nobody resets it without asking @bo.
  The script has no `CFG-nn` yet.
- **Why:** the checks fail for different reasons and are read by different members, so two jobs in one file report the same signal with one setup and one pin.
  The seed is the same failure one step further out: a step that lives in a person's memory is not configuration, and the next test would need it again.
- **Tradeoffs:** one workflow file means a change to either check is a change to a file that both depend on, and a broken YAML stops both at once; the seed script is one more file to keep true.
  The team accepts both because the duplication is real today and the seed is missing today.

## Keeping The Context Trustworthy

- **Today:** [`CFG-08`](../../docs/configuration-plan.md#cfg-08), the team's `AGENTS.md`; `CONTRIBUTING.md`; and the course's [`SKILL.md`](https://github.com/inno-itpd/itpd/blob/main/SKILL.md), linked from `AGENTS.md`.
- **A more convenient way:** `Cut` the duplicated command list from `AGENTS.md`.
  The checks section repeats the five commands that `CONTRIBUTING.md` already gives, and the two copies disagree on the link check's flags.
- **Why:** the `AGENTS.md` already sends an agent to `CONTRIBUTING.md` for the conventions, so the second copy removes nothing a reader needs and adds a third place to update when a check changes.
  The evidence is the flag that is wrong in one copy and right in the other: a member ran the link check without `--include-fragments` and reported a clean run that CI failed.
- **Tradeoffs:** an agent must follow one link before it can run a check, and a broken link costs more than a stale sentence.
  The team accepts the link, because `CONTRIBUTING.md` is a shorter read than the duplication costs and the `AGENTS.md` already depends on it.

## What We Could Not Judge

The university VM's snapshot and backup policy.
The runbook says how to redeploy the commit staging passed, and the VM is the university's, so the team cannot see whether a snapshot exists or when it is taken.
The risk is that a lost VM costs a redeploy from a linked repository during the week the deck is due, which is why the repository stays the only source of the deployment and no state is kept on the VM that a script cannot recreate.

## The First Change

The team would make the check merge first: it is an afternoon's work, it keeps the two checks and their separate signals, it removes one duplicated action pin and one setup block from two files, and it is the change the team could finish and review first while the others stay as proposals.
Its main tradeoff is that a broken YAML stops both checks at once, which the team accepts because the two jobs fail independently once the file parses.
```
