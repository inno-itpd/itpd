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
- [Part 1: Carry Out The Kickoff Action Points](#part-1-carry-out-the-kickoff-action-points)
- [Part 2: State The Product Vision](#part-2-state-the-product-vision)
- [Part 3: Write And Track The User Stories As Issues](#part-3-write-and-track-the-user-stories-as-issues)
- [Part 4: Propose The Minimum Usable Product Candidate](#part-4-propose-the-minimum-usable-product-candidate)
- [Part 5: Prototype The Riskiest Part](#part-5-prototype-the-riskiest-part)
- [Part 6: Validate With The Customer](#part-6-validate-with-the-customer)
- [Part 7: Check The Markdown In CI](#part-7-check-the-markdown-in-ci)
- [Part 8: Report On Your AI Usage](#part-8-report-on-your-ai-usage)
- [What Good Looks Like](#what-good-looks-like)
- [Assignment Report In The Repository](#assignment-report-in-the-repository)
- [Assignment Report On Moodle](#assignment-report-on-moodle)
  - [Submission Procedure](#submission-procedure)
- [Checklist](#checklist)

## Objectives

By the end of this week you should be able to show an instructor:

- What your product must achieve, in one sentence, and which `VP-nn` from Week 1 it serves.
- What your product will deliberately not do, and why that makes your context diagram checkable.
- Eight or more user stories as GitHub issues, each naming the `VP-nn` it supports, with acceptance criteria somebody else could run.
- Which `Must Have` stories make up your minimum usable product candidate, and which core task they let a user complete.
- One place where the customer told you a story was wrong, and the diff that shows what you changed.
- A repository where the Markdown is checked automatically and the check is green.

## Part 1: Carry Out The Kickoff Action Points

The rules:

- Read the action points your kickoff report recorded, with their owners and due weeks: [Meeting Report](../requirements/customer-meetings-requirements.md#meeting-report).
- Cite an action point by its report and anchor: [Identifier Rules](../requirements/general-requirements.md#identifier-rules).
- Cite an action point a story carries out as one of its origins: [The Story](../requirements/user-stories-requirements.md#the-story).
- Record each outcome in the next meeting report, since the kickoff report is not edited: [Meeting Report](../requirements/customer-meetings-requirements.md#meeting-report).

This week:

Your `reports/week-01/README.md` and `reports/week-01/meeting-report.md` record what the customer already disagreed with.
`reports/week-01/meeting-report.md` has at least two action points, each with a named owner and a due date inside Week 2.
They are due now.

1. Carry out each one, or find out why it cannot be done.
2. Record each outcome in `## Previous action points` of `reports/week-02/meeting-report.md`, in [Part 6](#part-6-validate-with-the-customer).
3. Carry the outcome into the artifact it affects, which is usually a story, a constraint, or a note in the product vision.
   An outcome that changes an artifact but appears only in the meeting report has not been carried out.
4. If an action point changed what you were going to build, cite it in that story's `Traces to` list.

## Part 2: State The Product Vision

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

## Part 3: Write And Track The User Stories As Issues

The rules:

- Open each story as an issue, and keep the issue as its record of change: [Where Stories Live](../requirements/user-stories-requirements.md#where-stories-live).
- Write each story as a user's need, with its `Traces to` list: [The Story](../requirements/user-stories-requirements.md#the-story).
- Link each Week 1 identifier a story cites to its section: [Traceability Into Later Weeks](../requirements/general-requirements.md#traceability-into-later-weeks).
- Give each story acceptance criteria somebody else can run, each with its `AC-nn`: [Acceptance Criteria](../requirements/user-stories-requirements.md#acceptance-criteria).
- Label each story's priority, and give the reason for it: [MoSCoW Prioritization](../requirements/user-stories-requirements.md#moscow-prioritization).
- Add both issue forms and the labels, start the forms pull request from a blank issue, and link every pull request to its issue: [Issue Tracking](../requirements/repository-requirements.md#issue-tracking).
- Name branches after their issue, and name in each pull request the `AC-nn` it checks: [Branch Protection And Pull Requests](../requirements/repository-requirements.md#branch-protection-and-pull-requests).
- Recommended: track the team's tasks inside the repository: [Tracking Tasks Inside The Repository](../requirements/repository-requirements.md#tracking-tasks-inside-the-repository).

This week:

1. Add `user-story.yml`, `task.yml`, `config.yml`, and the labels before you open the first story, so every story is opened from the form and every other pull request has a task issue.

The method is in [Step 2: Turn Each Gap Into Stories](../guides/user-stories-and-prototyping.md#step-2-turn-each-gap-into-stories) and [Step 3: Write Criteria Somebody Else Can Run](../guides/user-stories-and-prototyping.md#step-3-write-criteria-somebody-else-can-run).

## Part 4: Propose The Minimum Usable Product Candidate

The rules:

- Name the core task and the `Must Have` stories that complete it: [Minimum Usable Product Candidate](../requirements/user-stories-requirements.md#minimum-usable-product-candidate).
- Record the candidate in the week report: [Weekly Public Report](../requirements/weekly-report-requirements.md#weekly-public-report).
- Record the customer's verdict on it as a decision: [Meeting Report](../requirements/customer-meetings-requirements.md#meeting-report).

This week:

1. Write it under `## Minimum Usable Product Candidate` in `reports/week-02/README.md`.
2. Take the candidate to the customer in [Part 6](#part-6-validate-with-the-customer); their verdict is one of the week's decisions.
3. Submit the candidate as it stands after the verdict.
   The verdict's row in the meeting report's `## Decisions` shows what changed from the proposal.

The method is in [Step 4: Prioritize, Then Pick The First Thing To Build](../guides/user-stories-and-prototyping.md#step-4-prioritize-then-pick-the-first-thing-to-build).

## Part 5: Prototype The Riskiest Part

The rules:

- Record each prototype, the story, gap, or assumption it tested, and what the customer said about it: [Where Prototypes Live](../requirements/prototypes-requirements.md#where-prototypes-live).
- Prototype the part you are least sure about, and keep it disposable: [Validation](../requirements/prototypes-requirements.md#validation).
- Sanitize every screenshot you publish: [Screenshot Evidence](../requirements/visibility-requirements.md#screenshot-evidence).

This week:

1. Record at least one prototype at `reports/week-02/prototypes.md`, with any screenshots in `reports/week-02/images/`.
2. Show it to the customer in the meeting in [Part 6](#part-6-validate-with-the-customer).

The method is in [Step 5: Choose What To Prototype](../guides/user-stories-and-prototyping.md#step-5-choose-what-to-prototype) and [Step 6: Build The Cheapest Thing That Gets A Reaction](../guides/user-stories-and-prototyping.md#step-6-build-the-cheapest-thing-that-gets-a-reaction).

## Part 6: Validate With The Customer

The rules:

- Prepare in writing, assign the roles, and let the customer decide the scope: [Every Meeting](../requirements/customer-meetings-requirements.md#every-meeting).
- Ask the permission questions before you record: [Permission Questions](../requirements/customer-meetings-requirements.md#permission-questions).
- Write the script before the meeting: [Meeting Script](../requirements/customer-meetings-requirements.md#meeting-script).
- Write the report in the team's own words, naming what each decision changed: [Meeting Report](../requirements/customer-meetings-requirements.md#meeting-report).
- Produce the report, and either a transcript or notes: [Where Meeting Artifacts Live](../requirements/customer-meetings-requirements.md#where-meeting-artifacts-live).
- Clean and sanitize a transcript before you publish it: [Meeting Transcript](../requirements/customer-meetings-requirements.md#meeting-transcript).
- Write notes instead when a transcript cannot be made or shared: [Meeting Notes](../requirements/customer-meetings-requirements.md#meeting-notes).
- Name the customer `Customer`, and keep personal data out of the repository: [Sensitive Information Reference](../requirements/visibility-requirements.md#sensitive-information-reference).
- Record what the prototype changed, in every place it lands: [Validation](../requirements/prototypes-requirements.md#validation).
- Add a comment to each story issue the meeting changed: [Where Stories Live](../requirements/user-stories-requirements.md#where-stories-live).

This week:

1. The meeting's target is which of the prototype, the boundary, and the minimum usable product candidate are wrong.
   Show the candidate against a list of every story with its `US-nn`, title, and MoSCoW priority, so the customer can move a story into or out of the candidate or change its priority.
   Walk through each story's acceptance criteria only if time allows, and do not re-run the kickoff.
2. In `reports/week-02/meeting-script.md`, `## Agenda` has a part for the kickoff action points that are due, then shows the prototype, the boundary, and the minimum usable product candidate each in its own part.
   The candidate's part shows that list of every story.
3. `reports/week-02/meeting-report.md` has one row per kickoff action point in `## Previous action points`, at least two rows in `## Decisions`, one of them the customer's verdict on the minimum usable product candidate, and at least two rows in `## Action points`, each due inside Week 3.
4. At least one story issue carries the comment that records what the meeting changed: its statement, an `AC-nn`, or its priority.

The method is in [Guide: Validating With The Customer](../guides/validating-with-the-customer.md).

## Part 7: Check The Markdown In CI

The rules:

- Add a Markdown check that fails the build, on pull requests and on `main`: [Continuous Integration](../requirements/repository-requirements.md#continuous-integration).
- Pin the actions the check uses to a commit: [Pinning Third-Party Actions](../requirements/repository-requirements.md#pinning-third-party-actions).
- Keep the Week 1 link check green: [Link Checking](../requirements/repository-requirements.md#link-checking).

## Part 8: Report On Your AI Usage

The rules:

- Name the tools you used, what for, and what you did with their output: [AI Usage Report](../requirements/weekly-report-requirements.md#ai-usage-report).

This week:

1. Write `reports/week-02/ai-usage.md`.
   This is the week where generated text is most tempting, because a story and a set of acceptance criteria are both prose and an agent will write them in seconds.

## What Good Looks Like

Assume your week report is read by someone who does not know your project.
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
  Three or four stories, not eight.
  The label stops meaning anything when everything is a must.
- **A prototype of the hard part.**
  You built the thing you were least sure about, not the thing you were most pleased with.
  A prototype of the easy part demos well and teaches nothing.
- **A story that is visibly different after the meeting.**
  This is the single clearest signal that the week was a test rather than a formality.

## Assignment Report In The Repository

Write `reports/week-02/README.md`, per [Weekly Public Report](../requirements/weekly-report-requirements.md#weekly-public-report).
This week it also carries:

1. In the summary, what you found out you were wrong about.
2. The coverage table, with these rows:

   | Deliverable            | Artifact                                                                                                                       |
   | ---------------------- | ------------------------------------------------------------------------------------------------------------------------------ |
   | Kickoff action points  | `## Previous action points` in `reports/week-02/meeting-report.md`, and the artifact each outcome changed                      |
   | Product vision         | `docs/product-vision.md`                                                                                                       |
   | User stories           | the `US-nn` issues, filtered by the `user-story` label                                                                         |
   | Issue forms and labels | `.github/ISSUE_TEMPLATE/user-story.yml` and `.github/ISSUE_TEMPLATE/task.yml`, `user-story`, `task`, and the `moscow:*` labels |
   | Prototypes             | `reports/week-02/prototypes.md`                                                                                                |
   | Meeting script         | `reports/week-02/meeting-script.md`                                                                                            |
   | Customer validation    | `reports/week-02/meeting-report.md`, and `reports/week-02/meeting-transcript.md` or `reports/week-02/meeting-notes.md`         |
   | Markdown check         | a link to the latest green `main` run                                                                                          |
   | AI usage               | `reports/week-02/ai-usage.md`                                                                                                  |

   If the customer refused publication of the transcript or the notes, that row says so and points at the Moodle submission instead.

3. `## Minimum Usable Product Candidate`, per [Part 4](#part-4-propose-the-minimum-usable-product-candidate).
4. One line naming the `US-nn` that changed because of the validation meeting, and what changed in it, linking its issue and the meeting report's `#decisions`.
5. Repository evidence: one issue per story that is not `Won't Have`, one merged pull request linked to its issue, and the latest green link check run.
6. `## Deviations`: anything you did differently from this assignment, per [Declaring Deviations](../requirements/weekly-report-requirements.md#declaring-deviations).
   A declared deviation is allowed.

## Assignment Report On Moodle

Create one PDF, per [Private Submission Wrapper](../requirements/weekly-report-requirements.md#private-submission-wrapper).
Keep it to two pages, and put nothing in it except the following:

1. Project name and the team number.
2. A table of team members: GitHub username, real name, and university email.
3. A permalink to `reports/week-02/README.md` at the full commit hash.
4. A link to the validation meeting recording, accessible to instructors, or one line saying the customer refused recording.
5. The meeting transcript, if the customer refused to let you publish it.
6. One line confirming that no private-only material was committed to the repository.

### Submission Procedure

- Merge `reports/week-02/README.md` and every file it links into `main`.
- Take the permalink and the snapshot from that `main` commit, per [Permalinks And Snapshots](../requirements/repository-requirements.md#permalinks-and-snapshots).
- Submit the PDF and the snapshot through Moodle.

## Checklist

- [ ] Each kickoff action point's outcome in `## Previous action points`, and in the artifact it changed ([Part 1](#part-1-carry-out-the-kickoff-action-points)).
- [ ] `docs/product-vision.md`, with at least 3 boundary items ([Part 2](#part-2-state-the-product-vision)).
- [ ] `.github/ISSUE_TEMPLATE/user-story.yml`, `task.yml`, `config.yml`, and the labels, added from a blank issue ([Part 3](#part-3-write-and-track-the-user-stories-as-issues)).
- [ ] The story issues ([Part 3](#part-3-write-and-track-the-user-stories-as-issues)).
- [ ] `## Minimum Usable Product Candidate` in `reports/week-02/README.md` ([Part 4](#part-4-propose-the-minimum-usable-product-candidate)).
- [ ] `reports/week-02/prototypes.md` with at least one prototype, and no prototype code on `main` ([Part 5](#part-5-prototype-the-riskiest-part)).
- [ ] `reports/week-02/meeting-script.md` ([Part 6](#part-6-validate-with-the-customer)).
- [ ] `reports/week-02/meeting-report.md`, with a row per kickoff action point, 2+ decisions including the candidate verdict and 2+ action points due in Week 3 ([Part 6](#part-6-validate-with-the-customer)).
- [ ] `reports/week-02/meeting-transcript.md` or `meeting-notes.md` ([Part 6](#part-6-validate-with-the-customer)).
- [ ] **At least one story issue with a comment from the validation meeting** ([Part 6](#part-6-validate-with-the-customer)).
- [ ] Markdown check and link check green on `main` ([Part 7](#part-7-check-the-markdown-in-ci)).
- [ ] `reports/week-02/ai-usage.md` ([Part 8](#part-8-report-on-your-ai-usage)).
- [ ] `reports/week-02/README.md` ([Assignment Report In The Repository](#assignment-report-in-the-repository)).
- [ ] Everything merged into `main`, with the permalink and the snapshot taken from that commit ([Submission Procedure](#submission-procedure)).
- [ ] PDF ready, and the permalink opened in a browser at the full commit hash ([Assignment Report On Moodle](#assignment-report-on-moodle)).
