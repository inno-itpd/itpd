---
name: itpd
description: Rules, assignments, and guides for the IT Product Development (ITPD) course. Use when working in an ITPD team's product repository on a course deliverable — a weekly report under reports/week-NN/, the research, assumptions, decisions, or product vision under docs/, story or task issues, a customer meeting script or report, the AI usage report, the Moodle PDF, or the repository setup and CI the course requires.
---

# ITPD Course Materials

This directory is a copy of the ITPD course materials, installed in a team's product repository as a skill.
Read it; do not edit it.
The requirements here are what the team's work is checked against, so look a rule up rather than guessing it.

## How The Materials Are Layered

| Path | What it is |
| -------------------------------------------------------------- | ---------------------------------------------- ----------------------------------------------------------------- |
| [`course/rules.md`](course/rules.md) | The course contract and the router into the requirements.
Read it first. |
| `assignments/assignment-N.md` | What week N requires, as additions to the requirements |
| `requirements/` | The rules.
Each is labelled `Required`, `Recommended`, or `Example`, and carries a `**Since: WN**` week marker. |
| `guides/` | How to do the work.
A guide explains a method and is not a rule. |
| [`course/syllabus.md`](course/syllabus.md) | Weeks, dates, deliverables, grading, and course policies |
| [`course/teams-and-projects.md`](course/teams-and-projects.md) | Team numbers and their projects |

An assignment links the requirements it builds on; follow those links rather than working from the assignment alone.
An `Example` shows the shape of an artifact, not the team's content.

## Finding The Current Week

Find today's date in [the weekly schedule](course/syllabus.md#3-weekly-curriculum--milestones), then read that week's assignment from [the assignment table](README.md#assignments).
A requirement applies from the week its `**Since: WN**` marker names.
An assignment for a later week may not exist yet; do not anticipate it.

## Where Each Kind Of Work Is Ruled

| Work | Requirements | Guide |
| ------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ------------------------------------ --------------------------------------------------------------------------------------------------- |
| Terms, `docs/` versus `reports/`, identifiers, citing earlier weeks | [General](requirements/general-requirements.md) | |
| What may be public, what goes in Moodle only, screenshots | [Visibility](requirements/visibility-requirements.md) | |
| Alternatives, comparison, gaps, value propositions | [Research](requirements/research-requirements.md) | [Researching alternatives](guides/alternatives-research.md), [From comparison to value proposition](guides/comparison-and-synthesis.md) |
| `docs/assumptions.md` | [Assumptions](requirements/assumptions-requirements.md) | [From comparison to value proposition](guides/comparison-and-synthesis.md) |
| `docs/decisions.md` | [Decisions](requirements/decisions-requirements.md) | [Validating with the customer](guides/validating-with-the-customer.md) |
| `docs/product-vision.md` and its context diagram | [Product vision](requirements/product-vision-requirements.md) | |
| Story issues and acceptance criteria | [User stories](requirements/user-stories-requirements.md) | [User stories and prototyping](guides/user-stories-and-prototyping.md) |
| Task issues | [Task issues](requirements/task-issues-requirements.md) | |
| A task tracker in the repository, `TODO.md`, moving Done tasks | [Local task tracking](requirements/local-task-tracking-requirements.md) | |
| The minimum usable product candidate | [Minimum usable product](requirements/minimum-usable-product-requirements.md) | |
| Prototypes | [Prototypes](requirements/prototypes-requirements.md) | [User stories and prototyping](guides/user-stories-and-prototyping.md) |
| Meeting scripts, reports, and transcripts | [Customer meetings](requirements/customer-meetings-requirements.md) | [The kickoff meeting](guides/customer-kickoff-meeting.md), [Validating with the customer](guides/validating-with-the-customer.md) |
| The weekly report, the AI usage report, deviations, the Moodle PDF | [Weekly report](requirements/weekly-report-requirements.md) | |
| GitHub, issues, pull requests, link checking, CI, permalinks | [Repository](requirements/repository-requirements.md) | |

## Working In The Team's Repository

- Findings, quotes, and evidence come from the team's own research and meetings, never from an example here; see [Research Honesty Rules](requirements/research-requirements.md#research-honesty-rules).
- Before writing anything that names a person or could be private, check [Sensitive Information Reference](requirements/visibility-requirements.md#sensitive-information-reference).
- Your work is disclosed in the week's [AI usage report](requirements/weekly-report-requirements.md#ai-usage-report).
- Follow-up work you notice outside the task you were given is a candidate task: record it where the team keeps its candidates, per [A TODO.md Checklist](requirements/local-task-tracking-requirements.md#a-todomd-checklist), rather than doing it unasked or opening an issue for it.
  If the team keeps no list of candidates, name the follow-up in your reply.

## Files That Are Not Course Material

These files maintain the course repository itself and are not instructions for a team's repository; ignore them:

- `AGENTS.md` and `lectures/AGENTS.md`, which instruct the course maintainers' agents, and `CONTRIBUTING.md`, which sets up the maintainers' development shell.
- `backlog/`, the maintainers' task tracker.
- `scripts/`, `eslint/`, `prettier/`, `package.json`, `pnpm-lock.yaml`, `flake.nix`, and `flake.lock`.
- `.github/` and `lychee.toml`, except where a requirement links them as an example.

The lecture slides are `lectures/lecture-N.pdf`, and `lectures/lecture-N.typ` holds the same content as text.
