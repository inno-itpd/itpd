# Task Issue Requirements

These requirements define a task issue: where it lives, its issue form, and how a pull request closes it.
What a story says, and how its issue closes, is in [User Story Requirements](user-stories-requirements.md).
The rules every issue shares, and branches and pull requests, are in [Repository Requirements](repository-requirements.md#issue-tracking).

<h2>Table of contents</h2>

- [Where Task Issues Live](#where-task-issues-live)
- [The Issue Form](#the-issue-form)
- [Closing A Task](#closing-a-task)
- [Full Example](#full-example)

## Where Task Issues Live

**Since: W2**

A **task issue** holds one unit of work, such as building part of a story, documentation, a report, or a workflow, and one pull request closes it.

**Required**

1. Every task is one GitHub issue, opened from the [issue form](#the-issue-form).
   It carries:

   - A description of the work.
   - Each story issue and each `AC-nn` the task works toward, when it works toward a story, per [The Issue Form](#the-issue-form).
   - The `task` label, applied by the form.

2. A task has no identifier family.
   Cite it by its issue number, such as `#12`, or by a link to the issue.
3. An action point that changes the repository is carried out by a task issue whose description cites the action point, per [Identifier Rules](general-requirements.md#identifier-rules).

**Recommended**

- Give a task a short imperative title, such as `Hold a slot while the client pays`, and reuse it as its branch's description, per [Branch Protection And Pull Requests](repository-requirements.md#branch-protection-and-pull-requests).

## The Issue Form

**Since: W2**

**Required**

1. Add `.github/ISSUE_TEMPLATE/task.yml`, an Issue Form for every unit of work, with the `task` label applied by the form.
   The description field is required.
   The `Story` field is optional and takes each story issue the task works toward, one per line, such as `#42`, because one task may serve several stories.
   The `Acceptance criteria` field is optional and takes each `AC-nn` the task works toward, one per line, with its story when the task names more than one.
   A task that is not work on a story, such as a workflow or a report, leaves both empty.
2. Create the `task` label, by any means.

## Closing A Task

**Since: W2**

**Required**

1. Every pull request closes exactly one task issue, with a closing keyword in its description such as `Closes #12`.
   Create its branch from that task where GitHub supports it.
   A task that needs more than one pull request is split into more tasks.
   A Dependabot pull request has no task issue, because the bot opens it; [Pinning Third-Party Actions](repository-requirements.md#pinning-third-party-actions) says how it is handled.
2. Work on a story is one or more task issues whose `Story` field names it, and a story small enough for one pull request has one task.
   The rework on a story the customer rejected is a new task issue that names the story and each failed `AC-nn` and cites the rejection's `DEC-nnn`; a closed task is not reopened.
3. Check the acceptance criteria a pull request touches before merging it; the [pull request template](repository-requirements.md#branch-protection-and-pull-requests) asks for them.
4. A task closes as completed when its pull request merges.
   A task whose pull request was closed without merging, or that the team abandoned, is closed as not planned, with a comment that gives the reason and links the pull request when there is one.

## Full Example

Issue #12, a task on the story in [the user story example](user-stories-requirements.md#full-example):

```markdown
Title: Hold a slot while the client pays
Labels: task

### Description

Hold a booked slot while the client pays, and release it when the hold expires.

### Story

#42

### Acceptance criteria

AC-01
AC-02
```

Its branch is `12-hold-a-slot-while-the-client-pays`, and its pull request's description says `Closes #12`.
