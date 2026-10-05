# ITPD Course Materials

Materials for the **IT Product Development (ITPD)** course: what the course expects of your team and your product repository, week by week.

## Start Here

1. **[Course rules](course/rules.md)** — read this first.
   What is public, what is private, deadlines, AI policy.

## Assignments

| Week                             | Hard deadline    | Deliverable                                                                 |
| -------------------------------- | ---------------- | --------------------------------------------------------------------------- |
| [1](assignments/assignment-1.md) | Fri 2 Oct, 23:59 | Initial project research: alternatives, comparison, gaps, value proposition |
| [2](assignments/assignment-2.md) | Fri 9 Oct, 23:59 | Requirements and prototyping: vision, user stories, prototypes, validation  |

Later assignments are added as the course runs.
Each one adds the paths and evidence for its week, and changes nothing about the rules below.

## The Rules

Read once.
The assignments reference these rather than repeating them.

| File                                                                            | What it defines                                                                                    |
| ------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------- |
| [General Requirements](requirements/general-requirements.md)                    | What the terms mean, `docs/` versus `reports/`, identifiers, and how later weeks cite earlier work |
| [Visibility Requirements](requirements/visibility-requirements.md)              | What is public, what goes in Moodle only, what is never committed, and screenshots                 |
| [Research Requirements](requirements/research-requirements.md)                  | Alternatives, the comparison, gaps, value propositions, and research honesty                       |
| [Assumption Requirements](requirements/assumptions-requirements.md)             | Where assumptions live, what they support, and how they are checked and settled                    |
| [Product Vision Requirements](requirements/product-vision-requirements.md)      | The goal, stakeholders, constraints, boundary, and system context diagram                          |
| [User Story Requirements](requirements/user-stories-requirements.md)            | Story issues, acceptance criteria, priorities, and the minimum usable product candidate            |
| [Prototype Requirements](requirements/prototypes-requirements.md)               | What a prototype must change, and where it is recorded                                             |
| [Customer Meeting Requirements](requirements/customer-meetings-requirements.md) | Meetings with the customer, and their scripts, reports, transcripts, and notes                     |
| [Weekly Report Requirements](requirements/weekly-report-requirements.md)        | The weekly report, the AI usage report, deviations, and the Moodle PDF                             |
| [Repository Requirements](requirements/repository-requirements.md)              | GitHub, pull requests, branch protection, link checking, permalinks, snapshots, changelog, CI      |

## The Guides

How to actually do the work.

| Guide                                                                      | For                                                                                |
| -------------------------------------------------------------------------- | ---------------------------------------------------------------------------------- |
| [Researching alternatives](guides/alternatives-research.md)                | Finding your set, choosing properties, evaluating consistently, capturing evidence |
| [From comparison to value proposition](guides/comparison-and-synthesis.md) | Building the table, finding the gaps, writing the proposition and your assumptions |
| [The kickoff meeting](guides/customer-kickoff-meeting.md)                  | The five areas and the Mom Test pass                                               |
| [User stories and prototyping](guides/user-stories-and-prototyping.md)     | Turning a gap into stories, writing criteria, and testing an idea cheaply          |
| [Validating with the customer](guides/validating-with-the-customer.md)     | Running a meeting after the kickoff and recording what it changed                  |

## Course Documents

Reference material from the course.
Neither is a rule you can deviate from, so both live here rather than in `requirements/`.

| Document                                           | What it covers                                                   |
| -------------------------------------------------- | ---------------------------------------------------------------- |
| [Syllabus](course/syllabus.md)                     | Weeks, dates, deliverables, grading weights, and course policies |
| [Teams and projects](course/teams-and-projects.md) | Team numbers and their projects for the current term             |

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
