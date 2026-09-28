# ITPD Course Materials

Materials for the **IT Product Development (ITPD)** course: what the course expects of your team and your product repository, week by week.

## Start Here

1. **[Course rules](course/rules.md)** — read this first.
   What is public, what is private, deadlines, AI policy.
   One page.
2. **[Assignment 1](assignments/assignment-1.md)** — this week's work.

## Assignments

| Week                             | Due              | Deliverable                                                                 |
| -------------------------------- | ---------------- | --------------------------------------------------------------------------- |
| [1](assignments/assignment-1.md) | Thu 1 Oct, 23:59 | Initial project research: alternatives, comparison, gaps, value proposition |

Later assignments are added as the course runs.
Each one adds the paths and evidence for its week, and changes nothing about the rules below.

## The Rules

Read once.
The assignments reference these rather than repeating them.

| File                                                               | What it defines                                                                                                         |
| ------------------------------------------------------------------ | ----------------------------------------------------------------------------------------------------------------------- |
| [Artifact Requirements](requirements/artifact-requirements.md)     | What an artifact is, where it lives, who may see it, and the structure of each recurring artifact                       |
| [Process Requirements](requirements/process-requirements.md)       | What counts as a valid alternative, gap, and value proposition, and how your Week 1 identifiers are used in later weeks |
| [Repository Requirements](requirements/repository-requirements.md) | GitHub, pull requests, branch protection, link checking, permalinks, snapshots, changelog, CI                           |

## The Guides

How to actually do the work.

| Guide                                                                      | For                                                                                |
| -------------------------------------------------------------------------- | ---------------------------------------------------------------------------------- |
| [Researching alternatives](guides/alternatives-research.md)                | Finding your set, choosing properties, evaluating consistently, capturing evidence |
| [From comparison to value proposition](guides/comparison-and-synthesis.md) | Building the table, finding the gaps, writing the proposition and your assumptions |
| [The kickoff interview](guides/customer-interview.md)                      | The five areas, the Mom Test pass, and the meeting roles                           |

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
