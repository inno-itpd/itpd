# Issue Tracking Requirements

These requirements cover the issues a team opens on GitHub: the rules every issue shares, the sprint's GitHub milestone an issue is scheduled into, the `Responsible` and `Accountable` values, the matching assignees, and the public project that shows them.
The form and the labels of each kind of issue are in [User Story Requirements](user-stories-requirements.md#the-issue-form) and [Task Issue Requirements](task-issues-requirements.md#the-issue-form).
Branches and pull requests are in [Pull Request Requirements](pull-requests-requirements.md); link checking and the permalinks are in [Repository Requirements](repository-requirements.md).
A task tracker inside the repository is in [Local Task Tracking Requirements](local-task-tracking-requirements.md).

<h2>Table of contents</h2>

- [Opening Issues](#opening-issues)
- [Linking A File From An Issue Or A Pull Request](#linking-a-file-from-an-issue-or-a-pull-request)
- [Issue Fields](#issue-fields)
- [Scheduling An Issue](#scheduling-an-issue)
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

An **issue field** is the organization's field on the issue itself, set after the issue is created and shown in the issue's sidebar.
It is not a field of the issue form, which is written into the issue body once, and not a project's own field, which lives only in that project.
The two fields carry who works on an issue, and the milestone the issue is in carries when the team plans to finish it: the plan and a sprint's issue list read the values and the milestone instead of a copied list.

**Required**

1. The organization creates two **issue fields**, each **single-select** and with visibility **Public**:

   | Field         | Its options                                          |
   | ------------- | ---------------------------------------------------- |
   | `Responsible` | one per team member, by the member's GitHub username |
   | `Accountable` | one per team member, by the member's GitHub username |

   Pin each field to the issue types the team uses for story and task issues, or to `Issues without a type` when the team uses none: a field pinned to nothing does not appear on an issue.
   A new field starts with organization-only visibility, so change it to `Public`.

## Scheduling An Issue

**Since: W3**

Scheduling is the single act that puts an issue into a sprint: the issue goes into its sprint's GitHub milestone, and its two values and the matching assignees are set at the same time.

**Required**

1. The team schedules an issue by assigning it to its sprint's GitHub milestone, per [Sprints](planning-requirements.md#sprints), and sets the two values in the same act: `Responsible` and `Accountable` name two different members, who will do the work and verify it.
   The values are set on the issue after it is created, so no issue form change is needed.
   An open issue the team has not scheduled carries none and no milestone, and an already closed issue needs none.
   A reschedule or a change of hands moves the issue to the later sprint's milestone and updates the values, and the values stay on an issue after it closes.
2. A sprint's issue list is its GitHub milestone, which the plan's `**Sprint Backlog:**` field links, per [Sprints](planning-requirements.md#sprints).
3. A team whose organization cannot create issue fields declares a [deviation](weekly-report-requirements.md#declaring-deviations) and carries the two values as labels instead: `responsible:<username>` and `accountable:<username>`, set on the issue when it is scheduled.
   An issue in no milestone is unscheduled.

## Assignees

**Since: W3**

The issue's assignees name the same two members as its `Responsible` and `Accountable` values, because a GitHub assignee carries no role of its own.
The values carry the roles, and the assignees are the platform's usual surface: they notify the members, and the issue list can filter by them.

**Required**

1. The team sets the issue's assignees to the two members its `Responsible` and `Accountable` values name, and to no one else, in the same act as the values, per [Scheduling An Issue](#scheduling-an-issue).
2. A reschedule or a change of hands moves the issue to its new sprint's milestone and updates the values and the assignees together.
3. An open issue the team has not scheduled carries no assignees, and an already closed issue needs none.
   The assignees stay on an issue after it closes, as the record of who did the work.
4. Pull requests are not assigned this way.
   A pull request already names its author and its reviewer.
5. A team on the label fallback, per [Scheduling An Issue](#scheduling-an-issue), sets the same two assignees; the role labels carry the roles.

## GitHub Projects

**Since: W3**

The schedule lives on the issues and in their sprint milestones, and the GitHub project is the public surface that shows it, so the state of the week is visible without opening a file.
It is a view over the issues rather than a second backlog: [Scheduling An Issue](#scheduling-an-issue) and [Issue Fields](#issue-fields) stay the source, and no artifact copies the list.
The plan names it where progress is visible, per [Progress Monitoring](planning-requirements.md#progress-monitoring).

**Required**

1. Create one **GitHub project** per team, in the organization, titled after the product or the repository, with a description that links the repository.
2. Set its visibility to **Public**.
   A new organization project starts private, so change its visibility in the project's settings.
3. The project holds every open issue of the repository and stays current, so an issue the team schedules is already in it.
   The platform's auto-add workflow and adding items by hand both count.
4. The project carries at least one **table view** whose columns include the `Responsible` and `Accountable` issue fields, the built-in `Assignees`, and the built-in `Milestone`, grouped or sorted by `Milestone`.
   The milestone column shows each issue's sprint; a team on the label fallback, per [Scheduling An Issue](#scheduling-an-issue), shows the two labels in place of the two field columns and still groups or sorts by `Milestone`.
