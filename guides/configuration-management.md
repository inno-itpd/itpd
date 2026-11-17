# Guide: Configuration Management

How to inventory the configuration a project depends on, judge it by the goals its artifacts serve, and record the first change the team would make, without turning the review into a backlog.

The rules are in [Configuration Management Requirements](../requirements/configuration-management-requirements.md): the plan, the items and their fields, the connections, the goal-based evaluation, the recommendation, and the public review.
The criteria are the course's own: [Repository Requirements](../requirements/repository-requirements.md) for the delivery, [Agent Instructions Requirements](../requirements/agent-instructions-requirements.md) for the team's `AGENTS.md`, [General Requirements](../requirements/general-requirements.md) for the identifiers and the locations, and [Weekly Report Requirements](../requirements/weekly-report-requirements.md) for the report.
The sprint and release method is in [Planning And Tracking](planning-and-tracking.md), the environments, secrets, and dependency method is in [Deployment And Environments](deployment-and-environments.md), and the delivered product this configuration builds is in [Quality And Architecture](quality-and-architecture.md).
This guide is the method: fixing what you judge, taking the inventory, connecting it, writing the goals, judging them, proposing the change, publishing it safely, and handing it on.

The lecture for this week is [lecture 8](../lectures/lecture-8.pdf), and its final quiz asks what the `TOS`, `VP`, `ADR`, `FR`, `RISK`, `US`, and `DEC` artifacts are for.
Write your answers down before Step 4: the quiz is the warm-up for the local goals, and a team that cannot say what an artifact is for cannot say whether it is worth its cost.

**Timebox:** about three hours for the plan and about two for the evaluation, across two sittings.
Take the inventory first and write the goal sections second, because the goals are easier to state once the artifacts are listed in front of you.

<h2>Table of contents</h2>

- [What You Produce](#what-you-produce)
- [Step 1: Set The Review Baseline And Read The Rules](#step-1-set-the-review-baseline-and-read-the-rules)
  - [Pin The Baseline Before You Read Anything](#pin-the-baseline-before-you-read-anything)
  - [Read The Rules The Items Are Judged Against](#read-the-rules-the-items-are-judged-against)
  - [Know What The Plan Owes After The Review](#know-what-the-plan-owes-after-the-review)
- [Step 2: Inventory The Configuration](#step-2-inventory-the-configuration)
  - [Walk The Five Groups](#walk-the-five-groups)
  - [Name One Item Per Index](#name-one-item-per-index)
  - [Write The Fields Before The Verdicts](#write-the-fields-before-the-verdicts)
  - [Read Each Group Against Its Target](#read-each-group-against-its-target)
- [Step 3: Connect The Items](#step-3-connect-the-items)
  - [Write The Edge In The Item, Not In A Table](#write-the-edge-in-the-item-not-in-a-table)
  - [State What Breaks](#state-what-breaks)
  - [Name The External End](#name-the-external-end)
- [Step 4: Write The Local Goals](#step-4-write-the-local-goals)
  - [Start From What The Artifacts Are For](#start-from-what-the-artifacts-are-for)
  - [Keep The Goal Local](#keep-the-goal-local)
  - [Group The Artifacts By Goal](#group-the-artifacts-by-goal)
- [Step 5: Judge Each Goal](#step-5-judge-each-goal)
  - [Read Today Before Tomorrow](#read-today-before-tomorrow)
  - [Name The Mechanism](#name-the-mechanism)
  - [Keep What Serves Its Goal](#keep-what-serves-its-goal)
- [Step 6: Propose A More Convenient Way And Its Tradeoffs](#step-6-propose-a-more-convenient-way-and-its-tradeoffs)
  - [Choose Keep, Merge, Replace, Cut, Or Add](#choose-keep-merge-replace-cut-or-add)
  - [Say What It Gives Up](#say-what-it-gives-up)
  - [Pick The First Change](#pick-the-first-change)
- [Step 7: Publish The Sanitized Review](#step-7-publish-the-sanitized-review)
  - [Write For The Public From The Start](#write-for-the-public-from-the-start)
  - [Name The Private Setting, Not Its Value](#name-the-private-setting-not-its-value)
  - [Follow The Incident Response](#follow-the-incident-response)
- [Step 8: Hand Off The Review](#step-8-hand-off-the-review)
  - [Hand Off The Artifacts](#hand-off-the-artifacts)
  - [Enact Only What You Have Time For](#enact-only-what-you-have-time-for)
  - [Keep The Plan True](#keep-the-plan-true)
- [Common Mistakes](#common-mistakes)

## What You Produce

```text
docs/configuration-plan.md          the inventory: Reviewed, the five groups, the CFG-nn items, their fields, and their connections
reports/week-NN/cm-evaluation.md    the judgement: Baseline, Reviewed, Method, one section per local goal, what you could not judge, the first change
docs/glossary.md                    the configuration terms, defined once
docs/risks.md                       the configuration risks, with their mitigation and contingency
docs/project-plan.md                the sprint that holds the review
```

The plan is maintained and the evaluation is that week's evidence: the plan describes the configuration as it is, and the evaluation says what the team would change about it.
The evaluation is not a second plan, and the plan is not a report.

## Step 1: Set The Review Baseline And Read The Rules

The review judges a state, so pin the state first.
[Where The Configuration Plan And The Review Live](../requirements/configuration-management-requirements.md#where-the-configuration-plan-and-the-review-live) owns the paths, the `**Reviewed:**` date, and the baseline.

### Pin The Baseline Before You Read Anything

Use the previous sprint's tag, such as `REL-07`, or the commit the review starts from, and write it in the evaluation's `**Baseline:**` with its link.
A branch name is not a baseline, because it moves while you read.
The evaluation's baseline is frozen: the repository keeps moving, and the next week needs to know which state this judgement described.

### Read The Rules The Items Are Judged Against

Each item's `**What good looks like:**` links the rule it must meet, so read the rule before you write the target.
The five families cover the whole review:

- [Branch Protection](../requirements/repository-requirements.md#branch-protection), [Pull Request Requirements](../requirements/pull-requests-requirements.md), and [Releases](../requirements/releases-requirements.md) for source control and release.
- [Link Checking](../requirements/repository-requirements.md#link-checking), [Pinning Third-Party Actions](../requirements/repository-requirements.md#pinning-third-party-actions), and [Continuous Integration](../requirements/repository-requirements.md#continuous-integration) for the checks.
- [Environments And Deployment](../requirements/repository-requirements.md#environments-and-deployment), [Configuration And Sensitive Information](../requirements/repository-requirements.md#configuration-and-sensitive-information), and [Sensitive-Data Incident Response](../requirements/repository-requirements.md#sensitive-data-incident-response) for environments and secrets.
- [Pinning Third-Party Actions](../requirements/repository-requirements.md#pinning-third-party-actions), [Contributing](../requirements/repository-requirements.md#contributing), and [Setup And Run Instructions](../requirements/repository-requirements.md#setup-and-run-instructions) for dependencies and builds.
- [Agent Instructions Requirements](../requirements/agent-instructions-requirements.md), [Identifier Rules](../requirements/general-requirements.md#identifier-rules), [Where Artifacts Live In The Repository](../requirements/general-requirements.md#where-artifacts-live-in-the-repository), and [Weekly Report Requirements](../requirements/weekly-report-requirements.md) for the agent context and the artifacts.

Link the rule in the item and do not copy its text into the plan: the copy is the one that goes stale, and a reader follows the link anyway.

### Know What The Plan Owes After The Review

The plan is maintained documentation, so a change that alters what it records updates it in the same pull request.
A settings change that leaves the plan accurate needs no update, and the `**Reviewed:**` date advances only when the plan is reviewed again.
The plan is the file a reader or an agent opens to find the configuration, so a plan that describes a repository two changes old is worse than no plan: it is believed.

## Step 2: Inventory The Configuration

The inventory is the week's bulk work, and it is dull on purpose: a list of what the project depends on, written so that someone else can find each item.
[The Configuration Items](../requirements/configuration-management-requirements.md#the-configuration-items) owns the groups, the fields, the minimum, and the dropped form.

### Walk The Five Groups

Start from the repository's own top level rather than from memory: `.github/`, `docs/`, `reports/`, the root files, the package manifests, and the settings pages.
Then place each item in one group:

- **Source control and release:** the branch protection and the review rule, the changelog and the process that cuts a release.
- **Checks:** the Markdown check, the link check, `actionlint`, and the product's continuous integration.
- **Environments and secrets:** the deployment runbook, the configuration shape, the secret handling, and the incident response.
- **Dependencies and builds:** the pins, the lockfile, the dependency updates, the large-file rule, and the reproducible setup.
- **Agent context and artifacts:** the team's `AGENTS.md` and `CONTRIBUTING.md`, the course's `SKILL.md`, the maintained documents and their indexes, the identifiers, the links, and the process that produces the weekly report.

A week's report is an instance of its process, not an item, and an application endpoint is product behaviour: a defect in one is a risk or a task issue rather than a `CFG-nn`.

### Name One Item Per Index

A set of files is one item at its index or entry point.
The functional requirements are one item at `docs/functional-requirements/README.md`, the architecture is one item at `docs/architecture/README.md`, and the ADRs are one item at the index that lists them.
Listing every requirement file separately produces a plan longer than the repository it describes, and the reader who needs one file follows the index anyway.

### Write The Fields Before The Verdicts

Write the item's fields first and judge nothing yet: the type, the purpose, the owner, the where, the connections, and the target.
`**Purpose:**` is the field most often left thin, and it is the one the judgment needs: what breaks without this item is the cost of keeping it, and the answer is usually a failure someone already had.
`**Owner:**` is a person or a role who keeps it true, not a list of everyone who has touched it; an item with four owners has none.

### Read Each Group Against Its Target

Each group has its own targets, and a group whose items miss one is where the evaluation will look.
The targets are not required of one item: they are what the group is for.

| Group                       | Targets                                                                                                       |
| --------------------------- | ------------------------------------------------------------------------------------------------------------- |
| Source control and release  | Atomicity, review, protection, traceability, and recoverability                                               |
| Checks                      | Coverage, signal, speed, determinism, and locality                                                            |
| Environments and secrets    | Separation, no secrets, reversibility, reproducibility, access, and a runbook                                 |
| Dependencies and builds     | Pinning, one lockfile, an update path, reproducibility, minimality, and build provenance                      |
| Agent context and artifacts | Purpose, currency, discoverability, links, brevity, the authority it names, and the files it says not to edit |

An item with no target is not a configuration item: it is a habit.

## Step 3: Connect The Items

The connections are what make the plan usable: a reader who has one item follows it to the next, and an agent that changes one knows what it breaks.
[The Connections](../requirements/configuration-management-requirements.md#the-connections) owns the kinds, the failure clause, and the external ends.

### Write The Edge In The Item, Not In A Table

Every edge lives in its own item's `**Connections:**` field.
A connections table beside the items is a second copy of the same facts, and the two disagree within a month.

### State What Breaks

An edge is a fact only when it names its failure.
"The link check reads `lychee.toml`" is a diagram; "an exclusion added to `lychee.toml` without its reason hides the broken link it was added for" is the edge.
Write the failure you would actually hit, in the terms of the repository, and not the general risk that things break.

### Name The External End

The other end of an edge is often outside the plan: a pinned action, a workflow, the university VM, the course's `SKILL.md`.
Name it in words and link it when it has a public page, and link the `CFG-nn` when the plan carries it.

## Step 4: Write The Local Goals

The evaluation judges by goal, so the goals come before the judgment.
[The Evaluation](../requirements/configuration-management-requirements.md#the-evaluation) owns the sections and the fields; this step is how the team arrives at its goals.

### Start From What The Artifacts Are For

List the artifacts the team maintains, and write against each one what a reader does with it.
The lecture's final quiz on the purpose of the `TOS`, `VP`, `ADR`, `FR`, `RISK`, `US`, and `DEC` is the warm-up, and the answers are the draft goals.
Groups of artifacts usually collapse into four to six goals: deciding what the product should be, specifying what it must do, verifying it, planning and tracking it, learning from its users, communicating it, and keeping the context trustworthy.

### Keep The Goal Local

A local goal is a purpose an artifact set serves.
The project's own goal, such as "a coach takes a real paid booking", is not a local goal: the artifacts serve that goal, and the review asks what the artifacts are for.
A team that writes the project's goal has nothing to judge, because every artifact serves it and all of them are kept.

### Group The Artifacts By Goal

Put every artifact under the goal it serves, and leave no artifact out; an artifact no goal wants is already a proposal to `Cut` it.
Choose the goals in your own words and write the list in `## Method`, so a reader can see the grouping you made rather than inferring it from the sections.

## Step 5: Judge Each Goal

The judgment is the first field of each goal section, `**Today:**`, and then the reason the current set costs something.
The rule that an item meeting its target is kept even when it is not the one the team would have designed makes this a judgment of the set, not of the items.

### Read Today Before Tomorrow

`**Today:**` lists the artifacts that achieve the goal, linked to their `CFG-nn` sections, and the artifacts the plan does not carry are named in words.
An artifact that does not exist yet is named in words too, and it gets a `CFG-nn` only once it exists.

### Name The Mechanism

The judgment is that a mechanism costs more than the goal is worth, and the mechanisms are a short list: duplication, a manual step, a readerless file, staleness, an unverifiable check, and a context cost.
"My colleague spends twenty minutes keeping `docs/product-backlog.md` in step with the project" is a manual step with an owner and a cost.
"Nobody reads it" is a claim that needs evidence: the team's own use is the evidence, and a git log or a search result is enough.

### Keep What Serves Its Goal

An artifact that serves its goal is kept, and the goal section says why, so a reader can tell a considered `Keep` from a forgotten one.
The review does not judge whether an item meets its `**What good looks like:**`: the criteria are mandatory, and an item that does not conform is fixed rather than debated.
A required item is fixed or simplified and never cut, and a team that proposes to remove one has found a defect rather than a change.

## Step 6: Propose A More Convenient Way And Its Tradeoffs

The proposal is one of five verbs and a cost.
The tradeoff is where the review earns its keep: a replacement that hides its loss is the review the course does not want.

### Choose Keep, Merge, Replace, Cut, Or Add

- `Keep` when the set serves the goal and the reason is worth recording.
- `Merge` when two artifacts hold the same fact and one can serve both.
- `Replace` when a different artifact serves the goal better, such as a script instead of a procedure.
- `Cut` when an artifact costs more than the goal is worth, which is the one a team finds hardest to write.
- `Add` when the goal has no artifact yet, and the addition names what it removes or why the cost is worth it.

A proposal that only adds configuration is an incomplete review: the course expects a team to be able to take configuration away when the cost says so.

### Say What It Gives Up

Every change gives something up: traceability, customer visibility, one source of truth, the agent's context, the review surface, or a learning step.
Name it, and say why the gain is worth the loss, or say that it is not and keep the artifact.
A team that finds the change not worth its tradeoff records that, and that sentence is a result of the review.

### Pick The First Change

The one change the team would make first is `## The First Change`, in one paragraph: what it keeps, what it removes, and its main tradeoff.
It is where the team would start rather than the largest change, and the other changes stay in their goal sections without an order or a schedule.
Do not measure a maintenance cost, a token count, or a failure rate to justify it: the evidence is the team's own use, and a number invented to fill a cell is worse than a sentence a reader can check.

## Step 7: Publish The Sanitized Review

Both artifacts are public, so write them as public files from the first draft.
[The Public Review](../requirements/configuration-management-requirements.md#the-public-review) owns what may appear, and [Sensitive Information Reference](../requirements/visibility-requirements.md#sensitive-information-reference) owns where everything else goes.

### Write For The Public From The Start

Name the failing property and its consequence in words: "the staging deployment's address is in the repository's history" is the finding, and the address is not.
The step-by-step that would let a reader use the weakness is the part to leave out, not the honesty.

### Name The Private Setting, Not Its Value

`**Where:**` for a private setting names the settings page in words rather than linking it, because the page needs authentication and the link would be a dead end in a public file.
A screenshot of one is sanitized, and the public review prefers the sentence to the screenshot.

### Follow The Incident Response

A credential you find in the history is not a finding to write about first.
Revoke or rotate it, tell the instructor, remove it from the files and the history, and write the account privately, per [Sensitive-Data Incident Response](../requirements/repository-requirements.md#sensitive-data-incident-response).
The public review then says what changed and not what was exposed.

## Step 8: Hand Off The Review

The review ends in a judgement, and the judgement outlives the week.
[The Recommendation](../requirements/configuration-management-requirements.md#the-recommendation) owns what the recommendation is and what an optional change looks like.

### Hand Off The Artifacts

Put the configuration plan and the evaluation in the Week 9 handoff, side by side with the deck, the results, and the final repository state.
The first change and the other goal sections are the evaluation's recommendation: they schedule no work, and the next sprint's planning does not turn them into task issues on its own.
A team that chooses to enact one does so as an optional change under the existing rules, per [The Recommendation](../requirements/configuration-management-requirements.md#the-recommendation).
A configuration task says `None: repository upkeep` in `### Requirements` because it serves no functional requirement, and a change that alters the plan cites the item it changes.

### Enact Only What You Have Time For

No change is required in the review week: a team that runs the usability sessions and the review in one week has no room for the implementation, and the evaluation is judged on its own evidence.
A change the team does enact is a task issue, a pull request, the configuration plan update in that pull request when the change alters what it records, the green checks, and the release when the change is product-visible.
It is extra evidence rather than a requirement, and no change is forced to fill the week.

### Keep The Plan True

When the change lands, the plan changes with it: the item's fields, its target, and the connections that named the old arrangement.
A removed item keeps its heading and its fields with `**Status:**` `Dropped` and its date and reason, so the next reader sees the history in place and no identifier is reused.
A settings change that leaves the plan accurate needs no update, and the `**Reviewed:**` date moves when the plan is reviewed again rather than every time it is touched.

## Common Mistakes

- **An inventory that lists files without a purpose.**
  A path is not a configuration item: write what breaks without it, because the purpose is what the evaluation judges.
- **A configuration plan longer than the repository it describes.**
  A set of files is one item at its index; a plan of sixty items is a second repository, and nobody maintains it twice.
- **A configuration plan that plans changes.**
  The plan documents the configuration as it is; the changes are the evaluation's, and they schedule none.
  A plan that lists intended improvements is a second roadmap to keep true.
- **A review that becomes a backlog.**
  The evaluation is a judgement, not scheduled work: its goal sections and first change are a recommendation, and a team that turns them into `SPRINT-09` task issues has added a plan the course does not ask for.
- **A goal that is the project's goal.**
  The project's goal is what the product is for, and every artifact serves it, so nothing can be cut; a local goal is what a set of artifacts is for.
- **A goal list copied from another team.**
  The goals come from this team's artifacts and this team's costs; a borrowed list describes a review nobody performed.
- **A goal section with no tradeoff.**
  A change that gives up nothing is a change nobody thought about; the tradeoff is the section's hardest sentence and the one a reader trusts.
- **A replacement that loses the goal it claims to keep.**
  A cheaper artifact that answers a different question is not a more convenient way; the goal survives the change or the change is not made.
- **A `Keep` with no reason.**
  The goal sections are the review, and "it works" is the answer that ends it; say what it costs and why the cost is worth paying.
- **A proposal that only adds configuration.**
  A review that adds a script for every manual step is a second job for the team; the course expects the set to shrink when the cost says so.
- **A public review that names an address or a credential.**
  The product repository is public and permanent; name the property, keep the value in the Moodle submission, and follow the incident response for a leak.
- **A configuration plan that is not updated when the configuration changes.**
  A plan two changes old is believed, which is worse than absent; update it in the pull request that records the change when the change alters what it records.
- **A `CFG-nn` reused or renumbered.**
  A dropped item keeps its identifier in place; renumbering the live items breaks every citation and every agent that learned the old anchor.
- **A course-materials item the team "fixes" in the submodule.**
  The course repository is read-only for the team; judge the wiring, change the team's own file, and report the course's problem rather than editing it.
- **A review that only adds configuration.**
  The same failure as the earlier entry, stated for the whole evaluation: a review with three `Add`s and no `Cut` has not looked at what the team keeps.
- **An implementation presented as required.**
  The week's result is the plan and its goal-based evaluation; a team that enacted nothing has still done the week, and a report that claims otherwise is a claim the repository does not support.
- **A configuration item that is product behaviour.**
  A broken payment endpoint, a slow page, and an exposed route are product work; they become a risk or a task issue, and the plan stays about the configuration around the code.
- **An agent given an unsanitized plan or evaluation.**
  Both files are public, so an agent that drafts one writes from the sanitized state; the team reviews what it writes before committing, and discloses the use in the AI usage report.
