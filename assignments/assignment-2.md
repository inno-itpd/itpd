# Assignment 2: Requirements And Prototyping

**This week's dates:**

- Soft deadline: Thursday 8 October, 23:59.
- Hard deadline: Friday 9 October, 23:59.

See [Deadlines And Submission](../course/rules.md#deadlines-and-submission).

One submission per team.

Week 1 ended with a research deliverable: a direction and the evidence behind it.
This week you turn that direction into requirements, and then find out how much of it was wrong.
There is no product code this week.
A code spike on a branch is a prototype, not product code.

What you hand in is a description of what your product must do, and a record of at least one place where the customer disagreed with it.

<h2>Table of contents</h2>

- [Objectives](#objectives)
- [Part 1: Track The Work As Issues](#part-1-track-the-work-as-issues)
- [Part 2: Move The Week 1 Decisions Into The Decisions Log](#part-2-move-the-week-1-decisions-into-the-decisions-log)
- [Part 3: Move The Week 1 Assumptions Into The Assumptions Log](#part-3-move-the-week-1-assumptions-into-the-assumptions-log)
- [Part 4: Check The Markdown In CI](#part-4-check-the-markdown-in-ci)
- [Part 5: State The Product Vision](#part-5-state-the-product-vision)
- [Part 6: Write The User Stories As Issues](#part-6-write-the-user-stories-as-issues)
- [Part 7: Propose The Minimum Usable Product Candidate](#part-7-propose-the-minimum-usable-product-candidate)
- [Part 8: Prototype The Riskiest Part](#part-8-prototype-the-riskiest-part)
- [Part 9: Carry Out The Kickoff Action Points](#part-9-carry-out-the-kickoff-action-points)
- [Part 10: Validate With The Customer](#part-10-validate-with-the-customer)
- [Part 11: Report On Your AI Usage](#part-11-report-on-your-ai-usage)
- [What Good Looks Like](#what-good-looks-like)
- [Assignment Report In The Repository](#assignment-report-in-the-repository)
- [Assignment Report On Moodle](#assignment-report-on-moodle)
  - [Submission Procedure](#submission-procedure)
- [Checklist](#checklist)

## Objectives

By the end of this week you should be able to show a reader:

- What your product must achieve, in one sentence, and which `VP-nn` from Week 1 it serves.
- What your product will deliberately not do, and why that makes your context diagram checkable.
- Eight or more story issues, each naming the `VP-nn` it supports, with acceptance criteria somebody else could run.
- Which `Must Have` stories make up your minimum usable product candidate, and which core task they let a user complete.
- One place where the customer told you something was wrong, and the comment or update that records what you changed.
- A repository where the Markdown is checked automatically and the check is green.

## Part 1: Track The Work As Issues

The rules:

- Add both issue forms and the labels, start the forms pull request from a blank issue, and link every pull request to its issue: [Issue Tracking](../requirements/repository-requirements.md#issue-tracking).
- Name branches after their issue, and name in each pull request the `AC-nn` it checks: [Branch Protection And Pull Requests](../requirements/repository-requirements.md#branch-protection-and-pull-requests).
- Recommended: track the team's tasks inside the repository: [Tracking Tasks Inside The Repository](../requirements/repository-requirements.md#tracking-tasks-inside-the-repository).

This week:

1. Before any other Week 2 pull request, merge the one that adds `user-story.yml`, `task.yml`, and `config.yml`, and create the labels.

## Part 2: Move The Week 1 Decisions Into The Decisions Log

The rules:

- Write each decision as an entry with its fields: [The Decision](../requirements/decisions-requirements.md#the-decision).
- Cite a decision from each artifact it changed: [What Cites It](../requirements/decisions-requirements.md#what-cites-it).

This week:

1. Before anything cites a Week 1 decision, write `docs/decisions.md` from your Week 1 decisions, in one pull request.
   This is a one-time catch-up: the decisions log became a Week 1 artifact after you submitted Week 1, so your decisions are still rows of the `## Decisions` table in `reports/week-01/meeting-report.md`, with the columns `Decision`, `Made by`, and `Traces to`, and of the team's own `## Decisions` table in `reports/week-01/README.md` when it has one.
   Give each row its own `DEC-nn` section, the kickoff rows first and then the README rows, numbered in that order:

   - `**Date:**` is the kickoff date for a kickoff row, and the date the team decided for a README row.
   - `**Made by:**` is the field's value for the row's `Made by`, and `Team` for a README row.
   - `**Source:**` links the kickoff report for a kickoff row.
   - `**Why:**` is written from the kickoff report and its transcript, or from the team's own account when there is no transcript.

2. To find what each decision changed, read its row's `Traces to`; its `None` means only that the decision did not come from the research.
   Leave both Week 1 files as they are, apart from a [formatting-only change](../requirements/general-requirements.md#where-artifacts-live-in-the-repository).

## Part 3: Move The Week 1 Assumptions Into The Assumptions Log

The rules:

- Write each assumption as an entry with its status: [The Assumption](../requirements/assumptions-requirements.md#the-assumption).
- Cite an assumption from each artifact that rests on it: [What Rests On It](../requirements/assumptions-requirements.md#what-rests-on-it).
- Settle an assumption with its evidence, citing the `DEC-nn` that settled it: [Checking And Settling](../requirements/assumptions-requirements.md#checking-and-settling).

This week:

1. Before a story cites an assumption, move your Week 1 assumptions table from `docs/research/value-proposition.md` into `docs/assumptions.md`, in one pull request.
   This is the same one-time catch-up as the decisions in [Part 2](#part-2-move-the-week-1-decisions-into-the-decisions-log).
   Give each row its own `ASM-nn` section, numbered in the table's order, with its current status, and leave no copy of the table in `value-proposition.md`.
2. Merge it and `docs/decisions.md` before a story links them, because a story [links files on `main`](../requirements/repository-requirements.md#issue-tracking).

## Part 4: Check The Markdown In CI

The rules:

- Add a Markdown check that fails the build, on pull requests and on `main`: [Continuous Integration](../requirements/repository-requirements.md#continuous-integration).
- Pin the actions the check uses to a commit: [Pinning Third-Party Actions](../requirements/repository-requirements.md#pinning-third-party-actions).
- Keep the Week 1 link check green: [Link Checking](../requirements/repository-requirements.md#link-checking).
- Exclude nothing from the check except a task tracker's directory: [Continuous Integration](../requirements/repository-requirements.md#continuous-integration).
- Change earlier weeks' files only by a formatting-only change, in a pull request of its own: [Where Artifacts Live In The Repository](../requirements/general-requirements.md#where-artifacts-live-in-the-repository).

This week:

1. Run the Markdown tool locally before you add the workflow.
2. Fix what it reports in earlier weeks' files, and merge that pull request before the one that adds the workflow, so the check is green on its first run on `main`.

## Part 5: State The Product Vision

The rules:

- Keep the vision in one maintained file, and keep it current: [Where The Vision Lives](../requirements/product-vision-requirements.md#where-the-vision-lives).
- State what the product must achieve, and the `VP-nn` it traces to: [Goal](../requirements/product-vision-requirements.md#goal).
- Name everyone whose interests the product touches: [Stakeholders](../requirements/product-vision-requirements.md#stakeholders).
- Record the conditions the product has to live inside, and what each one costs you: [Constraints](../requirements/product-vision-requirements.md#constraints).
- List the jobs the product will not do, and who does each one instead: [Boundary](../requirements/product-vision-requirements.md#boundary).
- Draw the product among the actors and systems it exchanges data with: [System Context](../requirements/product-vision-requirements.md#system-context).

This week:

1. Write `docs/product-vision.md`.
2. Give the boundary at least 3 items.

The method is in [Step 1: Write The Goal And The Boundary](../guides/user-stories-and-prototyping.md#step-1-write-the-goal-and-the-boundary).

## Part 6: Write The User Stories As Issues

The rules:

- Open each story as an issue, and keep the issue as its record of change: [Where Stories Live](../requirements/user-stories-requirements.md#where-stories-live).
- Write each story as a user's need, with its `Traces to` list: [The Story](../requirements/user-stories-requirements.md#the-story).
- Keep each assumption a story rests on as an `ASM-nn` entry, and settle it with its evidence: [Assumption Requirements](../requirements/assumptions-requirements.md).
- Link each Week 1 identifier a story cites to its section: [Traceability Into Later Weeks](../requirements/general-requirements.md#traceability-into-later-weeks).
- Give each story acceptance criteria somebody else can run, each with its `AC-nn`: [Acceptance Criteria](../requirements/user-stories-requirements.md#acceptance-criteria).
- Label each story's priority, and give the reason for it: [MoSCoW Prioritization](../requirements/user-stories-requirements.md#moscow-prioritization).

The method is in [Step 2: Turn Each Gap Into Stories](../guides/user-stories-and-prototyping.md#step-2-turn-each-gap-into-stories) and [Step 3: Write Criteria Somebody Else Can Run](../guides/user-stories-and-prototyping.md#step-3-write-criteria-somebody-else-can-run).

## Part 7: Propose The Minimum Usable Product Candidate

The rules:

- Name the core task and the `Must Have` stories that complete it, and cite the customer's verdict on them: [Minimum Usable Product Candidate](../requirements/user-stories-requirements.md#minimum-usable-product-candidate).
- Record the candidate in the weekly public report: [Weekly Public Report](../requirements/weekly-report-requirements.md#weekly-public-report).
- Keep the priority of a story the verdict drops from the candidate, unless the customer changed it: [Minimum Usable Product Candidate](../requirements/user-stories-requirements.md#minimum-usable-product-candidate).

This week:

1. Take the candidate to the customer in [Part 10](#part-10-validate-with-the-customer).
2. Submit the candidate as it stands after the verdict, citing the verdict's `DEC-nn`.

The method is in [Step 4: Prioritize, Then Pick The First Thing To Build](../guides/user-stories-and-prototyping.md#step-4-prioritize-then-pick-the-first-thing-to-build).

## Part 8: Prototype The Riskiest Part

The rules:

- Record each prototype, the story or gap it tested and the assumption when that is the risky part, and what the customer said about it: [Where Prototypes Live](../requirements/prototypes-requirements.md#where-prototypes-live).
- Prototype the story or assumption you are least sure about: [Validation](../requirements/prototypes-requirements.md#validation).
- Keep prototype code off `main`: [Where Prototypes Live](../requirements/prototypes-requirements.md#where-prototypes-live).
- Sanitize every screenshot you publish: [Screenshot Evidence](../requirements/visibility-requirements.md#screenshot-evidence).

This week:

1. Record at least one prototype at `reports/week-02/prototypes.md`, with any screenshots in `reports/week-02/images/`.
2. Show it to the customer in the meeting in [Part 10](#part-10-validate-with-the-customer).

The method is in [Step 5: Choose What To Prototype](../guides/user-stories-and-prototyping.md#step-5-choose-what-to-prototype) and [Step 6: Build The Cheapest Thing That Gets A Reaction](../guides/user-stories-and-prototyping.md#step-6-build-the-cheapest-thing-that-gets-a-reaction).

## Part 9: Carry Out The Kickoff Action Points

The rules:

- Read the action points your kickoff report recorded, with their owners and due weeks: [Meeting Report](../requirements/customer-meetings-requirements.md#meeting-report).
- Cite an action point by its report and anchor: [Identifier Rules](../requirements/general-requirements.md#identifier-rules).
- Cite an action point a story carries out as one of its origins: [The Story](../requirements/user-stories-requirements.md#the-story).
- Record each outcome in the next meeting report, since the kickoff report is not edited: [Meeting Report](../requirements/customer-meetings-requirements.md#meeting-report).
- Carry each outcome into the artifact it changed: [Meeting Report](../requirements/customer-meetings-requirements.md#meeting-report).

This week:

The kickoff action points are the rows of `## Action points` in `reports/week-01/meeting-report.md` that are due in Week 2.
They are due now, and at the latest before the meeting in [Part 10](#part-10-validate-with-the-customer).

1. Carry out each action point, or find out why it cannot be done.
2. Carry the outcome into the artifact it affects, which is usually a story, an assumption, the research, or the product vision.

## Part 10: Validate With The Customer

The rules:

- Prepare in writing, assign the roles, and let the customer decide the scope: [Every Meeting](../requirements/customer-meetings-requirements.md#every-meeting).
- Ask the permission questions before you record: [Permission Questions](../requirements/customer-meetings-requirements.md#permission-questions).
- Write the script before the meeting: [Meeting Script](../requirements/customer-meetings-requirements.md#meeting-script).
- State the meeting's target in one sentence, and ask only questions that serve it: [Meeting Script](../requirements/customer-meetings-requirements.md#meeting-script).
- Open the agenda with the permission questions, and close it with the read-back: [Meeting Script](../requirements/customer-meetings-requirements.md#meeting-script).
- Write the report in the team's own words: [Meeting Report](../requirements/customer-meetings-requirements.md#meeting-report).
- Give each decision a `DEC-nn` entry, list it in the report, and cite it from what it changed: [Decision Requirements](../requirements/decisions-requirements.md).
- Produce the report, and a transcript when the meeting was recorded or held in writing: [Where Meeting Artifacts Live](../requirements/customer-meetings-requirements.md#where-meeting-artifacts-live).
- Clean and sanitize a transcript before you publish it: [Meeting Transcript](../requirements/customer-meetings-requirements.md#meeting-transcript).
- Name the customer `Customer`, and keep personal data out of the repository: [Sensitive Information Reference](../requirements/visibility-requirements.md#sensitive-information-reference).
- Change something because of what the customer said about the prototype, and record it in every place it lands: [Validation](../requirements/prototypes-requirements.md#validation).
- Add a comment to each story issue the meeting changed: [Where Stories Live](../requirements/user-stories-requirements.md#where-stories-live).

This week:

1. The meeting has to settle whether the prototype, the boundary, and the minimum usable product candidate are right.
   Walk through each story's acceptance criteria only if time allows.
2. In `reports/week-02/meeting-script.md`, `## Agenda` shows the prototype, the boundary, and the minimum usable product candidate each in its own part, ordered per [Step 4: Order The Meeting](../guides/validating-with-the-customer.md#step-4-order-the-meeting).
   The candidate's part names the core task and lists only the candidate's `US-nn`, each linking its issue, so the script is not a second list of stories.
   It also links the issue list filtered by the `user-story` label, which shows every other story with its `moscow:*` label, so the customer can move a story into or out of the candidate or change its priority.
3. `reports/week-02/meeting-report.md` has at least two decisions in `## Decisions`, one of them the customer's verdict on the minimum usable product candidate, and at least two rows in `## Action points`, each due inside Week 3.

The method is in [Guide: Validating With The Customer](../guides/validating-with-the-customer.md).

## Part 11: Report On Your AI Usage

The rules:

- Name the tools you used, what for, and what you did with their output: [AI Usage Report](../requirements/weekly-report-requirements.md#ai-usage-report).

## What Good Looks Like

Assume your weekly public report is read by someone who does not know your project.
A strong submission has:

- **A goal that could fail.**
  Somebody could tell, at the end of the course, whether you achieved it.
  "Be fast" and "delight the user" are not goals, and a vision whose goal is a feature is a vision with nothing in it.
- **A boundary somebody argued with.**
  Your list of what the product will not do is specific enough that the customer disagreed with at least one item.
  A boundary nobody contested is a list you wrote for yourself.
- **Criteria that a stranger could run.**
  Read one criterion without reading the story.
  If you cannot tell whether it passed, it is not a criterion.
- **A `Must Have` list you can actually build.**
  Three or four stories, not eight, of which two or three make up the candidate.
  A customer can argue with three musts; eight is a wish list.
- **A prototype of the hard part.**
  You built the thing you were least sure about, not the thing you were most pleased with.
  If you could predict the customer's reaction, the prototype was not worth building.
- **Something visibly different after the meeting.**
  A story, a boundary item, or an assumption says something else because the customer disagreed.
  This is the single clearest signal that the week was a test rather than a formality.

## Assignment Report In The Repository

Write `reports/week-02/README.md`, per [Weekly Public Report](../requirements/weekly-report-requirements.md#weekly-public-report).
This week it also carries:

1. In the summary, what you found out you were wrong about.
2. The coverage table, with these rows:

   | Deliverable            | Artifact                                                                                                            |
   | ---------------------- | ------------------------------------------------------------------------------------------------------------------- |
   | Kickoff action points  | `## Previous action points` in `reports/week-02/meeting-report.md`                                                  |
   | Product vision         | `docs/product-vision.md`                                                                                            |
   | System context diagram | `docs/architecture/context.<ext>`, or its view-only link                                                            |
   | Assumptions            | `docs/assumptions.md`                                                                                               |
   | Decisions              | `docs/decisions.md`                                                                                                 |
   | Story issues           | the `US-nn` issues, filtered by the `user-story` label                                                              |
   | Issue forms            | `.github/ISSUE_TEMPLATE/user-story.yml`, `.github/ISSUE_TEMPLATE/task.yml`, and `.github/ISSUE_TEMPLATE/config.yml` |
   | Labels                 | the repository's labels page, with `user-story`, `task`, and the `moscow:*` labels                                  |
   | Pull request template  | `.github/pull_request_template.md`                                                                                  |
   | Prototypes             | `reports/week-02/prototypes.md`                                                                                     |
   | Meeting script         | `reports/week-02/meeting-script.md`                                                                                 |
   | Customer validation    | `reports/week-02/meeting-report.md`, and `reports/week-02/meeting-transcript.md` when there is one                  |
   | AI usage               | `reports/week-02/ai-usage.md`                                                                                       |

   If the customer refused publication of the transcript, that row says so and points at the Moodle submission instead.

3. `## Minimum Usable Product Candidate`, per [Part 7](#part-7-propose-the-minimum-usable-product-candidate).
4. One line naming what changed because of what the customer said about the prototype, a `US-nn`, a boundary item, a constraint, or an `ASM-nn`, and what changed in it, linking it and the `DEC-nn` behind the change.
5. Repository evidence: one merged pull request linked to its issue, the latest green link check run, and the latest green Markdown check run on `main`.
6. `## Deviations`: anything you did differently from this assignment, per [Declaring Deviations](../requirements/weekly-report-requirements.md#declaring-deviations).

## Assignment Report On Moodle

Create one PDF, per [Private Submission Wrapper](../requirements/weekly-report-requirements.md#private-submission-wrapper).
Keep it to two pages, and put nothing in it except the following.
A transcript under item 5 goes in an appendix, which the two pages do not count.

1. Project name and the team number.
2. A table of team members: GitHub username, real name, and university email.
3. A permalink to `reports/week-02/README.md` at the full commit hash.
4. A link to the validation meeting recording, accessible to instructors, or one line saying why there is none: the customer refused recording, or the meeting was held in writing.
5. The meeting transcript, if the customer refused to let you publish it.
6. One line confirming that no private-only material was committed to the repository.

### Submission Procedure

- Merge `reports/week-02/README.md` and every file it links into `main`.
- Take the permalink and the snapshot from that `main` commit, per [Permalinks And Snapshots](../requirements/repository-requirements.md#permalinks-and-snapshots).
- Submit the PDF and the snapshot through Moodle.

## Checklist

- [ ] `.github/ISSUE_TEMPLATE/user-story.yml`, `task.yml`, `config.yml`, and the labels, in one pull request started from a blank issue ([Part 1](#part-1-track-the-work-as-issues)).
- [ ] `.github/pull_request_template.md` asks for the `AC-nn` each change checks ([Part 1](#part-1-track-the-work-as-issues)).
- [ ] `docs/decisions.md` with a `DEC-nn` section for each Week 1 decision, each cited from what it changed, if it changed anything yet ([Part 2](#part-2-move-the-week-1-decisions-into-the-decisions-log)).
- [ ] `docs/assumptions.md` with an `ASM-nn` section for each Week 1 assumption, and no table left in `value-proposition.md` ([Part 3](#part-3-move-the-week-1-assumptions-into-the-assumptions-log)).
- [ ] Earlier weeks' Markdown fixed in a formatting-only pull request, merged before the Markdown check ([Part 4](#part-4-check-the-markdown-in-ci)).
- [ ] Markdown check and link check green on `main` ([Part 4](#part-4-check-the-markdown-in-ci)).
- [ ] `docs/product-vision.md`, with at least 3 boundary items and the system context diagram ([Part 5](#part-5-state-the-product-vision)).
- [ ] The story issues ([Part 6](#part-6-write-the-user-stories-as-issues)).
- [ ] `## Minimum Usable Product Candidate` in `reports/week-02/README.md` ([Part 7](#part-7-propose-the-minimum-usable-product-candidate)).
- [ ] `reports/week-02/prototypes.md` with at least one prototype, and no prototype code on `main` ([Part 8](#part-8-prototype-the-riskiest-part)).
- [ ] Each kickoff action point's outcome in `## Previous action points`, and in the artifact it changed ([Part 9](#part-9-carry-out-the-kickoff-action-points)).
- [ ] `reports/week-02/meeting-script.md`, with the candidate's part listing its `US-nn` ([Part 10](#part-10-validate-with-the-customer)).
- [ ] `reports/week-02/meeting-report.md`, with a row per kickoff action point, 2+ decisions listed by `DEC-nn` including the candidate verdict, and 2+ action points due in Week 3 ([Part 10](#part-10-validate-with-the-customer)).
- [ ] `reports/week-02/meeting-transcript.md`, if the meeting was recorded or held in writing ([Part 10](#part-10-validate-with-the-customer)).
- [ ] **At least one artifact changed because of what the customer said about the prototype, citing its `DEC-nn`** ([Part 10](#part-10-validate-with-the-customer)).
- [ ] `reports/week-02/ai-usage.md` ([Part 11](#part-11-report-on-your-ai-usage)).
- [ ] `reports/week-02/README.md` ([Assignment Report In The Repository](#assignment-report-in-the-repository)).
- [ ] Everything merged into `main`, with the permalink and the snapshot taken from that commit ([Submission Procedure](#submission-procedure)).
- [ ] PDF ready, and the permalink opened in a browser at the full commit hash ([Assignment Report On Moodle](#assignment-report-on-moodle)).
