# Pull Request Requirements

These requirements cover the pull request: how every change after the first commit reaches `main`, the branch it comes from, the template it fills, the review it passes, and the evidence it leaves.
The branch protection settings that enforce it are in [Branch Protection](repository-requirements.md#branch-protection).
A task issue, and how a pull request closes one, is in [Task Issue Requirements](task-issues-requirements.md#closing-a-task); what done means for a pull request is in [Definition Of Done Requirements](definition-of-done-requirements.md#the-pull-request).

<h2>Table of contents</h2>

- [Every Change Goes Through A Pull Request](#every-change-goes-through-a-pull-request)
- [One Change Per Pull Request](#one-change-per-pull-request)
- [Branch Naming](#branch-naming)
- [The Pull Request Template](#the-pull-request-template)
- [Review And Approval](#review-and-approval)
- [Keeping The Evidence](#keeping-the-evidence)
- [Bot And Workflow Pull Requests](#bot-and-workflow-pull-requests)

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
