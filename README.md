# ITPD Course Materials

Materials for the **IT Product Development (ITPD)** course: what the course expects of your team and your product repository, week by week.

## Start Here

1. **[Course rules](course/rules.md)** — read this first.
   What is public, what is private, deadlines, AI policy.
2. **[The course as an agent skill](requirements/repository-requirements.md#the-course-materials-as-an-agent-skill)** — if your team uses a coding agent.
   How to install these materials in your repository so the agent reads them.

## Assignments

| Week                             | Hard deadline     | Deliverable                                                                                        |
| -------------------------------- | ----------------- | -------------------------------------------------------------------------------------------------- |
| [1](assignments/assignment-1.md) | Fri 2 Oct, 23:59  | Initial project research: alternatives, comparison, gaps, value proposition                        |
| [2](assignments/assignment-2.md) | Sat 10 Oct, 23:59 | Requirements and prototyping: vision, user stories, prototypes, validation                         |
| [3](assignments/assignment-3.md) | Sat 17 Oct, 23:59 | Planning and the minimum usable product: plan, threshold, risks, Definition of Done, first release |

Later assignments are added as the course runs.
Each one adds the paths and evidence for its week, and changes nothing about the rules below.

## Lectures

The slides from each class.
They explain the week; [the rules](#the-rules) are what your work is checked against.

| Week | Lecture                                                 |
| ---- | ------------------------------------------------------- |
| 1    | [Course introduction](lectures/lecture-1.pdf)           |
| 2    | [Requirements and prototyping](lectures/lecture-2.pdf)  |
| 3    | [Goals, Planning, Tracking](lectures/lecture-3.pdf)     |
| 4    | [Quality, Architecture & Agile](lectures/lecture-4.pdf) |

## The Rules

Read once.
The assignments reference these rather than repeating them.

| File                                                                                       | What it defines                                                                                                  |
| ------------------------------------------------------------------------------------------ | ---------------------------------------------------------------------------------------------------------------- |
| [General Requirements](requirements/general-requirements.md)                               | What the terms mean, `docs/` versus `reports/`, identifiers, and how later weeks cite earlier work               |
| [Visibility Requirements](requirements/visibility-requirements.md)                         | What is public, what goes in Moodle only, what is never committed, and screenshots                               |
| [Research Requirements](requirements/research-requirements.md)                             | Alternatives, the comparison, gaps, value propositions, and research honesty                                     |
| [Assumption Requirements](requirements/assumptions-requirements.md)                        | Where assumptions live, what rests on them, and how they are checked and settled                                 |
| [Decision Requirements](requirements/decisions-requirements.md)                            | Where decisions live, what each entry says, what cites it, and how it is reversed                                |
| [Product Vision Requirements](requirements/product-vision-requirements.md)                 | The goal, stakeholders, constraints, boundary, and system context diagram                                        |
| [User Story Requirements](requirements/user-stories-requirements.md)                       | Story issues, acceptance criteria, and priorities                                                                |
| [Task Issue Requirements](requirements/task-issues-requirements.md)                        | Task issues, their form, and how a pull request closes one                                                       |
| [Issue Tracking Requirements](requirements/issue-tracking-requirements.md)                 | The rules every issue shares, the sprint milestones, the issue fields, the assignees, and the GitHub project     |
| [Local Task Tracking Requirements](requirements/local-task-tracking-requirements.md)       | A task tracker in the repository, a `TODO.md` checklist, and moving Done tasks out of the active list            |
| [Minimum Usable Product Requirements](requirements/minimum-usable-product-requirements.md) | The minimum usable product candidate, how it is built, delivered, and released, and the customer's verdict on it |
| [Prototype Requirements](requirements/prototypes-requirements.md)                          | What a prototype must change, and where it is recorded                                                           |
| [Planning Requirements](requirements/planning-requirements.md)                             | The project plan, its sprints, releases, and milestones, and the threshold of success                            |
| [Risk Requirements](requirements/risks-requirements.md)                                    | The risk register: a risk's statement and fields, its rating, and its response                                   |
| [Definition Of Done Requirements](requirements/definition-of-done-requirements.md)         | What done means for a story, a task, and a pull request                                                          |
| [Customer Meeting Requirements](requirements/customer-meetings-requirements.md)            | Meetings with the customer, and their scripts, reports, and transcripts                                          |
| [Weekly Report Requirements](requirements/weekly-report-requirements.md)                   | The weekly report, the AI usage report, deviations, and the Moodle PDF                                           |
| [Release Requirements](requirements/releases-requirements.md)                              | The changelog, Semantic Versioning, tags, and release titles                                                     |
| [Pull Request Requirements](requirements/pull-requests-requirements.md)                    | Branches, the pull request template, review, and the evidence                                                    |
| [Repository Requirements](requirements/repository-requirements.md)                         | GitHub, branch protection, link checking, permalinks, snapshots, CI                                              |

## The Guides

How to actually do the work.

| Guide                                                                      | For                                                                                             |
| -------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| [Researching alternatives](guides/alternatives-research.md)                | Finding your set, choosing properties, evaluating consistently, capturing evidence              |
| [From comparison to value proposition](guides/comparison-and-synthesis.md) | Building the table, finding the gaps, writing the proposition and your assumptions              |
| [The kickoff meeting](guides/customer-kickoff-meeting.md)                  | The five areas and the Mom Test pass                                                            |
| [User stories and prototyping](guides/user-stories-and-prototyping.md)     | Turning a gap into stories, writing criteria, and testing an idea cheaply                       |
| [Validating with the customer](guides/validating-with-the-customer.md)     | Running a meeting after the kickoff and recording what it changed                               |
| [Planning and tracking](guides/planning-and-tracking.md)                   | The threshold of success, the plan and its releases, milestones, risks, and progress monitoring |

## Course Documents

Reference material from the course.
None of them is a rule you can deviate from, so they live here rather than in `requirements/`.

| Document                                           | What it covers                                                            |
| -------------------------------------------------- | ------------------------------------------------------------------------- |
| [Syllabus](course/syllabus.md)                     | Weeks, dates, deliverables, grading weights, and course policies          |
| [Course tooling](course/tooling.md)                | Tools the course suggests for transcripts, prototyping, and coding agents |
| [Teams and projects](course/teams-and-projects.md) | Team numbers and their projects for the current term                      |

## How Your Repository Is Organised

Two locations, from Week 1, with nothing moving later:

```text
reports/week-NN/   evidence for that week, a historical record
docs/              maintained documentation, in its final place from the start
```

Your weekly report is `reports/week-NN/README.md`.
It indexes the week's artifacts rather than copying them.
Detailed content goes in dedicated files that the report links.

## The Shape Of Every Submission

Your repository is public and MIT-licensed.
The Moodle submission is a PDF that points at it: a permalink to your week report at the exact commit you submitted, a permalink to the repository at that commit, the private material that must not be public, and a zip snapshot of that commit.

One submission per team, due Thursday 23:59.
