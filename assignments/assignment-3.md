# Assignment 3: Planning And The Minimum Usable Product

**This week's dates:**

- Soft deadline: Thursday 15 October 2026, 23:59.
- Hard deadline: Saturday 17 October 2026, 23:59.

See [Deadlines And Submission](../course/rules.md#deadlines-and-submission).

One submission per team.

Week 2 ended with a candidate for a minimum usable product, the customer's verdict on it, and no product code.
This week the project gets both a plan and its first product code: you set the bar for its success, write the plan that reaches it, define what done means, and build the candidate into one working slice on `main`.

What you hand in is a plan a reader can hold you to, and the working slice behind it, released as the sprint's tagged version.
Deployment is not part of this week.

The tools the course suggests, from meeting transcripts to a coding agent, are in [Course Tooling](../course/tooling.md).

<h2>Table of contents</h2>

- [Objectives](#objectives)
- [Part 1: State The Threshold Of Success](#part-1-state-the-threshold-of-success)
- [Part 2: Write The Project Plan And Name The Risks](#part-2-write-the-project-plan-and-name-the-risks)
- [Part 3: Decide The Stack](#part-3-decide-the-stack)
- [Part 4: Define Done And The Workflow](#part-4-define-done-and-the-workflow)
- [Part 5: Build The Minimum Usable Product](#part-5-build-the-minimum-usable-product)
- [Part 6: Publish The Docs Site And Write The Setup Page](#part-6-publish-the-docs-site-and-write-the-setup-page)
- [Part 7: Carry Out The Week 2 Action Points And Open Questions](#part-7-carry-out-the-week-2-action-points-and-open-questions)
- [Part 8: Validate With The Customer](#part-8-validate-with-the-customer)
- [Part 9: Cut The First Release](#part-9-cut-the-first-release)
- [Part 10: Report On Your AI Usage](#part-10-report-on-your-ai-usage)
- [What Good Looks Like](#what-good-looks-like)
- [Assignment Report In The Repository](#assignment-report-in-the-repository)
- [Assignment Report On Moodle](#assignment-report-on-moodle)
  - [Submission Procedure](#submission-procedure)
- [Checklist](#checklist)

## Objectives

By the end of this week you should be able to show a reader:

- The minimum set of goals the project must achieve, each with the measure that settles it, and the failure statements the set answers.
- A plan from here to those goals: seven sprints with a goal and a release each, and milestones that carry the increments, `MLS-03` first.
- The risks that could take the plan away, each with a trigger, a window, a mitigation, and a fallback.
- What done means for a story, a task, and a pull request, and the workflow around it: the contributing guide, the `Responsible` and `Accountable` issue fields, and the public project.
- A working slice on `main` that a clean checkout completes end to end by following `docs/setup.md`, on the chosen stack, with `docs/` published as a site.
- Each finished story accepted or rejected against its acceptance criteria, recorded as a `DEC-nnn`.
- The first release: the tagged version, its changelog section, and the plan's `REL-03` line.

## Part 1: State The Threshold Of Success

The rules:

- The threshold is `docs/threshold-of-success.md`, with one `## TOS-nn` section per goal and the failure and success statements below them: [The Threshold Of Success](../requirements/planning-requirements.md#the-threshold-of-success).
- The product vision's goal links the threshold: [Goal](../requirements/product-vision-requirements.md#goal).
- While a goal is `Open`, each change cites the customer's `DEC-nnn`, and a drop is agreed with the customer: [The Threshold Of Success](../requirements/planning-requirements.md#the-threshold-of-success).

The method is in [Step 1: Agree On The Threshold Of Success](../guides/planning-and-tracking.md#step-1-agree-on-the-threshold-of-success).

This week:

1. Write `docs/threshold-of-success.md` with at least 3 goals.
2. Record the failure and success statements the set came from, below the goals.
3. Link the threshold from the `## Goal` part of `docs/product-vision.md`.

## Part 2: Write The Project Plan And Name The Risks

The rules:

- The plan is `docs/project-plan.md`, holding the sprints, the milestones, and progress monitoring, in that order: [Where The Plan And The Threshold Live](../requirements/planning-requirements.md#where-the-plan-and-the-threshold-live).
- `## Sprints` carries one `### SPRINT-nn` section per sprint from Week 3 to Week 9, each with its goal, its `**Due:**` field, its `**Sprint Backlog:**` link once it has issues, and its nested `#### REL-nn` release; a later sprint's goal is provisional: [Sprints](../requirements/planning-requirements.md#sprints) and [Releases](../requirements/planning-requirements.md#releases).
- `## Milestones` carries one `### MLS-nn` section per milestone, with its fields and the description below them; a milestone is plan documentation, and each sprint is a GitHub milestone: [Milestones](../requirements/planning-requirements.md#milestones) and [Sprints](../requirements/planning-requirements.md#sprints).
- `## Progress Monitoring` names the team's weekly review, who checks, and where progress is visible, and links `docs/risks.md` once: [Progress Monitoring](../requirements/planning-requirements.md#progress-monitoring).
- The risks are `docs/risks.md`, with the summary table and one `## RISK-nn` section per risk: [Where The Risks Live](../requirements/risks-requirements.md#where-the-risks-live).
- A risk is one sentence of cause, event, and impact, followed by its rating, trigger, window, mitigation, and contingency: [The Risk](../requirements/risks-requirements.md#the-risk), [Rating](../requirements/risks-requirements.md#rating), and [Response](../requirements/risks-requirements.md#response).
- Read the register at the weekly review, and settle what the review sees: [Checking And Settling](../requirements/risks-requirements.md#checking-and-settling).

The method is in [Step 2: Choose The Roadmap's Zoom Level](../guides/planning-and-tracking.md#step-2-choose-the-roadmaps-zoom-level), [Step 3: Write The Sprints And Their Releases](../guides/planning-and-tracking.md#step-3-write-the-sprints-and-their-releases), [Step 4: Write The Milestones](../guides/planning-and-tracking.md#step-4-write-the-milestones), [Step 5: Name The Risks And Their Fallbacks](../guides/planning-and-tracking.md#step-5-name-the-risks-and-their-fallbacks), and [Step 6: Set Up Progress Monitoring](../guides/planning-and-tracking.md#step-6-set-up-progress-monitoring).

This week:

1. Write `docs/project-plan.md` with its three parts in order.
2. `## Sprints` covers all seven sprints, `SPRINT-03` to `SPRINT-09`: write `SPRINT-03` and `SPRINT-04` concretely, and give every later sprint a provisional goal that stays current until it is planned.
3. Give each sprint its nested `#### REL-nn` heading, `REL-03` to `REL-09`; a release section stays empty until its release is published.
4. In `## Milestones`, write `MLS-03`, whose focus is delivering the MUP; further milestones are the team's choice, each written when the team defines the increment it delivers, numbered by its due week.
   The `**Sprints:**` runs stay disjoint and consecutive, each ending in the week its milestone is due; the runs need not cover every sprint, and a sprint no milestone covers is still scheduled in its GitHub milestone.
   Create the seven sprint milestones on GitHub, each titled `SPRINT-nn: <focus>` with the week's hard deadline as its due date; the plan's milestones themselves are not on GitHub.
5. In `## Progress Monitoring`, name when the team's weekly review is held, who checks, and the views where progress is visible: the GitHub project's table view and the sprints' GitHub milestones.
6. Write `docs/risks.md` with at least 3 risks that threaten the plan or the threshold, each stated as cause, event, and impact.

## Part 3: Decide The Stack

The rules:

- A technology choice is a decision with a `DEC-nnn` entry: [The Decision](../requirements/decisions-requirements.md#the-decision).
- Extend `.gitignore` for the stack once it is chosen: [Repository Setup](../requirements/repository-requirements.md#repository-setup).
- Once the stack is chosen, its package ecosystem joins `github-actions` in `.github/dependabot.yml`: [Contributing](../requirements/repository-requirements.md#contributing).

This week:

1. Decide the stack the MUP is built with, and record the choice as one `DEC-nnn` entry in `docs/decisions.md`, with its `**Why:**`.
2. Extend `.gitignore` for the stack.
3. Add the stack's package ecosystem to `.github/dependabot.yml`.

## Part 4: Define Done And The Workflow

The rules:

- `docs/definition-of-done.md` states what done means for a story, a task, and a pull request, in three sections: [Definition Of Done Requirements](../requirements/definition-of-done-requirements.md).
- `CONTRIBUTING.md` states the commit message format, how a change gets in, and which views the team uses in its GitHub project: [Contributing](../requirements/repository-requirements.md#contributing).
- The organization creates the `Responsible` and `Accountable` issue fields, each single-select and `Public`: [Issue Fields](../requirements/issue-tracking-requirements.md#issue-fields).
- An issue's assignees are the same two members its `Responsible` and `Accountable` values name: [Assignees](../requirements/issue-tracking-requirements.md#assignees).
- An issue is scheduled by being assigned to its sprint's GitHub milestone, and the seven sprint milestones exist when the plan is written: [Sprints](../requirements/planning-requirements.md#sprints).
- One public GitHub project holds every open issue, with a table view whose columns include the two fields, the built-in `Assignees`, and the built-in `Milestone`, grouped or sorted by `Milestone`: [GitHub Projects](../requirements/issue-tracking-requirements.md#github-projects).

This week:

1. Write `docs/definition-of-done.md` with the three sections and at least the required items.
2. Write `CONTRIBUTING.md` in the repository root.
3. Create the two issue fields with their options, each single-select and `Public`, pinned to the issue types the team uses.
4. Create the GitHub project: set it `Public`, give it a description that links the repository, and add a table view over the two fields, the assignees, and the milestone, grouped or sorted by `Milestone`.
5. Schedule every issue the plan carries by assigning it to its sprint's GitHub milestone, with the two values and the same two members as assignees, at minimum the `SPRINT-03` set, which belongs to `MLS-03`.

## Part 5: Build The Minimum Usable Product

The rules:

- The week's build scope is exactly the Week 2 candidate: [The Candidate](../requirements/minimum-usable-product-requirements.md#the-candidate).
- Build the candidate's stories into one working slice merged into `main`, through task issues and one pull request per task: [Building, Delivering, And Releasing The Candidate](../requirements/minimum-usable-product-requirements.md#building-delivering-and-releasing-the-candidate).
- One pull request closes exactly one task issue: [Closing A Task](../requirements/task-issues-requirements.md#closing-a-task).
- The slice is working when a clean checkout completes the core task end to end by following `docs/setup.md`: [Setup And Run Instructions](../requirements/repository-requirements.md#setup-and-run-instructions).

This week:

1. Open a task issue for each unit of work on the candidate, and merge one pull request per task.
2. Merge each pull request before the customer meeting: nothing is left on a branch, and the slice is not partially merged.
3. Run the slice from a clean checkout by following `docs/setup.md`.

## Part 6: Publish The Docs Site And Write The Setup Page

The rules:

- Publish `docs/` as a GitHub Pages site through a workflow under `.github/workflows/`, and link the site from the root `README.md`: [Documentation Site](../requirements/repository-requirements.md#documentation-site).
- `docs/setup.md` covers the prerequisites, the install, the configuration pointing at a `.env.example`, how to run the product, and how to run the checks and the tests: [Setup And Run Instructions](../requirements/repository-requirements.md#setup-and-run-instructions).
- The root `README.md` links the setup and run instructions: [Root README](../requirements/repository-requirements.md#root-readme).
- Pin every third-party action: [Pinning Third-Party Actions](../requirements/repository-requirements.md#pinning-third-party-actions).

This week:

1. Publish `docs/` as a GitHub Pages site, and link it from the root `README.md`.
2. Write `docs/setup.md`, and link it from the root `README.md`.

## Part 7: Carry Out The Week 2 Action Points And Open Questions

The rules:

- Read the action points the Week 2 report recorded, with their owners and due weeks: [Meeting Report](../requirements/customer-meetings-requirements.md#meeting-report).
- Cite an action point by its report and anchor: [Identifier Rules](../requirements/general-requirements.md#identifier-rules).
- Record each outcome in the meeting report, since the Week 2 report is not edited: [Meeting Report](../requirements/customer-meetings-requirements.md#meeting-report).
- Carry each outcome into the artifact it changed: [Meeting Report](../requirements/customer-meetings-requirements.md#meeting-report).
- Close each Week 2 open question, or carry it forward: [Meeting Report](../requirements/customer-meetings-requirements.md#meeting-report).

This week:

The Week 2 action points are the rows of `## Action points` in `reports/week-02/meeting-report.md` that are due in Week 3.
They are due now, and at the latest before the meeting in [Part 8](#part-8-validate-with-the-customer).

1. Carry out each action point, or find out why it cannot be done.
2. Carry the outcome into the artifact it affects.
3. Put each row of `## Open questions` in `reports/week-02/meeting-report.md` to the customer in Part 8, unless the work since has answered it.

## Part 8: Validate With The Customer

The rules:

- Prepare in writing, assign the roles, and let the customer decide the scope: [Every Meeting](../requirements/customer-meetings-requirements.md#every-meeting).
- Ask the permission questions before you record: [Permission Questions](../requirements/customer-meetings-requirements.md#permission-questions).
- Write the script before the meeting: [Meeting Script](../requirements/customer-meetings-requirements.md#meeting-script).
- State the meeting's target in one sentence, and ask only questions that serve it: [Meeting Script](../requirements/customer-meetings-requirements.md#meeting-script).
- Open the agenda with the permission questions, and close it with the read-back: [Meeting Script](../requirements/customer-meetings-requirements.md#meeting-script).
- Write the report in the team's own words: [Meeting Report](../requirements/customer-meetings-requirements.md#meeting-report).
- Give each decision a `DEC-nnn` entry, list it in the report, and cite it from what it changed: [Decision Requirements](../requirements/decisions-requirements.md).
- Produce the report, and a transcript when the meeting was recorded or held in writing: [Where Meeting Artifacts Live](../requirements/customer-meetings-requirements.md#where-meeting-artifacts-live).
- Clean and sanitize a transcript before you publish it: [Meeting Transcript](../requirements/customer-meetings-requirements.md#meeting-transcript).
- Name the customer `Customer`, and keep personal data out of the repository: [Sensitive Information Reference](../requirements/visibility-requirements.md#sensitive-information-reference).
- Show each finished story against its acceptance criteria, one `AC-nn` at a time, and record each verdict: [Showing Working Software](../requirements/customer-meetings-requirements.md#showing-working-software).
- Add a comment to each story issue the meeting changed or accepted: [Where Stories Live](../requirements/user-stories-requirements.md#where-stories-live).
- Put each candidate story the team will not finish to the customer, and record the decision: [Building, Delivering, And Releasing The Candidate](../requirements/minimum-usable-product-requirements.md#building-delivering-and-releasing-the-candidate).

This week:

1. The meeting has to settle whether the finished stories do what the customer needs, and what comes next.
2. In `reports/week-03/meeting-script.md`, `## Agenda` runs each finished story in its own part and asks for its verdict, then any candidate story the team will not finish, and the next stories, ordered per [Step 4: Order The Meeting](../guides/validating-with-the-customer.md#step-4-order-the-meeting).
3. Show each finished story against its acceptance criteria, one `AC-nn` at a time; an accepted story closes, and a rejected one stays open with its rework tasks.
4. A candidate story the team will not finish by the deadline moves out of the candidate only with the customer's decision, recorded as a `DEC-nnn` naming the story; when the remaining stories no longer complete the core task, the same decision re-scopes the core task by editing the first sentence of the active milestone's description.
5. `reports/week-03/meeting-report.md` closes the Week 2 action points and open questions in `## Previous action points` and `## Previous open questions`, and carries at least two rows in `## Action points`, each due inside Week 4.

The method is in [Guide: Validating With The Customer](../guides/validating-with-the-customer.md).

## Part 9: Cut The First Release

The rules:

- The changelog is `CHANGELOG.md`, following Keep a Changelog, with an `[Unreleased]` section during development: [The Changelog](../requirements/releases-requirements.md#the-changelog).
- Version with Semantic Versioning, prefix tags with `v`, and point each tag at a commit on `main`: [Versioning And Tags](../requirements/releases-requirements.md#versioning-and-tags).
- Title the release with its tag, and move the released entries into a dated section linked to the release: [Cutting A Release](../requirements/releases-requirements.md#cutting-a-release).
- This week's release is `REL-03`, cut at the sprint's end, on the state after the meeting and any same-week rework: [Releases](../requirements/planning-requirements.md#releases).

This week:

1. Keep `CHANGELOG.md` current through the week, with an `[Unreleased]` entry for each user-visible change.
2. After the meeting and any rework, merge the sprint's pull requests, push the tag on that commit, and protect the tag from being moved or deleted.
3. Merge what links the tag after it exists, in this order: the changelog's released section, the plan's `REL-03` line, and the week's report.

## Part 10: Report On Your AI Usage

The rules:

- Name the tools you used, what for, and what you did with their output: [AI Usage Report](../requirements/weekly-report-requirements.md#ai-usage-report).

## What Good Looks Like

Assume your weekly public report is read by someone who does not know your project.
A strong submission has:

- **A threshold that could fail.**
  Three to five goals, each with a measure a reader can look up, and the failure picture that produced them kept below them.
  A goal nobody could miss was never a threshold.
- **A plan that states results.**
  Each sprint says what will be true at its end, not what the team will do during it.
  A plan that reads as a task list hides what the work is for.
- **Plan milestones that are increments, not weeks.**
  `MLS-03` is the required one, the next delivery may add another, and each milestone names the threshold goal it advances.
  The sprints sit in their own GitHub milestones either way, so the milestone list shows each week's work and the plan shows the path.
  A plan milestone per week would restate the sprints.
- **Risks you would act on.**
  Each has a trigger the review can watch and a fallback decided before it was needed.
  A worry with no trigger is not a risk.
- **A slice a stranger can run.**
  A clean checkout followed by `docs/setup.md` completes the core task.
  If only the team can run it, it is not delivered.
- **Verdicts, not impressions.**
  Each story shown got a yes or a no against its acceptance criteria, recorded as a `DEC-nnn`, and every story that moved out of the candidate cites the customer's decision.
- **A release whose links resolve.**
  The tag exists before the changelog, the plan, and the report link it, so the first link check is green.

## Assignment Report In The Repository

Write `reports/week-03/README.md`, per [Weekly Public Report](../requirements/weekly-report-requirements.md#weekly-public-report).
This week it also carries:

1. In the summary, the release, `REL-03` and its tag, and what moved out of the candidate.
2. The customer-meeting outcome: each story shown and whether the customer accepted or rejected it, and each candidate story that moved out, each citing its `DEC-nnn`.
3. The coverage table, with these rows:

   | Deliverable                        | Artifact                                                                                                          |
   | ---------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
   | Threshold of success               | `docs/threshold-of-success.md`                                                                                    |
   | Project plan                       | `docs/project-plan.md`                                                                                            |
   | Risk register                      | `docs/risks.md`                                                                                                   |
   | Stack decision                     | the stack's `DEC-nnn` entry in `docs/decisions.md`                                                                |
   | Definition of Done                 | `docs/definition-of-done.md`                                                                                      |
   | Contributing guide                 | `CONTRIBUTING.md`                                                                                                 |
   | Sprint milestones and issue fields | the `SPRINT-03` GitHub milestone, with the `Responsible` and `Accountable` values and the assignees on its issues |
   | GitHub project                     | your project's table view                                                                                         |
   | Minimum usable product             | the `US-nn` of the candidate, merged into `main` and shown at the meeting                                         |
   | Changelog and first release        | `CHANGELOG.md`, and the first release                                                                             |
   | Documentation site                 | your site's URL                                                                                                   |
   | Setup and run instructions         | `docs/setup.md`                                                                                                   |
   | Week 2 action points               | `## Previous action points` in `reports/week-03/meeting-report.md`                                                |
   | Week 2 open questions              | `## Previous open questions` in `reports/week-03/meeting-report.md`                                               |
   | Meeting script                     | `reports/week-03/meeting-script.md`                                                                               |
   | Customer validation                | `reports/week-03/meeting-report.md`, and `reports/week-03/meeting-transcript.md` when there is one                |
   | AI usage                           | `reports/week-03/ai-usage.md`                                                                                     |

   If the customer refused publication of the transcript, that row says so and points at the Moodle submission instead.

4. Repository evidence: one merged pull request that closed its task issue, and the latest green link check and Markdown check runs on `main`.
5. `## Deviations`: anything you did differently from this assignment, per [Declaring Deviations](../requirements/weekly-report-requirements.md#declaring-deviations).

## Assignment Report On Moodle

Create one PDF, per [Private Submission Wrapper](../requirements/weekly-report-requirements.md#private-submission-wrapper).
Keep it to two pages, and put nothing in it except the following.
A transcript under item 5 goes in an appendix, which the two pages do not count.

1. Project name and the team number.
2. A table of team members: GitHub username, real name, and university email.
3. A permalink to `reports/week-03/README.md` at the full commit hash.
4. A link to the validation meeting recording, accessible to instructors, or one line saying why there is none: the customer refused recording, or the meeting was held in writing.
5. The meeting transcript, if the customer refused to let you publish it.
6. One line confirming that no private-only material was committed to the repository.

### Submission Procedure

- Merge `reports/week-03/README.md` and every file it links into `main`.
- Take the permalink and the snapshot from that `main` commit, per [Permalinks And Snapshots](../requirements/repository-requirements.md#permalinks-and-snapshots).
- Submit the PDF and the snapshot through Moodle.

## Checklist

- [ ] `docs/threshold-of-success.md` with 3+ goals, each with its fields, and the failure and success statements below them ([Part 1](#part-1-state-the-threshold-of-success)).
- [ ] The vision's goal links the threshold ([Part 1](#part-1-state-the-threshold-of-success)).
- [ ] `docs/project-plan.md` with `## Sprints` (`SPRINT-03` to `SPRINT-09`, each with its `**Due:**` field and its nested `REL-nn`), `## Milestones` (`MLS-03`, and any further milestone the team defines, each with its fields and description), and `## Progress Monitoring` ([Part 2](#part-2-write-the-project-plan-and-name-the-risks)).
- [ ] The seven `SPRINT-nn` GitHub milestones created, each with its focus and due date, and the plan's `**Sprints:**` runs disjoint and consecutive, each ending in its due week ([Part 2](#part-2-write-the-project-plan-and-name-the-risks)).
- [ ] `docs/risks.md` with 3+ risks and the summary table ([Part 2](#part-2-write-the-project-plan-and-name-the-risks)).
- [ ] The stack recorded as a `DEC-nnn`, `.gitignore` extended, and the stack's ecosystem added to `.github/dependabot.yml` ([Part 3](#part-3-decide-the-stack)).
- [ ] `docs/definition-of-done.md` and `CONTRIBUTING.md` ([Part 4](#part-4-define-done-and-the-workflow)).
- [ ] The `Responsible` and `Accountable` fields created and `Public` ([Part 4](#part-4-define-done-and-the-workflow)).
- [ ] The public GitHub project with its table view over the fields, the assignees, and the milestone ([Part 4](#part-4-define-done-and-the-workflow)).
- [ ] Every issue the plan schedules is in its sprint's GitHub milestone, carries the two values, and has both members as assignees, at minimum the `SPRINT-03` set ([Part 4](#part-4-define-done-and-the-workflow)).
- [ ] **Every candidate story built into `main` through task issues and pull requests, and shown at the meeting or moved out by the customer's decision** ([Part 5](#part-5-build-the-minimum-usable-product)).
- [ ] The docs site published and linked, and `docs/setup.md` linked from the root README ([Part 6](#part-6-publish-the-docs-site-and-write-the-setup-page)).
- [ ] Each Week 2 action point's outcome in `## Previous action points`, and in the artifact it changed ([Part 7](#part-7-carry-out-the-week-2-action-points-and-open-questions)).
- [ ] Each Week 2 open question answered or carried forward in `## Previous open questions` ([Part 7](#part-7-carry-out-the-week-2-action-points-and-open-questions)).
- [ ] `reports/week-03/meeting-script.md` ([Part 8](#part-8-validate-with-the-customer)).
- [ ] `reports/week-03/meeting-report.md`, with a `DEC-nnn` for each story shown and each story that moved out, and 2+ action points due in Week 4 ([Part 8](#part-8-validate-with-the-customer)).
- [ ] `reports/week-03/meeting-transcript.md`, if the meeting was recorded or held in writing ([Part 8](#part-8-validate-with-the-customer)).
- [ ] The first release tagged, and the changelog's released section, the plan's `REL-03` line, and `reports/week-03/README.md` merged after the tag ([Part 9](#part-9-cut-the-first-release)).
- [ ] `reports/week-03/ai-usage.md` ([Part 10](#part-10-report-on-your-ai-usage)).
- [ ] `reports/week-03/README.md` ([Assignment Report In The Repository](#assignment-report-in-the-repository)).
- [ ] Everything merged into `main`, with the permalink and the snapshot taken from that commit ([Submission Procedure](#submission-procedure)).
- [ ] PDF ready, and the permalink opened in a browser at the full commit hash ([Assignment Report On Moodle](#assignment-report-on-moodle)).
