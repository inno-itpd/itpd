# Assignment 8: The Usability Results And The Project Configuration Review

**This week's deadline:**

- Hard deadline: Saturday 21 November 2026, 23:59.

There is no soft deadline.
See [Deadlines And Submission](../course/rules.md#deadlines-and-submission).

One submission per team.

Week 7 ended with the `UT-01` design, the private home for the raw data, the `Interaction Capability` requirement with its manual test, and `REL-07`.
This week the sessions run or have run, and the results become the week's main result: the sanitized notes, the aggregate table, the findings, the triage, the verdict, and the fixes the product backlog now carries.
The week has a second stream: the team writes the maintained inventory of the configuration it builds, checks, and delivers the product with, and it judges that configuration by the goals its artifacts serve.
The judgement is the week's deliverable and the implementation is not: no change is required, and the first change the team would make is the Week 9 handoff.
The week also keeps the full sprint around both streams, and it carries no deck.

What you hand in is the results record a reader can follow, the findings and their issues, and the configuration plan with its goal-based evaluation and its first change.

The tools the course suggests, from meeting transcripts to a coding agent, are in [Course Tooling](../course/tooling.md).

<h2>Table of contents</h2>

- [Objectives](#objectives)
- [Part 1: Refine The Product Backlog And Plan The Sprint](#part-1-refine-the-product-backlog-and-plan-the-sprint)
- [Part 2: Run The Sessions And Write The Sanitized Notes](#part-2-run-the-sessions-and-write-the-sanitized-notes)
- [Part 3: Write The Results](#part-3-write-the-results)
- [Part 4: Write The Findings](#part-4-write-the-findings)
- [Part 5: Triage The Findings And Plan The Fixes](#part-5-triage-the-findings-and-plan-the-fixes)
- [Part 6: Record The Verdict And Settle The Threshold](#part-6-record-the-verdict-and-settle-the-threshold)
- [Part 7: Write The Configuration Plan](#part-7-write-the-configuration-plan)
- [Part 8: Write The Goal-Based Configuration Evaluation](#part-8-write-the-goal-based-configuration-evaluation)
- [Part 9: Update The Glossary And The Risk Register](#part-9-update-the-glossary-and-the-risk-register)
- [Part 10: Carry Out The Week 7 Action Points And Hold The Sprint Review](#part-10-carry-out-the-week-7-action-points-and-hold-the-sprint-review)
- [Part 11: Apply The Review, Run The Sprint's Testing-Plan Rows, And Cut `REL-08`](#part-11-apply-the-review-run-the-sprints-testing-plan-rows-and-cut-rel-08)
- [Part 12: Close The Sprint And Hold The Retrospective](#part-12-close-the-sprint-and-hold-the-retrospective)
- [Part 13: Report On Your AI Usage And Hand Off Week 9](#part-13-report-on-your-ai-usage-and-hand-off-week-9)
- [What Good Looks Like](#what-good-looks-like)
- [Assignment Report In The Repository](#assignment-report-in-the-repository)
- [Assignment Report On Moodle](#assignment-report-on-moodle)
  - [Submission Procedure](#submission-procedure)
- [Checklist](#checklist)

## Objectives

By the end of this week you should be able to show a reader:

- A `UT-01` results record that says what the sessions found: at least three counted sessions, the per-participant table, the main task's aggregate completion and median time, the median SEQ for each task, the SUS mean and median with `n=<count>`, every measure the plan named, the thematic analysis, the instrumentation comparison, the limitations, and the conclusion.
- The sanitized session notes the results summarize, with no raw data and no identity in the product repository.
- The findings, one numbered section each (`### Finding 1`, `### Finding 2`, and so on), with their severity, tasks and participant codes, evidence, recommendation, and task issue, and a triage that says what the team does with each finding.
- The `QR/QRT` verdict in the testing plan, and the threshold's usability goal settled when the team has one.
- The fixes planned: a landed fix in `REL-08`, and a later one moved to `SPRINT-09` with its reason.
- `docs/configuration-plan.md`, the maintained inventory of the configuration: the five groups, at least 8 `Active` `CFG-nn` items with at least one in each group, each with its status, type, purpose, owner, location, connections, and target, and a dropped item in place.
- `reports/week-08/cm-evaluation.md`, the goal-based judgement of that configuration: the baseline, the method, one section per local goal, the tradeoffs, what the team could not judge, and the first change.
- The configuration terms in `docs/glossary.md` and the configuration risks in `docs/risks.md`.
- The results review held as the Sprint Review, with its script, its report, and its transcript, the meeting's `DEC-nn` entries, and the action points due after Week 8.
- `REL-08`, the sprint closed with its actual velocity, a retrospective that carries the Week 7 actions, and the AI usage report.
- The Week 9 handoff: the results, the configuration plan, the evaluation with its first change and its other changes ready to schedule, the private repository and the recordings folder, and the final repository state the evaluation implies, with no deck submitted.

## Part 1: Refine The Product Backlog And Plan The Sprint

The rules:

- The sprint opens with planning, and the next two sprints' worth of the product backlog is refined before it: [Sprint Planning](../requirements/sprint-ceremonies-requirements.md#sprint-planning) and [Product Backlog Refinement](../requirements/sprint-ceremonies-requirements.md#product-backlog-refinement).
- The plan's `### SPRINT-nn` section carries the sprint's goal, its `**Due:**` field, its `**Sprint Backlog:**` link, `**Planned Velocity:**`, and later `**Actual Velocity:**`: [Sprints](../requirements/planning-requirements.md#sprints).
- A task issue carries its `### Requirements` section, and a pull request closes one: [The Issue Form](../requirements/task-issues-requirements.md#the-issue-form).
- Scheduling is assigning an issue to its sprint's GitHub milestone, and refinement leaves an item unscheduled: [Scheduling An Issue](../requirements/issue-tracking-requirements.md#scheduling-an-issue).

This week:

1. Refine the remaining product backlog until `SPRINT-09`'s items are ready to schedule, and leave those items unscheduled.
2. Plan `SPRINT-08`: replace its provisional goal with the sprint's goal, set `**Due:**` to `2026-11-21`, link `**Sprint Backlog:**` to its GitHub milestone, and set `**Planned Velocity:**` to the story points of the stories you scheduled, computed by hand from their `Story Points`.
   Only the product stories' points count: the results, the configuration, and the other task work carry none.
3. Set `SPRINT-09`'s provisional goal, its `**Due:**` of `2026-11-28`, and its `**Sprint Backlog:**` once the sprint has issues.
   The provisional goal names the final repository state the configuration evaluation implies, the 7-minute deck, the reflection, and whatever else the team plans.
   The seven sprint milestones already exist, so link `SPRINT-09`'s milestone; do not create a new milestone.
4. Schedule in `SPRINT-08`: the sanitized session notes, the results, the findings, the triage, the `QR/QRT` verdict, the configuration plan, the configuration evaluation, the glossary and risk updates, the Sprint Review, and `REL-08`.
5. Set the record's `**Run sprint:**` to the sprint the counted sessions ran in: `SPRINT-07` when every counted session ran before the Week 7 deadline of 15 November 23:59, `SPRINT-08` otherwise, and both when the sessions straddle the two.
   Each sprint is linked to its plan section.
6. Write each task issue with its `### Requirements` section, its acceptance criteria, its `Priority`, its `Responsible` and `Accountable` values, its assignees, and its GitHub milestone.
   A configuration task says `None: repository upkeep` in `### Requirements`, and a usability fix that changes behaviour links the story and the `AC-nn` it serves and names the `FR-nnn` or `ADR-nnn`.

The method is in [Step 4: Write The Sprints And Their Releases](../guides/planning-and-tracking.md#step-4-write-the-sprints-and-their-releases).

## Part 2: Run The Sessions And Write The Sanitized Notes

The rules:

- At least three sessions run, after the design is written and the instrumentation is verified, and the raw text and the recordings go to their two private places: [The Week 8 Execution](../requirements/usability-testing-requirements.md#the-week-8-execution).
- A session note is sanitized, and the record carries no identity and no raw recording: [The Public Evidence](../requirements/usability-testing-requirements.md#the-public-evidence).
- A durable consent precedes every counted session, and a withdrawal removes the raw text and the recording and retires the code: [Consent And Recording](../requirements/usability-testing-requirements.md#consent-and-recording).
- The text data goes to the private `<organization>/<repo>-usability-data` repository and the recordings to the team-owned cloud folder: [The Private Data Repository](../requirements/usability-testing-requirements.md#the-private-data-repository).

This week:

1. Run at least three counted sessions, with five as the design target, if they have not all run already.
   A session counts when it matches the participant profile, it is not a teammate, the customer, the instructor, or the course staff, the consent covers it, and its recording exists.
2. Run each session at the dates the team scheduled, in person, on the university network, against the staging deployment, with the seed reset to synthetic data before every session.
   The instrumentation is verified before the first counted session, not during it.
3. Put the raw text and the test's telemetry export in the private repository, and the recordings in the cloud folder, on the day of the session.
4. Write each sanitized `sessions/P-nn.md` note on the day, with the participant's relation to the target user, the familiarity, the device, the task outcomes, the assistance, the times, the SEQ, the SUS, the themes, and the quotes only when the consent covers them.
5. Keep the participant code mapping and the consent record in the private repository, and put no participant identity in the product repository.

The method is in [Step 9: Run The Sessions And Analyze The Results](../guides/usability-testing.md#step-9-run-the-sessions-and-analyze-the-results).

## Part 3: Write The Results

The rules:

- `results.md` carries the minimum measures, the qualitative findings, the instrumentation comparison, the limitations, and the conclusion: [The Results And Findings](../requirements/usability-testing-requirements.md#the-results-and-findings).
- The minimum measures, their statistics, and the `n=<count>` caveat are in [The Analysis](../requirements/usability-testing-requirements.md#the-analysis).
- The record links `results.md`, and its `**Status:**` becomes `Completed` when the counted sessions and the results are recorded: [The Test Record](../requirements/usability-testing-requirements.md#the-test-record).
- The public record is sanitized, and it copies no raw data: [The Public Evidence](../requirements/usability-testing-requirements.md#the-public-evidence).

This week:

1. Write `docs/usability-tests/ut-01/results.md` with the per-participant table, the main task's aggregate completion, the median time on task, the median SEQ for each task, the SUS mean and median with the `n=<count>` caveat, every additional measure the plan named, the thematic analysis, the instrumentation comparison, the limitations, and the conclusion.
2. Write the instrumentation comparison from the test's telemetry export, and say which task or question it could not cover and how the observation covered it instead.
3. Link the sanitized session notes the results summarize, and copy no raw data and no identity.
4. When at least three counted sessions run, set the record's `**Status:**` to `Completed`, and link `results.md` from the index's `Results` cell.
5. When fewer than three counted sessions run, the record stays `Planned`, the results claim no result, the report declares the shortfall and says why, and the `QR/QRT` row follows Part 6.
   A shortfall is declared rather than presented as a result.

The method is in [Step 9: Run The Sessions And Analyze The Results](../guides/usability-testing.md#step-9-run-the-sessions-and-analyze-the-results).

## Part 4: Write The Findings

The rules:

- `results.md` carries one section per finding, numbered `### Finding 1`, `### Finding 2`, and so on, each with its fields and a stable anchor: [The Results And Findings](../requirements/usability-testing-requirements.md#the-results-and-findings).
- A finding is cited by its path and anchor, not by an identifier: [Identifier Rules](../requirements/general-requirements.md#identifier-rules).

This week:

1. Write one section per finding, numbered in the order the results present them (`### Finding 1`, then `### Finding 2`, and so on), with `**Severity:**` `Critical`, `Major`, or `Minor` and the reason for the rating, `**Tasks:**` the tasks and participant codes it came from, such as `UT-01 P-01, UT-01 P-03`, `**Evidence:**` a link to the session notes or the aggregate table, `**Recommendation:**` what the team would change, and `**Task issue:**` a link to the issue that carries the work or `None`.
2. Cite each finding by its own anchor, so `Finding 2` is `docs/usability-tests/ut-01/results.md#finding-2`, and keep the number stable once the report or an issue cites it.
3. Sanitize each finding: the participant codes are allowed, and a name, an address, or a quoted identity is not.

The method is in [Step 10: Triage The Findings And Learn](../guides/usability-testing.md#step-10-triage-the-findings-and-learn).

## Part 5: Triage The Findings And Plan The Fixes

The rules:

- Every finding is triaged, and a significant one becomes a task issue scheduled in the run week's sprint: [The Triage](../requirements/usability-testing-requirements.md#the-triage).
- A product task names the story and `AC-nn` it serves and the `FR-nnn` or `ADR-nnn` in `### Requirements`, and a defect never says `None`: [The Issue Form](../requirements/task-issues-requirements.md#the-issue-form).
- `REL-08` includes the fix the sprint lands, and a fix that cannot finish moves to `SPRINT-09`: [Releases](../requirements/planning-requirements.md#releases).

This week:

1. Triage every finding: its severity, whether it opens a task issue, and when the work is scheduled.
   A finding is significant when its `**Severity:**` is `Critical` or `Major`.
2. When a significant finding exists, open at least one task issue from it and schedule it in `SPRINT-08`.
   No finding is forced when the test finds nothing significant, and saying so is a result.
3. Make the task issue cite the finding by its path and anchor, name the story and the `AC-nn` it serves, and name the `FR-nnn` or `ADR-nnn` in `### Requirements`; a defect never says `None`, and a task that is not product work says `None: repository upkeep`.
4. Set each finding's `**Task issue:**` to the issue it became, or `None` when no issue was opened, and say in the triage why not.
5. Plan the fixes: a fix that lands is in `REL-08`, and a fix that does not land moves to `SPRINT-09` at the sprint close, with its reason declared in the report.
   No fix is forced, and a fix the team would not make is recorded as a decision.

The method is in [Step 10: Triage The Findings And Learn](../guides/usability-testing.md#step-10-triage-the-findings-and-learn).

## Part 6: Record The Verdict And Settle The Threshold

The rules:

- The testing plan carries each test's result, its last check, its planned sprint, and its evidence: [Quality Requirement Testing Plan](../requirements/planning-requirements.md#quality-requirement-testing-plan).
- The threshold's usability goal, when the team has one, is settled with its `**Outcome:**` citing the test: [The Threshold Of Success](../requirements/planning-requirements.md#the-threshold-of-success).
- The results state what was found, and the plan records the verdict: [The Results And Findings](../requirements/usability-testing-requirements.md#the-results-and-findings).

This week:

1. When at least three counted sessions run, record the `QR-nn` row as `Passes` or `Fails`, with `Checked: SPRINT-08` linked to its plan section, and `results.md` as its `Evidence`, per the team's `Response Measure`.
   A failed requirement is not dropped: the findings and the triage carry the fix, and the release claims no quality through it.
2. When fewer than three counted sessions run, the row stays `Not verified`, or moves to `SPRINT-09` with its reason, and the report declares it.
3. Settle the threshold's usability goal when the team has one and the test ran: set `**Status:**` `Achieved` or `Missed`, and add `**Outcome:**` citing `UT-01` and the results.
   A team without a usability goal is not penalised, because the required check is the quality requirement and its test.
4. Bring the record's status and the index in step with Part 3, so the index, the record, and the results agree.

The method is in [Step 10: Triage The Findings And Learn](../guides/usability-testing.md#step-10-triage-the-findings-and-learn) and [Step 4: Record The Progress](../guides/quality-requirement-tests.md#step-4-record-the-progress).

## Part 7: Write The Configuration Plan

The rules:

- `docs/configuration-plan.md` is the maintained inventory, with its `**Reviewed:**` date, and it is updated in the same pull request when a change alters what it records: [Where The Configuration Plan And The Review Live](../requirements/configuration-management-requirements.md#where-the-configuration-plan-and-the-review-live).
- The five groups, the at-least-8 `Active` items, the `CFG-nn` identifier, the fields, the dropped form, and the missing form: [The Configuration Items](../requirements/configuration-management-requirements.md#the-configuration-items).
- Each item's `**Connections:**` field is the single record of its edges, with its kind and what breaks: [The Connections](../requirements/configuration-management-requirements.md#the-connections).
- The `CFG-nn` family is two digits, repository-wide, and its section heading is the identifier alone: [Identifier Rules](../requirements/general-requirements.md#identifier-rules).

This week:

1. Write `docs/configuration-plan.md` with its `**Reviewed:**` date under its `#` heading, and its five groups: source control and release, checks, environments and secrets, dependencies and builds, and agent context and artifacts.
2. Inventory at least 8 `Active` `CFG-nn` items, with at least one in each group, reading the repository rather than a memory of it: `.github/`, `docs/`, `reports/`, the root files, the package manifests, and the settings pages.
   A set of files is one item at its index or entry point, such as the functional requirements index or the architecture `README.md`.
3. Give each item its `**Status:**` `Active`, its `**Type:**`, its `**Purpose:**` saying what breaks without it, its `**Owner:**` who keeps it true, its `**Where:**` as a path or a settings page in words, its `**Connections:**` with their kind and what breaks, and its `**What good looks like:**` stating the target and linking the course rule it must meet.
4. Keep a removed item in its group with `**Status:**` `Dropped` and its `**Dropped:**` date and reason, so no identifier is reused and the history is readable in place.
   Do not add a `**Baseline:**`, a `**Properties:**`, a `**Version:**`, a connections table, or a `## Dropped Items` section.
5. Name a configuration the team does not have in words in the evaluation, with no `CFG-nn` until it exists.
6. Keep the plan public-safe: a private setting is named in words, and no address, credential, or secret value appears in it.
   Record the plan's link in the team's `AGENTS.md`, per [What It States](../requirements/agent-instructions-requirements.md#what-it-states).

The method is in [Step 2: Inventory The Configuration](../guides/configuration-management.md#step-2-inventory-the-configuration) and [Step 3: Connect The Items](../guides/configuration-management.md#step-3-connect-the-items).

## Part 8: Write The Goal-Based Configuration Evaluation

The rules:

- The evaluation carries its baseline, its method, one section per local goal, what the team could not judge, and its first change: [The Evaluation](../requirements/configuration-management-requirements.md#the-evaluation).
- The goal sections and the first change are the recommendation, and no separate plan and no implementation are required: [The Recommendation](../requirements/configuration-management-requirements.md#the-recommendation).
- The review is public and sanitized: [The Public Review](../requirements/configuration-management-requirements.md#the-public-review).

This week:

1. Write `reports/week-08/cm-evaluation.md`, headed `# CM Evaluation`, with `**Baseline:**` the tag or commit the review judged, `**Reviewed:**` the date, `## Method`, one `##` section per local goal, `## What We Could Not Judge`, and `## The First Change`.
2. Write `## Method` as one paragraph: who judged, on what date, against which baseline, in what order, and what was out of scope.
3. Choose the local goals in your own words and explain each.
   A local goal is a purpose an artifact set serves, such as deciding what the product should be, specifying what it must do, verifying it, planning and tracking it, learning from its users, communicating it, or keeping the context trustworthy for a reader or an agent.
   It is not the project's goal.
4. Give each goal section its `**Today:**` the artifacts that achieve it, linked to their `CFG-nn` sections and named in words when the plan does not carry them; its `**A more convenient way:**` the proposed set and the concrete change, using `Keep`, `Merge`, `Replace`, `Cut`, or `Add`; its `**Why:**` the goal is still achieved and the change removes a named mechanism, with the evidence from your own use; and its `**Tradeoffs:**` what the change gives up and why the gain is worth the loss, or why the team would not make it.
5. Name the one change the team would make first in `## The First Change`, with what it keeps, what it removes, and its main tradeoff.
   Record the one item or artifact you could not judge in `## What We Could Not Judge`, with the reason and the risk it carries.
6. Write the evaluation without a change table, a per-item verdict, a cost table, or a graph paragraph, and keep it sanitized: no address, no credential, and no step-by-step that would let a reader use a weakness.
   A goal section that names a failing item and its consequence stays public in words.

The method is in [Step 4: Write The Local Goals](../guides/configuration-management.md#step-4-write-the-local-goals), [Step 5: Judge Each Goal](../guides/configuration-management.md#step-5-judge-each-goal), and [Step 6: Propose A More Convenient Way And Its Tradeoffs](../guides/configuration-management.md#step-6-propose-a-more-convenient-way-and-its-tradeoffs).

## Part 9: Update The Glossary And The Risk Register

The rules:

- `docs/glossary.md` is maintained documentation, and each term carries its meaning: [Where The Glossary Lives](../requirements/glossary-requirements.md#where-the-glossary-lives) and [The Term](../requirements/glossary-requirements.md#the-term).
- `docs/risks.md` carries each risk's statement, its rating, its response, and its fallback: [Where The Risks Live](../requirements/risks-requirements.md#where-the-risks-live) and [Response](../requirements/risks-requirements.md#response).

This week:

1. Add `configuration`, `configuration management`, `configuration review`, `configuration plan`, `configuration item`, `configuration evaluation`, `baseline`, `upkeep`, `reproducible build`, `dependency pinning`, `secret`, `context window`, and `agent instruction` to `docs/glossary.md`, each as a `### Term` under its domain heading, with a `**Defined by:**` link where an artifact defines it.
2. Add the secret-leak risk, the stale-configuration risk, the unupdatable-dependency risk, and the environment-drift risk to `docs/risks.md`, each with its `**Status:**` `Open`, its `**Impact:**` and `**Likelihood:**` with the reasons, its `**Trigger:**`, its `**Window:**`, its `**Mitigation:**`, and its `**Contingency:**`.
3. Write the fallback for each failure mode as the matching risk's `**Contingency:**`:
   - A leaked secret: revoke or rotate it, tell the instructor, clean the history, and write the account privately;
   - A stale configuration plan: update it in the pull request that records the change, and treat a plan that describes an older repository as a defect;
   - A dependency that cannot be updated: pin the working version, record why, and open the task that removes the need for it;
   - A drifting environment: deploy the commit staging passed, keep the runbook current, and redeploy rather than patch the VM by hand.

The method is in [Step 5: Name The Risks And Their Fallbacks](../guides/planning-and-tracking.md#step-5-name-the-risks-and-their-fallbacks).

## Part 10: Carry Out The Week 7 Action Points And Hold The Sprint Review

The rules:

- Read the action points the Week 7 report recorded, with their owners and due weeks, and record each outcome in the Week 8 meeting report: [Meeting Report](../requirements/customer-meetings-requirements.md#meeting-report).
- The weekly meeting is the sprint's Sprint Review, and it shows the sanitized results and the next steps: [Sprint Review](../requirements/sprint-ceremonies-requirements.md#sprint-review) and [Every Meeting](../requirements/customer-meetings-requirements.md#every-meeting).
- Show the deployed product with the analytics and observability dashboards, and ask the permission questions before recording: [Showing Working Software](../requirements/customer-meetings-requirements.md#showing-working-software) and [Permission Questions](../requirements/customer-meetings-requirements.md#permission-questions).
- Give each decision a `DEC-nnn` entry, list it in the report, and cite it from what it changed: [Decision Requirements](../requirements/decisions-requirements.md).
- Produce the report, and a transcript when the meeting was recorded or held in writing: [Where Meeting Artifacts Live](../requirements/customer-meetings-requirements.md#where-meeting-artifacts-live).

This week:

1. Read `## Action points` in `reports/week-07/meeting-report.md`, carry out every action due by Week 8 and any action carried from an earlier report, carry each outcome into the artifact it changed, and record it in `## Previous action points` in `reports/week-08/meeting-report.md`.
2. Put each row of `## Open questions` in the Week 7 report to the customer at the Sprint Review, or close it, and record the outcome in `## Previous open questions`.
3. Hold the Week 8 Sprint Review and show the deployed production instance with the analytics and observability dashboards, the sanitized results, the `QR/QRT` result, the findings and their task issues, the threshold outcome, and the next steps.
   The week's usability results are the review's subject; the configuration review is not presented at the meeting, and its changes are the Week 9 backlog's.
4. Write `reports/week-08/meeting-script.md` with the permission questions first, the results, the findings, the open questions, the next steps, and the read-back of the decisions and action points last.
5. Write `reports/week-08/meeting-report.md` with the review's feedback, a `DEC-nnn` for any decision, at least two action points due after Week 8, and at least one due in Week 9.
6. Publish the transcript when the customer allows it, and say in one line why there is none when the meeting was not recorded or was held in writing.

The method is in [Guide: Validating With The Customer](../guides/validating-with-the-customer.md).

## Part 11: Apply The Review, Run The Sprint's Testing-Plan Rows, And Cut `REL-08`

The rules:

- The release is cut at the sprint's end, on the state after the meeting and any same-week rework: [Releases](../requirements/planning-requirements.md#releases).
- `REL-08` carries `**Released:**` and `**Checked QRs:**`, and a sprint with no checked requirement says `None`: [Releases](../requirements/planning-requirements.md#releases).
- The release body is the upgrade note for whoever deploys it, and the changelog follows Keep a Changelog: [Cutting A Release](../requirements/releases-requirements.md#cutting-a-release).
- A testing-plan row the team's plan scheduled for `SPRINT-08` is run, or moved with a reason and declared: [Quality Requirement Testing Plan](../requirements/planning-requirements.md#quality-requirement-testing-plan).

This week:

1. Apply the Sprint Review's decisions to the results, the findings, the task issues, the testing plan, the configuration plan, and the evaluation.
   A same-week rework is not an action point: apply it now.
2. Run each testing-plan row the team's plan scheduled for `SPRINT-08`, or move it to `SPRINT-09` with a reason, and declare both in the report.
3. Update the testing plan with each row's result, its `Checked` sprint, and its evidence, including the `QR/QRT` verdict from Part 6.
4. Keep `CHANGELOG.md` current, with an `[Unreleased]` entry for each notable change.
5. Merge the sprint's pull requests, then push the tag on that release commit, before the changelog's released section, the `REL-08` block, and the report are merged.
   The release may be docs-only: its body says no product change and no upgrade is required.
   Protect the tag from being moved or deleted.
6. Write `REL-08`'s block with `**Released:**` and `**Checked QRs:**`, listing each `QR-nn` the sprint checked or saying `None`, and after the list the one sentence linking the plan's `## Quality Requirement Testing Plan` once.
7. Advance the configuration plan's `**Reviewed:**` date if the plan is reviewed again after the meeting, and record any enacted configuration change in the pull request that carries it.
   No change is required.
8. Close `SPRINT-08`'s GitHub milestone after moving each issue still open into a later sprint's milestone.

The method is in [Releases](../guides/planning-and-tracking.md#releases) and [Step 4: Record The Progress](../guides/quality-requirement-tests.md#step-4-record-the-progress).

## Part 12: Close The Sprint And Hold The Retrospective

The rules:

- At the close, the sprint section gains `**Actual Velocity:**`, the points of the completed stories and one sentence on what moved out and to which sprint: [Sprints](../requirements/planning-requirements.md#sprints).
- Every sprint from `SPRINT-04` on ends with `reports/week-NN/sprint-retrospective.md`, carrying `## What Went Well`, `## What Did Not`, `## Actions`, and `## Carried Actions`: [Retrospective](../requirements/sprint-ceremonies-requirements.md#retrospective).

This week:

1. Set `**Actual Velocity:**` in `### SPRINT-08` from the completed stories, computed by hand from their `Story Points`, with one sentence on what moved out and to which sprint.
   A sprint that carried only tasks has `0`, and the sentence says the sprint was a task sprint.
2. Write `reports/week-08/sprint-retrospective.md` with its four sections, 3 or more things that went well, 2 or 3 that did not with their root causes, and 3 or 4 actions with their `Owner`, `Impact`, `Reason`, and `Carried` flag.
3. `## Carried Actions` carries the `SPRINT-07` actions marked `Carried: Yes`, each citing that file's `#actions` anchor with the action quoted and an `Outcome` of `Done`, `Not done`, or `Dropped`; an action whose `Outcome` is `Not done` is re-listed in `## Actions` with `Carried: Yes`.

The method is in [Close With The Retrospective](../guides/planning-and-tracking.md#close-with-the-retrospective).

## Part 13: Report On Your AI Usage And Hand Off Week 9

The rules:

- Name the tools you used, what for, and what you did with their output: [AI Usage Report](../requirements/weekly-report-requirements.md#ai-usage-report).
- The evaluation's changes are added to the next sprint's backlog, and no implementation is required this week: [The Recommendation](../requirements/configuration-management-requirements.md#the-recommendation).

This week:

1. Write `reports/week-08/ai-usage.md`, naming each tool, what you used it for, and what you accepted, changed, or rejected, with the reason for each rejection.
2. If you used no AI tools, say so in one line.
3. Say whether an agent was given any usability material, and if so, confirm it was given the sanitized note rather than the raw recording or the private notes.
   Say whether an agent was given the configuration plan or the evaluation, and confirm it was the public, sanitized state.
4. Write the Week 9 handoff in the report: the results, the configuration plan, the evaluation with its first change and its other changes ready to schedule into `SPRINT-09` alongside the deck, the final repository state, and the reflection; the private repository and the recordings folder still accessible; the `REL-08` tag; and the evidence the deck will cite.
   No deck is submitted with this assignment, and the Week 9 assignment owns it.

## What Good Looks Like

Assume your weekly public report is read by someone who does not know your project.
A strong submission has:

- **A `UT-01` results record that says what the sessions found.**
  At least three counted sessions, the per-participant table, the main task's aggregate completion and median time, the median SEQ for each task, the SUS mean and median with `n=<count>`, every measure the plan named, the thematic analysis, the instrumentation comparison and what it could not cover, the limitations, and the conclusion, with the sanitized notes linked and no raw data copied; when fewer than three sessions run, the fallback is declared and no result is claimed.
- **Findings a triage can act on.**
  Each as its own numbered section (`### Finding 1`, `### Finding 2`, and so on), with its severity and the reason, its tasks and participant codes, its evidence, its recommendation, and its task issue, every finding triaged, and a significant finding carried by a task issue scheduled in `SPRINT-08`.
- **Fixes planned rather than promised.**
  A landed fix is in `REL-08`, a fix that could not finish moved to `SPRINT-09` with its reason declared, and no fix was forced when the test found nothing significant.
- **A verdict recorded where it is read.**
  The testing plan's `QR-nn` row is `Passes` or `Fails` with `Checked: SPRINT-08` and the results as its evidence when at least three sessions ran, or `Not verified` or a move to `SPRINT-09` with a reason when they did not, and the threshold's usability goal is settled with its `**Outcome:**` when the team has one.
- **A configuration plan a stranger or an agent can read.**
  `docs/configuration-plan.md` in `docs/`, its `**Reviewed:**` date, at least 8 `Active` `CFG-nn` items in the five groups with at least one in each, each with its status, type, purpose, owner, location, connections with their kind and what breaks, and a target linking the rule it meets, a dropped item in place with its `**Dropped:**`, and no `**Baseline:**`, no `**Properties:**`, no `**Version:**`, no connections table, and no `## Dropped Items` section.
- **An evaluation that judges by goal, not by item.**
  `reports/week-08/cm-evaluation.md` with its baseline, its review date, its method, one section per local goal with `**Today:**`, `**A more convenient way:**`, `**Why:**`, and `**Tradeoffs:**`, its `What We Could Not Judge` note, and its first change; no change table, no per-item verdict, no cost table, and no graph paragraph; the goal is local, not the project's, and a replacement that loses its goal is not a more convenient way.
- **A first change that is a design.**
  The one change the team would make first, what it keeps, what it removes, and its main tradeoff, with no implementation required this week and the first change and the other changes added to the Week 9 backlog.
- **A public review that is sanitized.**
  No secret value, no private address, and no credential in the configuration plan or the evaluation, a settings page named in words rather than linked, a failing item's consequence stated in words, and the incident response named for a leak.
- **A Week 8 report that gives both results and the configuration summary.**
  The report links the results, the sanitized sessions, the `QR/QRT`, the task issues, the private repository, the configuration plan, the evaluation, `REL-08`, the retrospective, and the AI usage, copies no raw participant data, and embeds at most two sanitized screenshots, each in the section that describes it.
- **A release whose record says what was checked.**
  `REL-08` is cut on the release commit, its tag is protected, its `**Checked QRs:**` lists each checked `QR-nn` or says `None` and closes with the one sentence linking the testing plan, its upgrade note says whether anything is required, and the `SPRINT-08` milestone is closed after any open issue is rescheduled.
- **A Week 9 handoff another week can start from.**
  The results, the configuration plan, the evaluation with its first change and its other changes ready to schedule into `SPRINT-09` alongside its other planned items, the private repository and the recordings folder, the `REL-08` tag, the final repository state the evaluation implies, and the deck's evidence named, with no deck submitted.
- **One path and one identifier, everywhere.**
  `docs/configuration-plan.md` and `reports/week-08/cm-evaluation.md` in the report, the guide, and the routers, and the same `CFG-nn` in the configuration plan and the evaluation.

## Assignment Report In The Repository

Write `reports/week-08/README.md`, per [Weekly Public Report](../requirements/weekly-report-requirements.md#weekly-public-report).
This week it also carries:

1. In the summary, say what the sessions found and what the configuration review found: the number of counted sessions, the aggregate completion and ease, the instrumentation comparison, the `QR/QRT` result, the key findings and their triage, the `Active` configuration item count, the number of local goals, the first change and its tradeoff, and what the team keeps.
   Link the results, the sanitized sessions, the `QR/QRT`, the task issues, the private repository, the configuration plan, the evaluation, `REL-08`, the retrospective, and the AI usage.
   State the `n=<count>` caveat, copy no raw participant data, and point at `docs/project-plan.md#quality-requirement-testing-plan` for the rows that are not `Passes`.
2. The `## Usability test` section: the results summary, the sanitized session links, the SUS and SEQ summary, the instrumentation comparison, the findings, the triage, and the `QR/QRT` result.
3. The `## Configuration management` section immediately after `## Usability test`: the configuration plan's link, the evaluation's link, the baseline the evaluation reviewed, the `Active` item count, the local goals, the first change and its tradeoff, and what is kept.
   Link both artifacts and restate neither.
4. The `## Threshold review` section when a goal is still `Open` when the review starts, per [The Threshold Of Success](../requirements/planning-requirements.md#the-threshold-of-success).
5. The `## Week 9 handoff` section: the results, the configuration plan, the evaluation's first change and other changes ready to schedule into `SPRINT-09`, the private repository and the recordings folder, the `REL-08` tag, the final repository state the evaluation implies, and the deck's evidence named.
6. The coverage table, with one row per deliverable and no row for the configuration plan or the evaluation, because the one `Configuration management` row points at its section:

| Deliverable               | Artifact                                                                                                          |
| ------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| Sprint plan               | `docs/project-plan.md#sprint-08`                                                                                  |
| Usability results         | `docs/usability-tests/ut-01/results.md`                                                                           |
| Sanitized sessions        | `docs/usability-tests/ut-01/sessions/P-01.md` to `P-nn.md`                                                        |
| `QR-nn` and its test      | the quality requirement file under `docs/quality-requirements/qr/` and its `QRT-nn` section                       |
| Findings and their issues | `docs/usability-tests/ut-01/results.md#findings`, and the task issues the findings became                         |
| Threshold review          | `#threshold-review`                                                                                               |
| Configuration management  | `#configuration-management`                                                                                       |
| Glossary                  | `docs/glossary.md`                                                                                                |
| Risk register             | `docs/risks.md`                                                                                                   |
| `REL-08`                  | the tag and its release body, `CHANGELOG.md`, and `docs/project-plan.md#rel-08` with `Released` and `Checked QRs` |
| Sprint retrospective      | `reports/week-08/sprint-retrospective.md`                                                                         |
| AI usage                  | `reports/week-08/ai-usage.md`                                                                                     |
| Week 7 action points      | `## Previous action points` in `reports/week-08/meeting-report.md`                                                |
| Week 7 open questions     | `## Previous open questions` in the same report                                                                   |
| Sprint Review             | `reports/week-08/meeting-report.md`                                                                               |
| Meeting script            | `reports/week-08/meeting-script.md`                                                                               |
| Meeting transcript        | `reports/week-08/meeting-transcript.md`, or one line saying why there is none                                     |
| Week 9 handoff            | `#week-9-handoff`                                                                                                 |

7. Repository evidence: one merged pull request that closed its task issue, and the latest green link-check, Markdown-check, `actionlint`, and product-code CI runs on `main`.
8. `## Deviations`: anything you did differently from this assignment, per [Declaring Deviations](../requirements/weekly-report-requirements.md#declaring-deviations), including a session that did not count, fewer than three counted sessions, a testing-plan row that moved to `SPRINT-09` with its reason, and a fix that could not land in `REL-08`.
   An item the evaluation could not judge is its `What We Could Not Judge` note rather than a deviation, and withholding a public-review detail is the compliance the review's rule requires.
9. `## Privacy`: one line that no private-only material was committed to the product repository, and no participant identity was committed to it.

The report embeds at most two sanitized screenshots, each in the section that describes it: the usability results and the configuration evaluation may each contribute one, and a screenshot is evidence rather than decoration.

## Assignment Report On Moodle

Create one PDF, per [Private Submission Wrapper](../requirements/weekly-report-requirements.md#private-submission-wrapper).
Keep it to two pages, and put nothing in it except the following.
A transcript under item 9 goes in an appendix, which the two pages do not count.

1. Project name and the team number.
2. A table of team members: GitHub username, real name, and university email.
3. A permalink to `reports/week-08/README.md` at the full commit hash.
4. The private usability-data repository URL and the access instructions, and the recordings folder URL and the access instructions.
5. The product's staging and production addresses on the university VM, private-only, with the note that the customer reaches them from the university network.
6. The staging analytics dashboard and backend addresses and credentials, and the staging observability dashboard, backend, and query addresses and credentials, private-only.
7. A link to the Sprint Review's recording, accessible to instructors, or one line saying why there is none: the customer refused recording, or the meeting was held in writing.
8. One line confirming that no private-only material was committed to the repository, and no participant identity was committed to it.
9. The meeting transcript, if the customer refused to let you publish it.

The PDF carries no participant identity, no deck, and no configuration appendix.
The production analytics and observability dashboards are the Week 6 wrapper's; this week's wrapper does not repeat them.

### Submission Procedure

- Merge `reports/week-08/README.md` and every file it links into `main`.
- Take the permalink and the snapshot from that `main` commit, per [Permalinks And Snapshots](../requirements/repository-requirements.md#permalinks-and-snapshots).
- Submit the PDF and the snapshot through Moodle.

## Checklist

- [ ] `SPRINT-08` planned with its goal, its `**Due:**` field, its `**Sprint Backlog:**` link, and its `**Planned Velocity:**`, `SPRINT-09` given its provisional goal and its `**Due:**` of `2026-11-28`, the results and configuration tasks scheduled in `SPRINT-08`, the record's `**Run sprint:**` set, and each task issue carrying its `### Requirements`, its criteria, its `**Responsible:**`, its `**Accountable:**`, and its assignees ([Part 1](#part-1-refine-the-product-backlog-and-plan-the-sprint)).
- [ ] At least three counted sessions run, with five as the design target, at the dates the team scheduled, in person on the university network against staging, with the seed reset before each, and the instrumentation verified before the first counted one ([Part 2](#part-2-run-the-sessions-and-write-the-sanitized-notes)).
- [ ] The raw text and the telemetry export in the private repository, the recordings in the cloud folder, and the sanitized `sessions/P-nn.md` notes written on the day with no identity ([Part 2](#part-2-run-the-sessions-and-write-the-sanitized-notes)).
- [ ] `docs/usability-tests/ut-01/results.md` with the per-participant table, the aggregate completion, the medians, the SUS with `n=<count>`, every measure the plan named, the thematic analysis, the instrumentation comparison, the limitations, and the conclusion, and the record's `**Status:**` and the index updated ([Part 3](#part-3-write-the-results)).
- [ ] One numbered section per finding (`### Finding 1`, `### Finding 2`, and so on), each with its severity, tasks and participant codes, evidence, recommendation, and task issue, cited by its own anchor, and sanitized ([Part 4](#part-4-write-the-findings)).
- [ ] Every finding triaged, a significant finding carried by a task issue scheduled in `SPRINT-08`, the fixes planned with a landed one in `REL-08`, and a later one moved to `SPRINT-09` with its reason declared ([Part 5](#part-5-triage-the-findings-and-plan-the-fixes)).
- [ ] The `QR/QRT` row recorded as `Passes` or `Fails` with `Checked: SPRINT-08` and the results as evidence, or `Not verified` or moved to `SPRINT-09` with a reason, and the threshold's usability goal settled when the team has one ([Part 6](#part-6-record-the-verdict-and-settle-the-threshold)).
- [ ] `docs/configuration-plan.md` with its `**Reviewed:**` date, its five groups, at least 8 `Active` `CFG-nn` items with at least one in each, each with its status, type, purpose, owner, location, connections, and target, and a dropped item in place ([Part 7](#part-7-write-the-configuration-plan)).
- [ ] The configuration plan in the team's `AGENTS.md`, a missing configuration named in words, and no `**Baseline:**`, `**Properties:**`, `**Version:**`, connections table, or `## Dropped Items` section ([Part 7](#part-7-write-the-configuration-plan)).
- [ ] `reports/week-08/cm-evaluation.md` with its `**Baseline:**`, its `**Reviewed:**`, its `## Method`, one section per local goal with `**Today:**`, `**A more convenient way:**`, `**Why:**`, and `**Tradeoffs:**`, its `## What We Could Not Judge` note, and its `## The First Change` paragraph ([Part 8](#part-8-write-the-goal-based-configuration-evaluation)).
- [ ] The evaluation is goal-first and local, names the mechanism and the tradeoffs, records no change table, per-item verdict, cost table, or graph paragraph, and is public and sanitized ([Part 8](#part-8-write-the-goal-based-configuration-evaluation)).
- [ ] The configuration terms in `docs/glossary.md` and the four configuration risks in `docs/risks.md`, each starting `**Status:** Open`, with the fallback as its `**Contingency:**` ([Part 9](#part-9-update-the-glossary-and-the-risk-register)).
- [ ] Each Week 7 action point's outcome in `## Previous action points`, each Week 7 open question put to the customer or closed, and `reports/week-08/meeting-script.md` with the permission questions first and the read-back last ([Part 10](#part-10-carry-out-the-week-7-action-points-and-hold-the-sprint-review)).
- [ ] `reports/week-08/meeting-report.md` with the review's feedback, a `DEC-nnn` for any decision, 2 or more action points due after Week 8, at least one due in Week 9, and the transcript or its reason ([Part 10](#part-10-carry-out-the-week-7-action-points-and-hold-the-sprint-review)).
- [ ] The review's decisions applied, each `SPRINT-08` testing-plan row run or moved with a reason, the testing plan updated, and the configuration plan's `**Reviewed:**` date advanced if it was reviewed again ([Part 11](#part-11-apply-the-review-run-the-sprints-testing-plan-rows-and-cut-rel-08)).
- [ ] `REL-08` tagged on the release commit and its tag protected, with the changelog's released section, the upgrade note, the plan's `REL-08` block with `Released` and `Checked QRs`, and the sprint milestone closed ([Part 11](#part-11-apply-the-review-run-the-sprints-testing-plan-rows-and-cut-rel-08)).
- [ ] `**Actual Velocity:**` set in `### SPRINT-08`, and `reports/week-08/sprint-retrospective.md` with its four sections, its carried actions, and any `Not done` action re-listed with `Carried: Yes` ([Part 12](#part-12-close-the-sprint-and-hold-the-retrospective)).
- [ ] `reports/week-08/ai-usage.md`, including whether an agent was given the sanitized results and whether it was given the configuration plan ([Part 13](#part-13-report-on-your-ai-usage-and-hand-off-week-9)).
- [ ] The Week 9 handoff written: the results, the configuration plan, the evaluation's first change and other changes ready to schedule, the private repository and the recordings folder, the `REL-08` tag, and the final repository state the evaluation implies, with no deck submitted ([Part 13](#part-13-report-on-your-ai-usage-and-hand-off-week-9)).
- [ ] `reports/week-08/README.md` with the summary, the `## Usability test` and `## Configuration management` sections, the `## Week 9 handoff`, the coverage rows, and the `## Privacy` line ([Assignment Report In The Repository](#assignment-report-in-the-repository)).
- [ ] Everything merged into `main`, with the permalink and the snapshot taken from that commit ([Submission Procedure](#submission-procedure)).
- [ ] PDF ready with the permalink, the private repository and recordings folder links and access, the staging and production addresses, the staging analytics and observability credentials, and no participant identity ([Assignment Report On Moodle](#assignment-report-on-moodle)).
