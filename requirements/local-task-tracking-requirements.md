# Local Task Tracking Requirements

These requirements cover the work a team tracks inside its repository rather than on GitHub: a task tracker, a `TODO.md` checklist, and a workflow that keeps the tracker's active list short.
Task issues, and how a pull request closes one, are in [Task Issue Requirements](task-issues-requirements.md).
The Markdown check, the link check, and pull requests are in [Repository Requirements](repository-requirements.md).

<h2>Table of contents</h2>

- [A Task Tracker In The Repository](#a-task-tracker-in-the-repository)
- [A TODO.md Checklist](#a-todomd-checklist)
- [Moving Done Tasks Out Of The Active List](#moving-done-tasks-out-of-the-active-list)

## A Task Tracker In The Repository

**Since: W2**

**Recommended**

- Use a task tracker that keeps its state in the repository, such as the [`backlog.md`](https://github.com/MrLesk/Backlog.md) command-line tool.
  It is not the home of a user story, and a story issue may be mentioned in it.
  Its files are repository content rather than artifacts, per [Where Artifacts Live In The Repository](general-requirements.md#where-artifacts-live-in-the-repository), and it is not graded on its own.
- Exclude the tracker's directory from the [Markdown check](repository-requirements.md#continuous-integration), because the tool rewrites those files and a formatter would fight it.
  The [link check](repository-requirements.md#link-checking) still covers the directory, unless you exclude it there with the reason written down, as that section requires of every exclusion.
- Give the tracker a Definition of Done, so every task carries the checks it must pass before it is marked Done.
  Make one of its items require implementation notes that record the decisions made and how the change was checked.
  The acceptance criteria say what was done, and the notes say why and how it was verified, which the next member, a reviewer, or a coding agent otherwise has to reconstruct.
  The other items are the team's own: start from the example below and adapt it to the checks your project has.

It is recommended for two reasons:

1. **A coding agent can use it.**
   The tasks are plain files beside the code, and `backlog.md` has a command-line interface and an MCP server, so an agent can read the task it is working on, follow its acceptance criteria, and record what it did, without access to your GitHub account.
2. **It breaks a bigger task into steps inside one pull request.**
   A larger piece of work, whether it is an issue or a task in the tracker itself, splits into subtasks, each with its own acceptance criteria.
   The subtasks change in the same commits as the work, so a reviewer sees the plan and how far it got beside the diff.

It is not required because the course grades the work and its evidence, not the tool the team organised it with.

**Example**

When several members create tasks on different branches, let the tool see the other branches, so that two branches do not allocate the same task ID.
In `backlog/config.yml`:

```yaml
filesystem_only: false
remote_operations: true
check_active_branches: true
active_branch_days: 30
```

A task created in another clone is visible only once its branch is pushed, so push a branch soon after creating a task on it.

A starting Definition of Done, in the same file:

```yaml
definition_of_done:
  - "All acceptance criteria are satisfied"
  - "The Markdown check passes locally"
  - "Links in changed files resolve"
  - "No secret or private-only item is committed"
  - "Implementation notes record the decisions made and how the change was checked"
```

The items name checks that other sections own: the [Markdown check](repository-requirements.md#continuous-integration), the [link check](repository-requirements.md#link-checking), and [what may be committed](visibility-requirements.md).
Add your project's own checks as it gains them, such as a build or a test run, and drop an item your project has no use for.
Write each item without a comma, because the `backlog.md` MCP server rejects an item that contains one.
The list applies only to tasks created after it changes, so add a new item to an open task with `backlog task edit <id> --dod "<item>"`.

## A TODO.md Checklist

**Since: W2**

`TODO.md` is a short checklist of work that has no task issue and no tracker task.
It holds the steps of the work in hand, so a member can tick them off while working on a pull request and review what was done, and the candidate tasks noticed along the way.
A **candidate task** is work someone noticed that nobody has decided to do yet; it needs somewhere to wait that is not a member's memory.

**Recommended**

- Keep the checklist in `TODO.md` in the repository root.
  It holds the team's own steps, ideas, and follow-ups.
  An action point that changes the repository goes straight to a task issue, per [Where Task Issues Live](task-issues-requirements.md#where-task-issues-live), and never waits in `TODO.md`.
- The format is the team's choice: headings, checkboxes, and nested items all work, as in the example below.
  Tick an item when it is done, so the list shows what was done.
- Follow a candidate with a link to where it came up, such as a pull request review, a meeting report, or an issue, so whoever promotes it can find the context.
- Promote a candidate when the team decides to do it: open a [task issue](task-issues-requirements.md#the-issue-form) or create a tracker task.
  Clear ticked, promoted, and dropped items whenever it is convenient; there is no need to do it at once.
- An item in `TODO.md` is not a task.
  Work tracked by a task issue is closed by its pull request, not by ticking an item.
- Decide as a team whether `TODO.md` is committed or kept by each member:

  - **Committed:** every member sees the list.
    The file is checked like any other Markdown file, by the [Markdown check](repository-requirements.md#continuous-integration) and the [link check](repository-requirements.md#link-checking), and follows [what may be committed](visibility-requirements.md).
    Adding, ticking, or deleting its items may ride along in any pull request, per [Branch Protection And Pull Requests](repository-requirements.md#branch-protection-and-pull-requests).
  - **Kept by each member:** list `TODO.md` in `.gitignore`.
    Nobody reviews it, and nobody else sees it.

- A team that uses `backlog.md` may keep its candidates as drafts instead, with `backlog draft create "<title>"` and, once the team decides to do one, `backlog draft promote <id>`.
  Keep one list of candidates, not both.
- `TODO.md` is repository content rather than an artifact, per [Where Artifacts Live In The Repository](general-requirements.md#where-artifacts-live-in-the-repository), and it is not graded on its own.

**Since: W3**

- State in `CONTRIBUTING.md` where the team keeps its TODO list: a committed `TODO.md`, one per member, or, for candidates, drafts in the tracker, per [Contributing](repository-requirements.md#contributing).

**Example**

`TODO.md`:

```markdown
# TODO

## Hold A Slot While The Client Pays (#12)

- [x] Store the hold with its expiry time
- [ ] Release an expired hold
  - [x] Release on the next booking request
  - [ ] Release without a request, on a timer
- [ ] Read the hold length from configuration

## Later

- [ ] Show the hold expiry time on the payment page
- [ ] Release held slots when the server restarts (from the review of #31)
```

## Moving Done Tasks Out Of The Active List

**Since: W2**

A tracker keeps finished tasks beside the open ones until someone moves them.
`backlog task complete <id>` moves a Done task from `backlog/tasks/` to `backlog/completed/`, so the active list holds only open work.

**Recommended**

- Run a scheduled workflow that completes every Done task and opens one pull request with the move.
  Review and merge it like any other pull request.
  Like a Dependabot pull request, it has no task issue, per [Closing A Task](task-issues-requirements.md#closing-a-task), and its branch keeps the name the workflow gives it.
- Under Settings → Actions → General → Workflow permissions, allow GitHub Actions to create pull requests, first in the organization and then in the repository.
  The repository's checkbox is greyed out until the organization allows it.
- A pull request opened with the workflow's own `GITHUB_TOKEN` starts no other workflows, so your checks do not run on it.
  To have them run, store a fine-grained token with read and write access to Contents and Pull requests as an Actions secret, and let the workflow use it.

**Example**

The course repository's [`.github/workflows/backlog-cleanup.yml`](../.github/workflows/backlog-cleanup.yml) runs every Sunday and on demand.
It moves the Done tasks with `backlog task complete`, and opens or refreshes one pull request from its own branch.
It uses a `BACKLOG_CLEANUP_TOKEN` secret when one is set, and `GITHUB_TOKEN` otherwise.
Pin its actions per [Pinning Third-Party Actions](repository-requirements.md#pinning-third-party-actions), and pin the `backlog.md` version to the one your team uses.
