# Sprint Ceremony Requirements

These requirements define the four ceremonies a team runs around a sprint, and the estimation activity that runs inside two of them: sprint planning, product backlog refinement, the sprint review, and the retrospective.
The method is the [Scrum Guide](https://scrumguides.org/scrum-guide.html), named here as the source, because the lecture does not teach the ceremonies.
The artifacts the ceremonies write into are owned elsewhere: the sprint's section and its velocity fields in [Planning Requirements](planning-requirements.md#sprints), the issue fields and the sprint milestone in [Issue Tracking Requirements](issue-tracking-requirements.md#issue-fields), the stories and tasks the estimates sit on in [User Story Requirements](user-stories-requirements.md) and [Task Issue Requirements](task-issues-requirements.md), and the meeting that the review is in [Customer Meeting Requirements](customer-meetings-requirements.md#showing-working-software).
[Guide: Planning And Tracking](../guides/planning-and-tracking.md) is the method for the plan, the threshold of success, and the weekly review, and what the weekly report records about the ceremonies is in [Weekly Report Requirements](weekly-report-requirements.md#weekly-public-report).

<h2>Table of contents</h2>

- [Sprint Planning](#sprint-planning)
- [Product Backlog Refinement](#product-backlog-refinement)
- [Estimation](#estimation)
- [Sprint Review](#sprint-review)
- [Retrospective](#retrospective)
- [Full Example](#full-example)

## Sprint Planning

**Since: W4**

Sprint planning is the ceremony that opens a sprint: the team sets the goal it commits to and selects the stories that reach it.
The sprint's `### SPRINT-nn` section in `docs/project-plan.md` is the planning record, so planning produces no document of its own.

**Required**

1. Hold planning at the start of every sprint, and write its result into the sprint's `### SPRINT-nn` section, per [Sprints](planning-requirements.md#sprints).
2. Planning sets the goal, and the goal it sets replaces the provisional one the section carried until then.
3. The stories and tasks selected are scheduled into the sprint's GitHub milestone, per [Scheduling An Issue](issue-tracking-requirements.md#scheduling-an-issue), which the `**Sprint Backlog:**` field links; the plan copies no list of them.
   The selection starts at the top of the [product backlog](#product-backlog-refinement), and scheduling is where an issue leaves it.
4. Planning adds `**Planned Velocity:**` below `**Sprint Backlog:**`: the story points of the stories selected for the sprint.
5. Compute that total by hand from the selected stories' `Story Points`, because a single-select field holds one option and cannot be added up.
6. When the sprint closes, add `**Actual Velocity:**` below `**Planned Velocity:**`: the points of the stories the sprint completed, added the same way.
7. Continue that line with one sentence saying what moved out of the sprint and into which sprint.
8. Plan `SPRINT-04` first, and plan every later sprint the same way in its own week.

## Product Backlog Refinement

**Since: W4**

The **product backlog** is the open issues that sit in no sprint's GitHub milestone, per [Scheduling An Issue](issue-tracking-requirements.md#scheduling-an-issue).
Refinement is how it stays ready: the next two sprints' worth of it is made small enough, and understood well enough, to schedule, and each item stays in the backlog until its sprint is planned.
It produces no document, and its evidence is the estimate on each story.

**Required**

1. Before a sprint is planned, refine the next two sprints' worth of the product backlog until each item is ready to schedule, using the method in [Guide: Planning And Tracking](../guides/planning-and-tracking.md).
2. Refinement produces no document: its evidence is the `Story Points` value on each story, per [Estimation](#estimation).
3. A story is ready to schedule when its scope is settled, its acceptance criteria are runnable, per [Acceptance Criteria](user-stories-requirements.md#acceptance-criteria), and its `Story Points` is set.
4. Refinement does not schedule an item: it stays in the product backlog, with no milestone, no `Responsible` value, no `Accountable` value, and no assignees, until its sprint's planning schedules it, per [Scheduling An Issue](issue-tracking-requirements.md#scheduling-an-issue) and [Sprint Planning](#sprint-planning).
5. A story larger than `13SP` is split before it is scheduled, so a sprint's milestone holds only stories the scale can estimate and one sprint can finish.
6. In `SPRINT-04`, planning itself estimates the sprint's stories and orders its tasks, because the week before had no refinement.
7. An issue carried from an earlier week is refined before it enters a sprint, and a story among them is estimated, or it stays unscheduled.

**Recommended**

- Refine each item against the stories already estimated, so a new `Story Points` value is a comparison rather than a guess.

## Estimation

**Since: W4**

Estimation is an activity inside [Sprint Planning](#sprint-planning) and [Product Backlog Refinement](#product-backlog-refinement), not a ceremony of its own.
The `Story Points` field carries the estimate, and the `Priority` field carries the order of work.

**Required**

1. Three `Public` single-select issue fields carry the estimate and the order of work, and the issue type each pins to says which issues it applies to:

   | Field          | Options                                                | Pins to      | Set when              |
   | -------------- | ------------------------------------------------------ | ------------ | --------------------- |
   | `MoSCoW`       | `Must Have`, `Should Have`, `Could Have`, `Won't Have` | `User Story` | the story is written  |
   | `Story Points` | `1`, `2`, `3`, `5`, `8`, `13`                          | `User Story` | refinement            |
   | `Priority`     | `High`, `Medium`, `Low`                                | `Task`       | the task is scheduled |

2. The field definitions, their options, and their visibility are in [Issue Fields](issue-tracking-requirements.md#issue-fields); this section says when each value is set.
3. `Story Points` follows the modified Fibonacci sequence up to `13`, so `13` is the largest estimate a story carries.
4. A story above `13SP` is split before it is estimated or scheduled.
5. A `13SP` story is the largest story scheduled, and it is decomposed into tasks like any other story.
6. Stories are estimated against stories, so an estimate compares one story with the ones already estimated rather than stating a duration.
7. A task carries `Priority` for its order and no estimate of its own; what a task issue carries is in [The Issue Form](task-issues-requirements.md#the-issue-form).
8. `MoSCoW` is set when the story is written, and its values and their reasons are in [MoSCoW Prioritization](user-stories-requirements.md#moscow-prioritization).
9. A change to a story's `Story Points` is a change to the story, recorded per [Where Stories Live](user-stories-requirements.md#where-stories-live).
10. The sprint's velocity is the only total the team keeps, computed per [Sprint Planning](#sprint-planning).

## Sprint Review

**Since: W4**

The weekly customer meeting is the Sprint Review: the sprint's result meets the customer in the meeting the team already holds.

**Required**

1. The review is not a second meeting, so no review is scheduled in addition to the customer meeting.
2. Show the working software the sprint completed, per [Showing Working Software](customer-meetings-requirements.md#showing-working-software).
3. Show the quality requirements and the architecture against the drivers, so the review covers the requirements and the design and not only the screens.
4. The customer's verdict on each story is recorded as a `DEC-nnn`, per [Showing Working Software](customer-meetings-requirements.md#showing-working-software).
5. The meeting report is the review's record, and it carries the review's outcome.
6. The meeting's schedule, its script, and its report are the rules in [Every Meeting](customer-meetings-requirements.md#every-meeting) and [Meeting Report](customer-meetings-requirements.md#meeting-report); this section adds no second schedule and no second record.

## Retrospective

**Since: W4**

The retrospective is where the team records what its way of working produced and what it changes next.
The file is written at the sprint's close, after `**Actual Velocity:**` is set, and it is the record of that sprint.

**Required**

1. Write `reports/week-NN/sprint-retrospective.md` at the end of every sprint from `SPRINT-04` on, with these sections, in this order:

   | Section              | Columns                                          | Rows                                                                                                                                                   |
   | -------------------- | ------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------ |
   | `## What Went Well`  | `What went well`                                 | 3 or more, each one sentence naming what happened                                                                                                      |
   | `## What Did Not`    | `Problem`, `Root cause`                          | 2 or 3, each with the problem and its root cause                                                                                                       |
   | `## Actions`         | `Action`, `Owner`, `Impact`, `Reason`, `Carried` | 3 or 4; `Owner` is a GitHub username, `Impact` is `High`, `Medium`, or `Low`, and `Carried` is `Yes` or `No`                                           |
   | `## Carried Actions` | `Action`, `Outcome`                              | one row per action carried from the previous retrospective; `Outcome` is `Done`, `Not done`, or `Dropped`, and the action is re-listed when it is open |

2. `Carried` is `Yes` when the next sprint's retrospective reports the action in its `## Carried Actions`, and `No` when the team does not carry it.
3. `## Carried Actions` has one row for each action the previous file marked `Carried: Yes`: the `Action` cell cites it by that file's path and `#actions` anchor with the action quoted, and `Outcome` is `Done`, `Not done`, or `Dropped` and says what was found or why not.
   An action the team no longer intends to do is `Dropped`.
4. An action with `Outcome: Not done` is re-listed in this file's `## Actions` with `Carried: Yes`, so the next retrospective reports it again; an action `Done` or `Dropped` is not re-listed.
5. `SPRINT-04`'s file is the first retrospective, so its `## Carried Actions` says there is no previous retrospective rather than carrying an empty table.
6. The file is the record of its sprint and is not rewritten; the next sprint's file carries the history, per [Where Artifacts Live In The Repository](general-requirements.md#where-artifacts-live-in-the-repository).
7. An action is not an identifier family: cite it by its retrospective's path and `#actions` anchor, with the action quoted, per [Identifier Rules](general-requirements.md#identifier-rules).
8. What the weekly report records about the ceremonies is in [Weekly Public Report](weekly-report-requirements.md#weekly-public-report); this file adds no report section.

**Recommended**

- Keep each cell short, so the next retrospective is read rather than skimmed.
- Write each action as a change the team can make in the next sprint, and make its `Reason` name the problem or root cause it answers.

## Full Example

The example is the meeting-booking app at the end of Week 4: a coach sells sessions online through one booking link, and `SPRINT-04`'s goal is that a client reschedules a booking without emailing the coach.
The sprint serves `TOS-01`, the goal that a coach takes one real paid booking through the product by the end of Week 6.
`US-01` (pay at booking) was fixed at `13SP` when it was estimated in `SPRINT-03`, and it is the largest story the team has scheduled, so `SPRINT-04`'s stories are sized against it: `US-02` (reschedule a booking) at `8SP` and `US-03` (pick a new time from the coach's availability) at `5SP`.

From `docs/project-plan.md`:

```markdown
### SPRINT-04

A client reschedules a booking without emailing the coach.

- **Due:** 2026-10-24
- **Sprint Backlog:** [the issues scheduled into SPRINT-04](https://github.com/<organization>/<repo>/milestone/2)
- **Planned Velocity:** 13
- **Actual Velocity:** 8; `US-03` did not finish and moved to `SPRINT-05`.
```

From `reports/week-04/sprint-retrospective.md`, the first retrospective:

```markdown
# Sprint 04 retrospective

## What Went Well

| What went well                                                                                                |
| ------------------------------------------------------------------------------------------------------------- |
| Planning set the goal and a planned velocity of `13SP` on Monday, so the team started the week with a target. |
| The customer accepted `US-02` at the review, and the reschedule flow needed no rework.                        |
| The team refined `SPRINT-05` and `SPRINT-06` in the same week, so both future plannings start from estimates. |

## What Did Not

| Problem                                                                                                      | Root cause                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------- |
| `US-03` did not finish, so the sprint met its goal for starting a reschedule but not for picking a new time. | The team estimated `US-03` at `5SP` before anyone had looked at the availability lookup, which took the two days the story had. |
| The payment webhook broke on Thursday, and nobody noticed until the review.                                  | No check watched the deployed product, and every test ran against the sandbox, where the webhook still worked.                  |

## Actions

| Action                                                                              | Owner | Impact | Reason                                                                                                         | Carried |
| ----------------------------------------------------------------------------------- | ----- | ------ | -------------------------------------------------------------------------------------------------------------- | ------- |
| Spike the availability lookup before `US-03` enters `SPRINT-05`.                    | alice | High   | `US-03` slipped because the lookup was not understood when it was estimated.                                   | Yes     |
| Add a daily check that books and reschedules a session in the deployed product.     | bob   | High   | The webhook broke on Thursday and no check reported it.                                                        | Yes     |
| Refine the next two sprints a week before their planning, not in the planning week. | carol | Medium | `SPRINT-04` had no refinement the week before, so `US-03` was estimated in planning and the lookup was missed. | No      |

## Carried Actions

None: `SPRINT-04` is the first sprint with a retrospective, so there is no previous retrospective to carry actions from.
```

`SPRINT-04`'s `## Carried Actions` is that sentence about there being no previous retrospective, and the file carries no empty table.
The next sprint's file carries the history, with one row for each action the first file marked `Carried: Yes`:

```markdown
## Carried Actions

| Action                                                                                                                                                                     | Outcome                                                                                                             |
| -------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- |
| [`reports/week-04/sprint-retrospective.md`](../week-04/sprint-retrospective.md#actions): "Spike the availability lookup before `US-03` enters `SPRINT-05`."                | `Done`: the lookup is one query, and `US-03` was re-estimated at `3SP`.                                             |
| [`reports/week-04/sprint-retrospective.md`](../week-04/sprint-retrospective.md#actions): "Add a daily check that books and reschedules a session in the deployed product." | `Not done`: the provider allows no sandbox payment in the deployed environment, so the check waits for a test card. |
```

The `Not done` action is re-listed in `reports/week-05/sprint-retrospective.md`'s own `## Actions` with `Carried: Yes`, so `SPRINT-06`'s retrospective reports it again.
