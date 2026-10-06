# Task Issue Requirements

These requirements define a task issue: where it lives, its issue form, its acceptance criteria, and how a pull request closes it.
What a story says, and how its issue closes, is in [User Story Requirements](user-stories-requirements.md).
The rules every issue shares, and branches and pull requests, are in [Repository Requirements](repository-requirements.md#issue-tracking).

<h2>Table of contents</h2>

- [Where Task Issues Live](#where-task-issues-live)
- [The Issue Form](#the-issue-form)
- [Acceptance Criteria](#acceptance-criteria)
- [Closing A Task](#closing-a-task)
- [Full Example](#full-example)

## Where Task Issues Live

**Since: W2**

A **task issue** holds one unit of work, such as building part of a story, documentation, a report, or a workflow, and one pull request closes it.

**Required**

1. Every task is one GitHub issue, opened from the [issue form](#the-issue-form).
   It carries:

   - A description of the work.
   - Each story issue the task works toward, with the story's `AC-nn` it works toward, when it works toward a story, per [The Issue Form](#the-issue-form).
   - The task's own acceptance criteria, per [Acceptance Criteria](#acceptance-criteria).
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
   The description field and the `Acceptance criteria` field are required.
   The `Story` field is optional and takes a bullet list with one item for each story issue the task works toward, because one task may serve several stories.
   Each item names the story issue alone or follows it with the story's `AC-nn` the task works toward in parentheses, such as `- #42 (AC-01, AC-02)`, so GitHub renders each story's title.
   A task that is not work on a story, such as a workflow or a report, leaves `Story` empty.
2. Create the `task` label, by any means.

**Recommended**

- Prefill the `Acceptance criteria` field with `value: "- [ ] AC-01: "`, so whoever fills in the form starts from the checklist.

## Acceptance Criteria

**Since: W2**

A task's acceptance criteria are the checks that tell the reviewer whether the task is done.
They may be narrower or more technical than the criteria of the story it works toward, because they check one unit of work rather than the whole need.

**Required**

1. Every task carries **at least one acceptance criterion**, and each one is observable and pass/fail, as [rule 1 of a story's acceptance criteria](user-stories-requirements.md#acceptance-criteria) says.
2. Write the criteria as a checklist, one item per criterion, such as `- [ ] AC-01: A held slot is not offered to another client.`
3. Every criterion carries an `AC-nn`, numbered within its task issue as [rule 2 of a story's acceptance criteria](user-stories-requirements.md#acceptance-criteria) says.
   Cite a task's criterion together with its task issue.
4. Edit a task's criteria as the work clarifies them.
   A task is not a requirement, so the edit needs no comment.

## Closing A Task

**Since: W2**

**Required**

1. Every pull request closes exactly one task issue, with a closing keyword in its description such as `Closes #12`.
   Create its branch from that task where GitHub supports it.
   A task that needs more than one pull request is split into more tasks.
   A Dependabot pull request has no task issue, because the bot opens it; [Pinning Third-Party Actions](repository-requirements.md#pinning-third-party-actions) says how it is handled.
   Neither has the pull request of a workflow that moves Done tracker tasks, because a workflow opens it; [Moving Done Tasks Out Of The Active List](local-task-tracking-requirements.md#moving-done-tasks-out-of-the-active-list) says how it is handled.
2. Work on a story is one or more task issues whose `Story` field names it, and a story small enough for one pull request has one task.
   The rework on a story the customer rejected is a new task issue whose `Story` field names the story and each failed `AC-nn`, and whose description cites the rejection's `DEC-nnn`; a closed task is not reopened.
3. Before approving a pull request, the reviewer ticks each of its task's acceptance criteria in the task issue.
   Merge the pull request only when every box is ticked.
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

- #42 (AC-01, AC-02)

### Acceptance criteria

- [ ] AC-01: While a slot is held, the booking page does not offer it to another client.
- [ ] AC-02: A hold that reaches its expiry is released without anyone acting on it.
- [ ] AC-03: The hold length is read from configuration, not written into the code.
```

Its branch is `12-hold-a-slot-while-the-client-pays`, and its pull request's description says `Closes #12`.

Issue #7, a task that is not work on a story, so its `Story` field is empty:

```markdown
Title: Check the Markdown in CI
Labels: task

### Description

Run the Markdown format check and the lint on every pull request.

### Story

_No response_

### Acceptance criteria

- [ ] AC-01: A pull request with a Markdown file that fails the format check shows a failed check.
- [ ] AC-02: The check runs on every pull request into `main`.
```
