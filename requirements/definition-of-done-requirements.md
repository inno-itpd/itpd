# Definition Of Done Requirements

These requirements define the team's Definition of Done: where it lives, what it must say for a story, a task, and a pull request, and how it stays current.
What a task issue is, and how a pull request closes one, is in [Task Issue Requirements](task-issues-requirements.md#closing-a-task); how a change gets in is in [Pull Request Requirements](pull-requests-requirements.md).

<h2>Table of contents</h2>

- [Where The Definition Of Done Lives](#where-the-definition-of-done-lives)
- [The Story](#the-story)
- [The Task](#the-task)
- [The Pull Request](#the-pull-request)
- [Full Example](#full-example)

## Where The Definition Of Done Lives

**Since: W3**

The Definition of Done is maintained documentation.
It is created in Week 3 in its final place and stays current for the rest of the course, per [Where Artifacts Live In The Repository](general-requirements.md#where-artifacts-live-in-the-repository).

**Required**

1. The Definition of Done is `docs/definition-of-done.md`.
   It is the single source for what done means for a story, a task, and a pull request, and `CONTRIBUTING.md` links it rather than restating it, per [Contributing](repository-requirements.md#contributing).
2. The file carries three sections, in this order: `## Story`, `## Task`, and `## Pull Request`.
   Each section is a list of plain bullets, not checkboxes, because the file states a standard rather than a set of boxes to tick on one pull request.
3. The three lists are disjoint: each item sits under the smallest unit it applies to, and the story list cites the task and pull request lists rather than repeating their items.
4. The items below are the minimum, and a team may add items of its own.
   A list that no longer describes the team's workflow is worse than no list, because it is believed, so the team edits the file when the workflow changes.

**Recommended**

- Write each item as a check somebody other than its author can run and get the same answer from, as [rule 1 of a story's acceptance criteria](user-stories-requirements.md#acceptance-criteria) asks of a criterion.

## The Story

**Since: W3**

A **story** is done when every item below holds.
The list says what must hold before the story is shown; a story closes only on the customer's acceptance, per [Showing Working Software](customer-meetings-requirements.md#showing-working-software).

**Required**

1. The `## Story` section lists these items:

   - Every acceptance criterion passes on `main`.
   - Every task issue that works on the story has closed with its pull request merged, so each also met the Task and Pull Request lists below.
   - The story issue links the evidence for each criterion.
   - The accountable member has checked that each criterion is runnable, and that every link on the issue resolves.

## The Task

**Since: W3**

A **task** is done when every item below holds.

**Required**

1. The `## Task` section lists these items:

   - Every acceptance criterion the task carries is satisfied.
   - The task closes as completed, which happens when the pull request that closes it merges into `main`, per [Closing A Task](task-issues-requirements.md#closing-a-task).

2. A team that gives its in-repository task tracker a Definition of Done, per [A Task Tracker In The Repository](local-task-tracking-requirements.md#a-task-tracker-in-the-repository), states in the Definition of Done where that list lives, such as `backlog/config.yml`.
   The two are independent: the tracker's list is configured with the tracker and applies to tracker tasks, and no rule ties the two together.

## The Pull Request

**Since: W3**

A **pull request** is the change that closes one task issue, and the list says what it must meet.

**Required**

1. The `## Pull Request` section lists these items:

   - A pull request closes exactly one task issue and links it, per [Closing A Task](task-issues-requirements.md#closing-a-task).
   - The accountable reviewer ticks every task acceptance criterion before approving, per [Closing A Task](task-issues-requirements.md#closing-a-task).
   - The approval comes from a member other than the author, per [Review And Approval](pull-requests-requirements.md#review-and-approval).
   - The repository checks are green: the [link check](repository-requirements.md#link-checking) and the [Markdown check](repository-requirements.md#continuous-integration).
   - A user-visible change updates the `[Unreleased]` section of `CHANGELOG.md`, per [The Changelog](releases-requirements.md#the-changelog).
   - The acceptance criteria this pull request claims pass on its branch, and on `main` after it merges.
   - No secret, recording, or private-only material is committed, per [Sensitive Information Reference](visibility-requirements.md#sensitive-information-reference).
   - Implementation notes in the pull request description record the decisions made and how the change was checked, per [The Pull Request Template](pull-requests-requirements.md#the-pull-request-template).

**Since: W5**

2. From Week 5, the list also names the [product-code CI](repository-requirements.md#continuous-integration) among the checks that must be green.

## Full Example

`docs/definition-of-done.md` for the meeting-booking example, as a team that tracks work in the repository writes it:

```markdown
# Definition of done

## Story

- Every acceptance criterion passes on `main`.
- Every task issue that works on the story has closed with its pull request merged, so each also met the Task and Pull Request lists below.
- The story issue links the evidence for each criterion.
- The accountable member has checked that each criterion is runnable, and that every link on the issue resolves.

A story closes only on the customer's acceptance, per [Showing Working Software](https://github.com/inno-itpd/itpd/blob/main/requirements/customer-meetings-requirements.md#showing-working-software).

## Task

- Every acceptance criterion the task carries is satisfied.
- The task closes as completed, which happens when the pull request that closes it merges into `main`.

Work tracked in the in-repository task tracker follows the tracker's own Definition of Done, which lives in [`backlog/config.yml`](../backlog/config.yml).

## Pull Request

- A pull request closes exactly one task issue and links it.
- The accountable reviewer ticks every task acceptance criterion before approving.
- The approval comes from a member other than the author.
- The repository checks are green: the link check and the Markdown check.
- A user-visible change updates the `[Unreleased]` section of [`CHANGELOG.md`](../CHANGELOG.md).
- The acceptance criteria this pull request claims pass on its branch, and on `main` after it merges.
- No secret, recording, or private-only material is committed.
- Implementation notes in the pull request description record the decisions made and how the change was checked.
```
