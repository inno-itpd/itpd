# Issue Tracking Requirements

These requirements cover the issues a team opens on GitHub: the rules every issue shares, the `Sprint`, `Responsible`, and `Accountable` values, the matching assignees, and the public project that shows them.
The form and the labels of each kind of issue are in [User Story Requirements](user-stories-requirements.md#the-issue-form) and [Task Issue Requirements](task-issues-requirements.md#the-issue-form).
Branches, pull requests, link checking, and the permalinks are in [Repository Requirements](repository-requirements.md).
A task tracker inside the repository is in [Local Task Tracking Requirements](local-task-tracking-requirements.md).

<h2>Table of contents</h2>

- [Opening Issues](#opening-issues)
- [Linking A File From An Issue Or A Pull Request](#linking-a-file-from-an-issue-or-a-pull-request)
- [Issue Fields](#issue-fields)
- [Assignees](#assignees)
- [GitHub Projects](#github-projects)

## Opening Issues

**Since: W2**

**Required**

1. Disable blank issue creation with `blank_issues_enabled: false` in `.github/ISSUE_TEMPLATE/config.yml`.
2. The pull request that adds the two forms and `config.yml` is the only one that starts before a form exists.
   Open a blank issue for it first, then name its branch and close that issue like any other pull request's task.
   Once the `task` label exists, apply it to that issue, so that every task issue carries the label.
   A team that disabled blank issues before it had the task form opens the issue for the pull request that adds `task.yml` with `gh issue create`.
3. After that pull request, open every issue from a form.
   This is the team's rule rather than the platform's: `gh issue create` and the API skip the form and the label it applies.

## Linking A File From An Issue Or A Pull Request

**Since: W2**

**Required**

1. In an issue, an issue comment, or a pull request description, link a repository file by its full URL on `main`, because a relative link does not resolve there:

```text
https://github.com/<org>/<repo>/blob/main/docs/decisions.md#dec-006
```

Link on `main`, not at a commit hash, so the link shows the file as it is now, such as a decision that has since been reversed.
The commit-hash permalink is for the submission, per [Permalinks And Snapshots](repository-requirements.md#permalinks-and-snapshots).
Merge the file into `main` before an issue links it.

## Issue Fields

**Since: W3**

The three fields carry who works on an issue and when the team plans to finish it, and the plan and the sprint backlog read those values instead of a copied list.

**Required**

1. The organization creates three **issue fields**, each **single-select** and with visibility **Public**:

   | Field         | Its options                                                  |
   | ------------- | ------------------------------------------------------------ |
   | `Sprint`      | one per sprint, `SPRINT-03` to `SPRINT-09`, and nothing else |
   | `Responsible` | one per team member, by the member's GitHub username         |
   | `Accountable` | one per team member, by the member's GitHub username         |

   Pin each field to the issue types the team uses for story and task issues, or to `Issues without a type` when the team uses none: a field pinned to nothing does not appear on an issue.
   A new field starts with organization-only visibility, so change it to `Public`.
2. The team sets the three values together when it schedules an issue into a sprint: `Sprint` names the sprint the team plans to finish the issue in, and `Responsible` and `Accountable` name two different members, who will do the work and verify it.
   The values are set on the issue after it is created, so no issue form change is needed.
   An open issue the team has not scheduled carries none, and an already closed issue needs none.
   A reschedule or a change of hands updates them, and the values stay on an issue after it closes.
3. A sprint's backlog is the issue list filtered by its `Sprint` value, such as `field.Sprint:SPRINT-03`, which the plan's `**Sprint Backlog:**` field links, per [Sprints](planning-requirements.md#sprints).
4. A team whose organization cannot create issue fields declares a [deviation](weekly-report-requirements.md#declaring-deviations) and carries the three values as labels instead: `responsible:<username>`, `accountable:<username>`, and `sprint:<SPRINT-nn>`, set on the issue when it is scheduled.
   An issue without a `sprint:*` label is unscheduled.

## Assignees

**Since: W3**

The issue's assignees name the same two members as its `Responsible` and `Accountable` values, because a GitHub assignee carries no role of its own.
The values carry the roles, and the assignees are the platform's usual surface: they notify the members, and the issue list can filter by them.

**Required**

1. The team sets the issue's assignees to the two members its `Responsible` and `Accountable` values name, and to no one else, in the same act as the values, per [Issue Fields](#issue-fields).
2. A reschedule or a change of hands updates the values and the assignees together.
3. An open issue the team has not scheduled carries no assignees, and an already closed issue needs none.
   The assignees stay on an issue after it closes, as the record of who did the work.
4. Pull requests are not assigned this way.
   A pull request already names its author and its reviewer.
5. A team on the label fallback, per [Issue Fields](#issue-fields), sets the same two assignees; the role labels carry the roles.

## GitHub Projects

**Since: W3**

The schedule lives on the issues and in the `Sprint` field, and the GitHub project is the public surface that shows them, so the state of the week is visible without opening a file.
It is a view over the issues rather than a second backlog: [Issue Fields](#issue-fields) stays the source of the values, and no artifact copies the list.
The plan names it where progress is visible, per [Progress Monitoring](planning-requirements.md#progress-monitoring).

**Required**

1. Create one **GitHub project** per team, in the organization, titled after the product or the repository, with a description that links the repository.
2. Set its visibility to **Public**.
   A new organization project starts private, so change its visibility in the project's settings.
3. The project holds every open issue of the repository and stays current, so an issue the team schedules is already in it.
   The platform's auto-add workflow and adding items by hand both count.
4. The project carries at least one **table view** whose columns include the `Sprint`, `Responsible`, and `Accountable` issue fields and the built-in `Assignees`, grouped or sorted by `Sprint`.
   A team on the label fallback, per [Issue Fields](#issue-fields), shows the three labels instead.
