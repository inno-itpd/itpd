# Pull Request Requirements

These requirements cover the pull request: how every change after the first commit reaches `main`, the branch it comes from, the template it fills, the review it passes, and the evidence it leaves.
The branch protection settings that enforce it are in [Branch Protection](repository-requirements.md#branch-protection).
A task issue, and how a pull request closes one, is in [Task Issue Requirements](task-issues-requirements.md#closing-a-task); what done means for a pull request is in [Definition Of Done Requirements](definition-of-done-requirements.md#the-pull-request).

<h2>Table of contents</h2>

- [Every Change Goes Through A Pull Request](#every-change-goes-through-a-pull-request)
- [One Change Per Pull Request](#one-change-per-pull-request)
- [Branch Naming](#branch-naming)
- [The Pull Request Template](#the-pull-request-template)
  - [Pull Request Checklist](#pull-request-checklist)
- [Review And Approval](#review-and-approval)
- [Keeping The Evidence](#keeping-the-evidence)
- [Bot And Workflow Pull Requests](#bot-and-workflow-pull-requests)
- [Full Example](#full-example)

## Every Change Goes Through A Pull Request

**Since: W1**

**Required**

1. Every change after the first commit goes through a pull request: documentation, configuration, and CI changes included.

## One Change Per Pull Request

**Since: W1**

**Required**

1. Keep each pull request to one change.
   A pull request that fixes a broken link and reformats three files is hard to review, and review is the point.
   Adding, ticking, or deleting items in a committed `TODO.md` may ride along in any pull request, per [A TODO.md Checklist](local-task-tracking-requirements.md#a-todomd-checklist).

## Branch Naming

**Since: W1**

**Required**

1. Name branches with a short lowercase hyphenated description, for example `add-alternatives-research`.
   From Week 2, use the number of the [task issue](task-issues-requirements.md#where-task-issues-live) the branch works on: `<issue-number>-<short-description>`, for example `12-hold-a-slot-while-the-client-pays`.

## The Pull Request Template

**Since: W1**

**Required**

1. Add a pull request template at `.github/pull_request_template.md`.
   It must prompt for:

   - What changed and why.
   - What you checked, and how.
   - For the reviewer: what to look at, and whether the linked requirements or acceptance criteria are satisfied.
     From Week 2, link the [task issue](task-issues-requirements.md#closing-a-task) the pull request closes, whose acceptance criteria the reviewer ticks before approving.

2. The description the template produces is the change's **implementation notes**: what changed and why, and what was checked and how.

### Pull Request Checklist

**Since: W3**

**Required**

1. Extend the template with a link to the team's [Definition Of Done](definition-of-done-requirements.md#where-the-definition-of-done-lives) and a checklist for pull requests opened by team members.
2. Before requesting review, the author ticks the two author items:

   - The author records the [changelog](releases-requirements.md#the-changelog) outcome in the description by pointing to the updated entry or stating that the change falls outside the changelog criteria.
   - The author checks the diff for secrets and [private-only material](visibility-requirements.md#sensitive-information-reference).

3. Before approving, the reviewer ticks the reviewer item after verifying and ticking the acceptance criteria in the linked task issue, per [Closing A Task](task-issues-requirements.md#closing-a-task).

## Review And Approval

**Since: W1**

A pull request is reviewed before it merges, and on a task's pull request the reviewer also meets [Closing A Task](task-issues-requirements.md#closing-a-task).

**Required**

1. A pull request merges only with an approval from a team member other than its author; the platform blocks self-approval, per [Branch Protection](repository-requirements.md#branch-protection).

## Keeping The Evidence

**Since: W1**

**Required**

1. Do not delete pull requests, reviews, or branches that are used as assignment evidence, and do not rewrite history to tidy it up.
   The history is part of what is being assessed.
2. History rewriting is allowed in exactly one case: removing accidentally committed sensitive data.
   See [Sensitive-Data Incident Response](repository-requirements.md#sensitive-data-incident-response).

## Bot And Workflow Pull Requests

**Since: W1**

Neither of the pull requests below carries a task issue, because a bot or a workflow opens it, per [Closing A Task](task-issues-requirements.md#closing-a-task).

**Required**

1. Treat a Dependabot pull request as any other pull request: review it, and merge it through a pull request with one approval from another member.
   Any member may merge it.

**Since: W2**

2. The pull request a workflow opens to move Done tracker tasks is handled the same way, per [Moving Done Tasks Out Of The Active List](local-task-tracking-requirements.md#moving-done-tasks-out-of-the-active-list).

## Full Example

**Example**

This is the meeting-booking team's `.github/pull_request_template.md` from Week 3.
Use your own repository URL in the Definition of Done link so it resolves in the pull request description.

```markdown
Closes #
<!-- Enter the task issue number, for example Closes #12. -->

## What Changed And Why

<!-- Describe the change and the decisions that shaped it. -->

## Verification

<!-- Describe what you checked, how you checked it, and the result. -->

## Reviewer Notes

<!-- Point the reviewer to what to inspect and identify the requirements or acceptance criteria the change satisfies. -->

## Checklist

[Definition of Done](https://github.com/example-org/meeting-booking/blob/main/docs/definition-of-done.md)

- [ ] Author confirmed the changelog outcome and recorded it below.
- [ ] Author checked that the diff contains no secrets or private-only material.
- [ ] Reviewer verified and ticked the acceptance criteria in the linked task issue.

<!-- Point to the changelog entry or state that the change falls outside the changelog criteria. -->
```
