# Assignment 2: Requirements And Prototyping

**This week's dates:**

- Soft deadline: Thursday 8 October, 23:59
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
- [Before You Start](#before-you-start)
- [Part 1: State The Product Vision](#part-1-state-the-product-vision)
- [Part 2: Write And Prioritize The User Stories](#part-2-write-and-prioritize-the-user-stories)
- [Part 3: Track Every Story As An Issue](#part-3-track-every-story-as-an-issue)
- [Part 4: Check The Markdown In CI](#part-4-check-the-markdown-in-ci)
- [Part 5: Prototype The Riskiest Part](#part-5-prototype-the-riskiest-part)
- [Part 6: Validate With The Customer](#part-6-validate-with-the-customer)
- [Part 7: Carry Out The Kickoff Action Points](#part-7-carry-out-the-kickoff-action-points)
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
- Eight or more user stories, at least five of them active, each active story with acceptance criteria somebody else could run, each traced to a `GAP-nn`.
- Which story you would build first, and which one you would drop first.
- One place where the customer told you a story was wrong, and the diff that shows what you changed.
- A repository where the Markdown is checked automatically and the check is green.

## Before You Start

Read these once.
They are the rules; this assignment only tells you what this week requires.

| Read                                                                                | For                                                                                       |
| ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| [Course rules](../course/rules.md)                                                  | What is public, what is private, deadlines, AI policy                                     |
| [Artifact Requirements](../requirements/artifact-requirements.md)                   | Where things live, the vision, story and prototype structures, the meeting report format  |
| [Repository Requirements](../requirements/repository-requirements.md)               | Issue templates, the Markdown check, branch protection, permalinks, snapshots             |
| [Process Requirements](../requirements/process-requirements.md)                     | What a goal, constraint, boundary, story, and validation have to satisfy                  |
| [Guide: user stories and prototyping](../guides/user-stories-and-prototyping.md)    | How to turn a gap into stories, and how to prototype cheaply                              |
| [Guide: validating with the customer](../guides/validating-with-the-customer.md)    | How to run a meeting after the kickoff and record what it changed                         |
| [Guide: the kickoff interview](../guides/customer-interview.md)                     | The kickoff method: the five areas and the Mom Test pass, which this week does not repeat |
| [Your Week 1 report](../requirements/artifact-requirements.md#weekly-public-report) | What the customer already disagreed with, and what you owe them from the kickoff          |

## Part 1: State The Product Vision

Write `docs/product-vision.md`.
Follow [Product Vision](../requirements/artifact-requirements.md#product-vision), and read [Product Vision And Goals](../requirements/process-requirements.md#product-vision-and-goals) before you start.

1. State the **goal**: what the product must achieve.
   One short paragraph.
   The [Product Vision example](../requirements/artifact-requirements.md#product-vision) shows the shape.

   The goal traces to at least one `VP-nn` in `docs/research/value-proposition.md`, and you link to the section rather than restating it.

2. List the **constraints**, each marked as customer-given, team-given, environmental, or derived, and each with what it costs you.
   The deployment target and any language or platform mandate that came with your catalog project are customer-given.
   Your team size is team-given, the weeks left in the course are environmental, and anything that follows from the others is derived.
   An assumption is not a constraint; assumptions live in your Week 1 assumptions table.
   See [Constraints](../requirements/process-requirements.md#constraints).
3. Name the **stakeholders**: who uses the product, who operates it, who is affected by it without using it.
4. Write the **boundary**: the list of things the product will not do.
   Make it a list, not a paragraph, because a list is something a reader can argue with item by item.
5. Draw a **system context diagram** showing the product, the external actors, and the external systems it exchanges data with.
   Any format is allowed, as long as the diagram is committed or linked view-only and the text beside it describes the external actors.
   Do not draw containers or components; those are Week 4.
   See [Stakeholders, Boundary, And Context](../requirements/process-requirements.md#stakeholders-boundary-and-context).
6. Link to `docs/user-stories/README.md` and to your current week report.

## Part 2: Write And Prioritize The User Stories

1. Write **8 or more** user stories in `docs/user-stories/us/`, one file per story, named `US-01.md`, `US-02.md`, and so on, and keep at least **5 of them active**.
2. `docs/user-stories/README.md` is the index and the registry of identifiers: an `## Active stories` table with one row per active story, its `US-nn`, title, MoSCoW priority, the `GAP-nn` it closes, the `VP-nn` it supports, and a link to its issue, and an `## Inactive stories` table for the rest.
   Follow [User Stories](../requirements/artifact-requirements.md#user-stories).
3. Every story is a **user's need**, not a solution, and every active story carries **at least two acceptance criteria**, each observable and pass/fail.
   A story does not name a screen, a button, or a component; an acceptance criterion may name a screen, a field, or a system state, because that is what an observer checks.
   Any notation works, including `Given`/`When`/`Then`.
   The test is whether somebody who is not you could run the check and get the same answer.
   See [User Stories And Acceptance Criteria](../requirements/process-requirements.md#user-stories-and-acceptance-criteria).
4. Split any story too large to build and verify in one week.
   Mark the parent `superseded` and move it to the `## Inactive stories` table, keeping its identifier and file and keeping it traceable from both children.
5. Prioritize every story with **MoSCoW**, and give every `Won't Have` story a reason in its notes.
6. Name the **minimum usable product candidate** in `docs/user-stories/README.md`: a strict, non-empty subset of your `Must Have` stories that you would build first, and which one you would drop first if you ran out of time.
   You will build the MUP in Week 3 based on this candidate set of user stories.
7. The method is in [Step 2: Turn Each Gap Into Stories](../guides/user-stories-and-prototyping.md#step-2-turn-each-gap-into-stories) and [Step 3: Write Criteria Somebody Else Can Run](../guides/user-stories-and-prototyping.md#step-3-write-criteria-somebody-else-can-run).

## Part 3: Track Every Story As An Issue

Complete every requirement marked `**Since: W2**` in [Planning And Issue Tracking](../requirements/repository-requirements.md#planning-and-issue-tracking).

1. Add `.github/ISSUE_TEMPLATE/user-story.md`, and disable blank issue creation.
2. Open **one issue per active `US-nn`**, and link each one from its story file.
   The issue title is `US-nn: <story title>`.
   The description carries the story statement, its acceptance criteria, a link to the story file, and an optional checklist of the remaining work.
   See [Planning And Issue Tracking](../requirements/repository-requirements.md#planning-and-issue-tracking).

3. Create your branches from the issue, and link every pull request to its issue.
4. Use the `<issue-number>-<short-description>` branch naming rule, per [Branch Protection And Pull Requests](../requirements/repository-requirements.md#branch-protection-and-pull-requests).
5. A planning or issue-tracking tool (e.g. [`backlog.md`](https://github.com/MrLesk/Backlog.md)) that keeps its state in the repository is recommended, not required.
   If you use one, its files are repository content rather than artifacts, and they do not replace the `US-nn` identifiers or the issue links.

The issues are what the customer can see and what the team tracks.
The user story files are what the requirements are held in.
A decision that changes a story has to reach the story file, not only the issue.

## Part 4: Check The Markdown In CI

1. Add a Markdown check as a GitHub Actions workflow, on pull requests and on every push to `main`.
2. The check must fail the build when the Markdown is wrong, and the latest `main` run must be green before you submit.
3. Use whichever common tool suits your conventions: `markdownlint-cli2`, `prettier --check`, or `remark-lint`.
   Pin it, as in [Pinning Third-Party Actions](../requirements/repository-requirements.md#pinning-third-party-actions).
4. Keep the Week 1 link check green as well.

See [Continuous Integration](../requirements/repository-requirements.md#continuous-integration).

## Part 5: Prototype The Riskiest Part

1. Decide which story you are least sure about, and write the question down in one line before you build anything.
2. Build the cheapest thing that gets the customer's reaction to that question: a paper sketch, a static image, a clickable design, or a code spike.
   Any format is allowed, and none of them needs to be beautiful or working.
   See [Step 5: Choose What To Prototype](../guides/user-stories-and-prototyping.md#step-5-choose-what-to-prototype), and [Validation](../requirements/process-requirements.md#validation) for how a proof of concept, a prototype, an MUP, and an MVP differ.
3. Show it to the customer, in the meeting in [Part 6](#part-6-validate-with-the-customer).
4. Record it at `reports/week-02/prototypes.md`: what it is, how to view it, which `US-nn` or `GAP-nn` it tested, what the customer said, and what changed.
   Put screenshots in `reports/week-02/images/`, and share external tools view-only.
5. **Disposable prototype code does not go on `main`.**
   Do a code spike on a branch, show it from there, then either delete the branch or merge it only once it has become product code.
   The evidence is the screenshot and `prototypes.md`, not the branch.
6. Say which stories the prototype covers.
   One is fine, as long as you say which one and why that one.

See [Prototypes](../requirements/artifact-requirements.md#prototypes).
A prototype is a normal form of evidence: the artifact is the record (`prototypes.md`), and the prototype itself is expected to be thrown away.

## Part 6: Validate With The Customer

Hold a second meeting with your customer this week, and in every artifact call them `Customer`: never a real name, and never "the instructor".
<!-- TODO improve wording in the following sentence -->

The target of the meeting is the prototype, the boundary, and the minimum usable product candidate, and the question is: which of these are wrong?
Review the remaining user stories only if time allows.
Write the target at the top of the script and do not replace it with a subject.
See [Validating With The Customer](../guides/validating-with-the-customer.md).

**Example**

- **Prototype.**
  What did you expect it to do that it does not?
- **Boundary.**
  The product will not do one thing on this list; which need of yours does that break?
- **Minimum usable product candidate.**
  If only these stories shipped, what would you miss first?

1. **Write the meeting script first**, at `reports/week-02/meeting-script.md`.
   Derive the areas from your target; the business goals were settled last week and re-asking them decides nothing.
   Number every question and tag it open or closed: an open question asks the customer to tell you something, and a closed one can be answered yes or no.
   The tag is what you check the rewrite against: if no likely answer would change the target, the question is cut.
   Close the file with a `## Key improvements` section naming at least one question you rewrote and the principle behind the rewrite.
2. **Re-read your Week 1 meeting report first.**
   The open questions are still open, and the customer already answered some of them.
3. **Ask the [three permission questions](../requirements/artifact-requirements.md#customer-meeting-artifacts)** again before you record.
   Permission is per meeting and is never carried over from an earlier meeting, and the recording stays out of the repository.
4. **Assign the three roles** before the meeting: a moderator, a note taker, and an observer who records what was not asked and what was not said.
   The whole team attends, and you plan for 30 minutes while asking for 60 if the customer can give it.
5. **Write `reports/week-02/meeting-report.md`**, plus either `reports/week-02/meeting-transcript.md` or `reports/week-02/meeting-notes.md`, following [Customer Meeting Artifacts](../requirements/artifact-requirements.md#customer-meeting-artifacts).
6. **Complete all six sections of the meeting report**, and hold it to the week-specific minima:
   - At least two rows in `## Decisions`, because one decision is insufficient evidence that the meeting changed anything.
     Each row names the `US-nn` it changes, and one of the two rows must be the customer's verdict on the minimum usable product candidate.

     A story that did not come from your Week 1 research records that origin in its `sources`; only a contradiction updates the research, per [Traceability Into Later Weeks](../requirements/process-requirements.md#traceability-into-later-weeks).

   - At least two rows in `## Action points`, each with a named owner and a due date inside Week 3.
   - `## Disagreements` filled in, or an explicit `None`.
7. **Something must change as a result**, recorded in all four places:
   - `reports/week-02/prototypes.md` says what you showed and what they said.
   - The meeting report's `## Decisions` names the `US-nn` it changes.
   - The `us/US-nn.md` file carries a dated note saying what changed.
   - `reports/week-02/README.md` names the `US-nn` that changed.
8. **Put the recording link in your Moodle submission only.**
9. **If a live meeting is impossible**, align asynchronously in writing instead, timestamp the written exchange as the notes, and declare the substitution in your week report as a deviation.

Do not ask the customer to design the product, and do not re-run the kickoff.
If the customer says "that sounds great" about one of your own ideas, the useful next question is what they would want to see for that to be true.
A week whose `## Disagreements` table is empty is a week you did not test anything.

## Part 7: Carry Out The Kickoff Action Points

`reports/week-01/meeting-report.md` has at least two action points, each with a named owner and a due date inside Week 2.
They are due now.

1. Close each one, or state in writing why it is not closed.
2. Carry the outcome into the artifact it affects, which is usually a story, a constraint, or a note in the product vision.
3. If an action point changed what you were going to build, say so in the story file and in your week report.
   A kickoff action point that is closed in the meeting report and nowhere else has not been carried out.

An action point is not a new identifier family and not a new artifact.
It is a follow-up with an owner, and this is the week it lands.

## Part 8: Report On Your AI Usage

Write `reports/week-02/ai-usage.md`: which tools, what for, and what you accepted, changed, or rejected.
This week is the week where generated text is most tempting, because a story and a set of acceptance criteria are both prose and an agent will write them in seconds.
If you used none, write one line saying so.
See [AI Tools](../course/rules.md#ai-tools).

## What Good Looks Like

Assume your week report is read by someone who does not know your project.
A strong submission has:

- **A goal that could fail.**
  Somebody could tell on Friday whether you achieved it.
  "Be fast" and "delight the user" are not goals, and a vision whose goal is a feature is a vision with nothing in it.
- **A boundary somebody argued with.**
  Your list of what the product will not do is specific enough that the customer disagreed with at least one item.
  A boundary nobody contested is a list you wrote for yourself.
- **Criteria that a stranger could run.**
  Read one criterion without reading the story.
  If you cannot tell whether it passed, it is not a criterion.
- **A `Must Have` list you can actually build.**
  Three or four stories, not eight.
  The label stops meaning anything when everything is a must, and Week 3 inherits whatever you wrote here.
- **A prototype of the hard part.**
  You built the thing you were least sure about, not the thing you were most pleased with.
  A prototype of the easy part demos well and teaches nothing.
- **A story that is visibly different after the meeting.**
  The `us/US-nn.md` file has a dated note, the meeting report's `## Decisions` names it, and the week report points at it.
  This is the single clearest signal that the week was a test rather than a formality.
- **A disagreements table with a row in it.**
  "The customer said the customer will not accept a blocked request with no reason" is a finding.
  "None" is a warning sign, and if it is true then you should say what you would have needed to learn instead.
- **A repository that already works.**
  Issue templates in place, an issue per story, a green Markdown run, and a green link run.

## Assignment Report In The Repository

Write `reports/week-02/README.md`.
This is the canonical public report for the week and the index for everything below.
Follow the structure in [Weekly Public Report](../requirements/artifact-requirements.md#weekly-public-report), and include:

1. Project name, team number, and your problem-space sentence.
2. A short summary of what you decided and what you found out you were wrong about.
3. A coverage table, one row per deliverable of this assignment, giving the artifact that satisfies it.
   This table is the index, so it is not followed by a second list of the same links.

   | Deliverable                      | Artifact                                                               |
   | -------------------------------- | ---------------------------------------------------------------------- |
   | Product vision                   | `docs/product-vision.md`                                               |
   | User story index                 | `docs/user-stories/README.md`                                          |
   | User stories                     | `docs/user-stories/us/US-01.md` and the rest                           |
   | Minimum usable product candidate | the `## Minimum usable product candidate` section of that index        |
   | Issue templates                  | `.github/ISSUE_TEMPLATE/`, and one issue per active `US-nn`            |
   | Markdown check                   | a link to the latest green `main` run                                  |
   | Prototypes                       | `reports/week-02/prototypes.md`                                        |
   | Meeting script                   | `meeting-script.md`                                                    |
   | Customer validation              | `meeting-report.md`, and `meeting-transcript.md` or `meeting-notes.md` |
   | Kickoff action points            | the outcome per action point, in the artifact it changed               |
   | AI usage                         | `ai-usage.md`                                                          |

   If the customer refused publication of the transcript or the notes, that row says so and points at the Moodle submission instead.

4. **Name the `US-nn` that changed because of the validation meeting**, in one line, and link to its story file.
   This is the row a grader reads first, and it is the reason the week is worth grading.
5. Repository evidence: a link to one issue per active `US-nn` and one merged pull request, a link to the latest green Markdown run, and a link to the latest green link check run.
   Add the justification for every link you excluded, and confirm you opened each one in a browser to check it.
6. A contribution table mapping each member's GitHub username to their commits, issues, pull requests, and reviews.
7. Deviations from the assignment or requirements, if any, with reasons.
8. One line confirming that no private-only material was committed to the repository.

## Assignment Report On Moodle

Create one PDF.
It is a map, not a copy: it points at your repository and holds the material that must not be public.
Keep it to two pages, and put nothing in it except the following:

1. Project name and the team number.
2. A table of team members: GitHub username, real name, and university email.
   This mapping is private and appears only here.
3. A permalink to `reports/week-02/README.md` at the full commit hash.
4. A link to the validation meeting recording, accessible to instructors.
   The recording must not be in the repository.
5. The meeting transcript, if the customer refused to let you publish it.
6. One line confirming that no private-only material was committed to the repository.

Nothing else goes in the PDF.
The summary, the coverage table, the contribution table, the evidence links, the deviations, and the privacy confirmation are all in `reports/week-02/README.md`, and the permalink gets a grader there.
Do not paste, retype, or reword them.
If the PDF runs past two pages, you are writing the report a second time, and the second copy is the one that goes stale.

This is the [private submission wrapper](../requirements/artifact-requirements.md#private-submission-wrapper) the course requires: the private material for the week, and links to the public material.

See [Permalinks And Snapshots](../requirements/repository-requirements.md#permalinks-and-snapshots) for how to build the permalink and the snapshot.

> [!IMPORTANT]
> Verify every link before you submit, and open the permalink in a browser.
> A permalink to the wrong commit is worse than a branch link, because it looks verified.
> Everything you submit must stay reachable until the course has been graded.

### Submission Procedure

- Submit the PDF and the repository snapshot (repository page -> Code -> Download ZIP) through Moodle.
- One submission per team.
- Due Thursday 8 October, 23:59.

## Checklist

- [ ] `docs/product-vision.md` with the goal, traced to a `VP-nn`.
- [ ] Constraints table, each marked customer-given, team-given, environmental, or derived, each with what it costs.
- [ ] Stakeholders named, and the boundary written as a list of things the product will not do.
- [ ] System context diagram committed or linked view-only, with the actors described in prose.
- [ ] No use case, container, or component diagrams.
- [ ] `docs/user-stories/us/` with **8 or more** stories and **5 or more** active, one file per story, `US-nn` IDs never reused.
- [ ] Every story states a need, not a design, and names its `GAP-nn` and `VP-nn`.
- [ ] At least two acceptance criteria per active story, each observable and pass/fail.
- [ ] Oversized stories split, the parent marked `superseded` and traceable from both children.
- [ ] Every story prioritized MoSCoW, every `Won't Have` inactive with a reason.
- [ ] `## Minimum usable product candidate` naming a strict, non-empty subset of the `Must Have` stories, and which one to drop first.
- [ ] `docs/user-stories/README.md` indexing every story, active and inactive, with a link to each active issue.
- [ ] Issue template at `.github/ISSUE_TEMPLATE/user-story.md`, blank issues disabled.
- [ ] One issue per active `US-nn`, linked from its story file and carrying the story and criteria, with an optional remaining-work checklist; every pull request linked to its issue.
- [ ] Branches named `<issue-number>-<short-description>`.
- [ ] Markdown check in CI on pull requests and `main`, green.
- [ ] Markdown check pinned to a commit SHA, with `.github/dependabot.yml`.
- [ ] Week 1 link check still green.
- [ ] `reports/week-02/prototypes.md` with what you showed, which `US-nn` it tested, and what the customer said.
- [ ] Screenshots in `reports/week-02/images/`, external tools shared view-only.
- [ ] No disposable prototype code on `main`; any spike done on a branch and then deleted or merged.
- [ ] `reports/week-02/meeting-script.md` with a one-sentence target, numbered questions tagged open or closed, and `## Key improvements` showing at least one real rewrite.
- [ ] Three meeting roles assigned, whole team attending, three permission questions asked before recording.
- [ ] Validation meeting held, all three permissions asked before recording.
- [ ] `reports/week-02/meeting-report.md` with all six sections, 2+ decisions naming the `US-nn` each changed, 2+ action points with owner and Week 3 due date, and `## Disagreements` filled or `None`.
- [ ] `reports/week-02/meeting-transcript.md` or `meeting-notes.md`, sanitized; in the Moodle PDF only if publication was refused.
- [ ] **At least one `us/US-nn.md` has a dated `## Changes` note from the meeting.**
- [ ] Both Week 1 kickoff action points closed, with the outcome written into the artifact it changed.
- [ ] `reports/week-02/ai-usage.md` written.
- [ ] `reports/week-02/README.md` complete, naming the changed `US-nn`, with the coverage table, evidence, and contribution table.
- [ ] PDF and snapshot ready, permalink verified at the full commit hash.
