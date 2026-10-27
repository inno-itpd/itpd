# Planning Requirements

These requirements define the project plan and the threshold of success: where each lives, what parts each carries, and how each part is written and kept current.
[Guide: Planning And Tracking](../guides/planning-and-tracking.md) is the method.
How the `SPRINT-nn`, `MLS-nn`, `REL-nn`, and `TOS-nn` identifiers are issued and cited is in [General Requirements](general-requirements.md#identifier-rules).

<h2>Table of contents</h2>

- [Where The Plan And The Threshold Live](#where-the-plan-and-the-threshold-live)
- [Milestones](#milestones)
- [Sprints](#sprints)
- [Releases](#releases)
- [Quality Requirement Testing Plan](#quality-requirement-testing-plan)
- [Progress Monitoring](#progress-monitoring)
- [The Threshold Of Success](#the-threshold-of-success)
- [Full Example](#full-example)

## Where The Plan And The Threshold Live

**Since: W3**

The project plan and the threshold of success are maintained documentation.
They are created in Week 3 in their final place and stay current for the rest of the course, per [Where Artifacts Live In The Repository](general-requirements.md#where-artifacts-live-in-the-repository).

**Required**

1. The project plan is `docs/project-plan.md`.
   It carries these parts, in this order, and the linked rule says what each part must say:

   - The **milestones**, per [Milestones](#milestones): one `### MLS-nn` section per milestone.
   - The **sprints**, per [Sprints](#sprints): one `### SPRINT-nn` section per sprint, each with its goal, its due date, its sprint backlog, and its release per [Releases](#releases).
   - The **quality requirement testing plan**, per [Quality Requirement Testing Plan](#quality-requirement-testing-plan): one table, one row per test.
   - The **progress monitoring**, per [Progress Monitoring](#progress-monitoring), last.

2. The threshold of success is `docs/threshold-of-success.md`.
   It carries one `## TOS-nn` section per goal and, below them, the failure and success statements they came from, per [The Threshold Of Success](#the-threshold-of-success).

## Milestones

**Since: W3**

A **milestone** is an increment on the path to the threshold, due at the end of a week.
The work toward it may span one or more sprints, and not every week has one of its own: the releases give the weekly cadence, and the milestones give the increments on the path to the threshold of success.
A milestone is plan documentation only: it has no GitHub milestone of its own, because each sprint is one, and its section reaches the platform through its sprints.
It carries no state, per [Identifier Rules](general-requirements.md#identifier-rules).
Each increment names the sprints that complete it, and a sprint belongs to at most one of them.
A sprint no milestone covers is still scheduled in its own GitHub milestone, per [Sprints](#sprints), and an issue the team has not scheduled sits in no sprint's milestone; there is still no parking milestone.

**Required**

1. Number each milestone by the week it is due in: `MLS-03` is due at the end of Week 3.
   A week with no milestone leaves a gap in the sequence, which [Identifier Rules](general-requirements.md#identifier-rules) expects.
2. The plan carries one `### MLS-nn` section per milestone under `## Milestones`.
3. A `### MLS-nn` section opens with these fields, in this order, as a bulleted list, per [Identifier Rules](general-requirements.md#identifier-rules):

   | Field           | What it says                                                                                               |
   | --------------- | ---------------------------------------------------------------------------------------------------------- |
   | `**Due:**`      | The hard deadline of the due week, from the syllabus, the date the last sprint's GitHub milestone carries. |
   | `**Sprints:**`  | The consecutive `SPRINT-nn` run the milestone is worked on in, each linked, one or more.                   |
   | `**Advances:**` | The `TOS-nn` goal or goals the milestone serves, each linked, at least one.                                |

4. A description of the increment follows the fields.
   Its first sentence states what the increment delivers, so a reader who stops there has the milestone, and it is the one place the increment's scope is edited.
   Later sentences may add scope, sequencing, or the problem the increment beats, and do not restate `**Sprints:**` or `**Advances:**`.
5. The milestone does not repeat the `VP-nn`: it reaches the vision through its `**Advances:**`, and the vision's goal links the threshold, per [Goal](product-vision-requirements.md#goal).
6. The team chooses its milestone set.
   In Week 3 it writes one: `MLS-03`, whose focus is delivering the MUP.
   Further milestones are the team's choice: each is written when the team defines the increment it delivers, and its number follows its due week, so one due at the end of Week 5 is `MLS-05`; the week is the team's choice.
7. The `**Sprints:**` runs are disjoint and consecutive, and each ends in the week its milestone is due, so a sprint belongs to at most one milestone.
   The runs need not cover every sprint: a sprint no run names is still planned in its `### SPRINT-nn` section and scheduled in its GitHub milestone, per [Sprints](#sprints).
   An issue is scheduled by being assigned to its sprint's GitHub milestone, per [Scheduling An Issue](issue-tracking-requirements.md#scheduling-an-issue), and a reschedule moves it to the later sprint's milestone.

## Sprints

**Since: W3**

A **sprint** is one submission week, with a timebox, a goal, a release of its own, and a GitHub milestone.
Every week from Week 3 to Week 9 is a sprint, so the plan carries seven of them, `SPRINT-03` to `SPRINT-09`, and each is a GitHub milestone.

**Required**

1. Each sprint is `SPRINT-nn` after its week number, per [Identifier Rules](general-requirements.md#identifier-rules), and the plan carries one `### SPRINT-nn` section per sprint, in sprint order, under `## Sprints`.
2. Each sprint is a GitHub **milestone** titled `SPRINT-nn: <focus>`, such as `SPRINT-03: Pay at booking`, with the hard deadline of its week as the due date.
   The focus is a short phrase, and the sprint's goal stays in the plan's section.
   Create all seven milestones when the plan is written, so that scheduling an issue is assigning it to a milestone that already exists.
3. A `### SPRINT-nn` section opens with the sprint's goal, in one sentence: what the sprint is for, stated as a result rather than as a list of tasks.
4. A sprint the team has not planned yet states a **provisional** goal: one sentence, kept current until the sprint is planned, so the plan leaves no future week without direction.
5. Under the goal, the section carries these fields, in this order, as a bulleted list, per [Identifier Rules](general-requirements.md#identifier-rules):

   | Field                 | What it says                                                                                                                                                                                                                                                                                     |
   | --------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
   | `**Due:**`            | The hard deadline of the sprint's week, from the syllabus, such as `2026-10-17`, the date its GitHub milestone carries.                                                                                                                                                                          |
   | `**Sprint Backlog:**` | A link to the sprint's GitHub milestone, such as `https://github.com/<organization>/<repo>/milestone/<number>`, which lists the issues scheduled into the sprint. The number is the one GitHub assigned to the milestone, not the sprint's number. The field appears once the sprint has issues. |

6. The plan does not copy that list: scheduling is assigning an issue to its sprint's milestone, per [Scheduling An Issue](issue-tracking-requirements.md#scheduling-an-issue).
7. Close the sprint's GitHub milestone once its release is cut, per [Releases](#releases).
   An issue still open is first rescheduled into a later sprint's milestone, per [Scheduling An Issue](issue-tracking-requirements.md#scheduling-an-issue).

**Since: W4**

8. The sprint's goal is set at planning and replaces the provisional one, per [Sprint Planning](sprint-ceremonies-requirements.md#sprint-planning).
9. A planned sprint carries two more fields after `**Sprint Backlog:**`, in this order:

   | Field                   | What it says                                                                                                                     |
   | ----------------------- | -------------------------------------------------------------------------------------------------------------------------------- |
   | `**Planned Velocity:**` | The story points of the stories selected for the sprint, set at planning and computed by hand from their `Story Points` values.  |
   | `**Actual Velocity:**`  | Added when the sprint closes: the story points of the completed stories, and one sentence on what moved out and to which sprint. |

   The velocity is computed by hand, because a single-select field holds one option and cannot be added up.
   [Estimation](sprint-ceremonies-requirements.md#estimation) says how a story's points are set.

**Example**

The fields of a planned sprint:

```markdown
- **Due:** 2026-10-17
- **Sprint Backlog:** [the issues scheduled into SPRINT-03](https://github.com/<organization>/<repo>/milestone/1)
- **Planned Velocity:** 8
- **Actual Velocity:** 5; the two remaining stories moved to SPRINT-04.
```

## Releases

**Since: W3**

A **release** is the sprint's stable state: the product as it stands when the sprint ends, tagged, so later work cites one commit rather than a moving week.
Every sprint from Week 3 to Week 9 ends in one release, named `REL-nn` after its sprint: the MUP week is `REL-03`, and the last is `REL-09`.
The changelog, the tags, and the release titles follow [Release Requirements](releases-requirements.md); this section says how a release belongs to its sprint.

**Required**

1. Each sprint's release is a `#### REL-nn` section nested under its `### SPRINT-nn` section, and the number follows the sprint's, per [Identifier Rules](general-requirements.md#identifier-rules).
2. Until the release is published, the `#### REL-nn` heading stands alone: nothing is written under it.
3. When the release is published, its section carries one line, the tag as link text and the day it was cut:

   ```markdown
   Released as [v0.1.0](https://github.com/<organization>/<repo>/releases/tag/v0.1.0) on 2026-10-15.
   ```

   The tag is the team's choice under SemVer; the plan does not fix a numbering.

4. Cut the release at the sprint's end, on the state after the customer meeting and any same-week rework: merge the sprint's pull requests, then push the tag on that commit.
   Then merge what links the tag, in this order: the changelog's released section, this `REL-nn` line, and the week's report, so every link resolves the first time it is checked.
5. The `REL-nn` section does not link the changelog, and the changelog does not mention `REL-nn`: the changelog's released section links the release, and the plan and the week's report make the link between the release and its sprint.

**Since: W5**

6. A team may release more than once in a sprint: the sprint's `REL-nn` is the last release cut in that sprint, and an earlier release in the same sprint carries no `REL-nn`.

**Recommended**

- Put what should point at the release into its GitHub release body, such as the changelog section for that version and the week's report.

## Quality Requirement Testing Plan

**Since: W5**

The plan carries one table of the quality requirement tests and what each last found.
A test's definition is in [Quality Requirement Tests](quality-requirements-requirements.md#quality-requirement-tests), and this section says how its result is kept.

**Required**

1. `docs/project-plan.md` carries a `## Quality Requirement Testing Plan` section, with one row per `QRT-nn` and these columns, in this order:

   | Column               | What it holds                                                                                                                                  |
   | -------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------- |
   | `QR`                 | The requirement the test proves, linked to its file                                                                                            |
   | `QRT`                | The test, cited as the pair and linked to its section                                                                                          |
   | `Status`             | The test's result at its last check                                                                                                            |
   | `Checked`            | The `SPRINT-nn` of that check                                                                                                                  |
   | `Planned for sprint` | The `SPRINT-nn` the test is planned for                                                                                                        |
   | `Evidence`           | A link to the proof the test's level requires, per [Quality Requirement Tests](quality-requirements-requirements.md#quality-requirement-tests) |

2. The rows follow the order of the quality requirements index, and a test's number breaks a tie within one requirement, per [The Quality Requirements Index](quality-requirements-requirements.md#the-quality-requirements-index).
3. `Status` is the test's result at its last check: `Passes`, `Fails`, or `Not verified`, where `Not verified` means no check is recorded, or `Dropped` when the test itself is dropped.
4. `Checked` is the sprint of that check, linked to its `### SPRINT-nn` section in the plan, such as `[SPRINT-05](#sprint-05)`, and `None` on a `Not verified` or `Dropped` row.
5. `Planned for sprint` is exactly one `SPRINT-nn`, linked through the plan, and `None` on a `Dropped` row.
6. `Evidence` is required on a `Passes` or `Fails` row, says `None` on a `Not verified` or `Dropped` row, and links the proof rather than holding the output itself.
7. A row that is not `Passes` keeps its result: a `Fails` row keeps its `Checked` and `Evidence`, a `Not verified` row keeps its planned sprint, and a `Dropped` row has `None` for `Checked`, `Planned for sprint`, and `Evidence`.
8. No test carries its result, its check, or its evidence: the test's section carries its definition, and this table carries its row, per [Quality Requirement Tests](quality-requirements-requirements.md#quality-requirement-tests).
9. A test inherits its requirement's priority, so the table carries no priority column and `Planned for sprint` is the only schedule.

## Progress Monitoring

**Since: W3**

The team meets on its own every week to hold the plan against what actually happened.
That review is where the threshold of success and the risks are looked at; the weekly customer meeting is not the review point.

**Required**

1. `## Progress Monitoring` is the plan's last part, after the milestone and sprint sections.
2. It is a bulleted list, one `- **Label:** value` bullet per item, as an identifier's fields are per [Identifier Rules](general-requirements.md#identifier-rules).
3. The list names three things:

   - The team's weekly review and when it is held.
   - Who checks the artifacts the review covers.
   - Where progress is visible: the public GitHub project's table view, per [GitHub Projects](issue-tracking-requirements.md#github-projects), and the sprints' GitHub milestones.

4. The review reads `docs/threshold-of-success.md` and `docs/risks.md`, per [Risk Requirements](risks-requirements.md).
   The plan links `docs/risks.md` once, from this list.
5. The plan carries no contingency section: a fallback is a risk's `**Contingency:**`, so it lives in `docs/risks.md`.
6. What the review settles is recorded in the artifact that changed: a goal's change or drop in `docs/threshold-of-success.md`, per [The Threshold Of Success](#the-threshold-of-success), and a risk's status or outcome in `docs/risks.md`.
   A status change cites a `DEC-nnn` only when a decision settled one.

**Since: W5**

7. The weekly review reads the rows of [Quality Requirement Testing Plan](#quality-requirement-testing-plan) that are not `Passes`, and records each follow-up in the plan.

## The Threshold Of Success

**Since: W3**

The **threshold of success** is the minimal set of SMART goals that must all be achieved for the project to count as a success.

The file holds two parts: the kept set, and the failure and success statements the set came from, so every goal shows the failure it answers rather than standing as an invention.
The steps that produce the set, from picturing failure to keeping the minimal set, are the method in [Guide: Planning And Tracking](../guides/planning-and-tracking.md), not content of this file.

**Recommended**

- Set 3 to 5 goals.
  A list of ten is a plan, not a threshold.

**Required**

1. The threshold is `docs/threshold-of-success.md`, and each of its goals is a section of its own, headed `## TOS-nn`, per [Identifier Rules](general-requirements.md#identifier-rules).
2. A `## TOS-nn` section states the goal on its first line, in one sentence, as a result its `**Measure:**` can settle, and carries these fields, in this order, as a bulleted list, per [Identifier Rules](general-requirements.md#identifier-rules):

   | Field          | What it says                                                                                                                                                              |
   | -------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
   | `**Status:**`  | `Open`, `Achieved`, `Missed`, or `Dropped`; a goal starts `Open`                                                                                                          |
   | `**Measure:**` | The evidence or number that proves the goal is achieved, and the week it lands in                                                                                         |
   | `**Outcome:**` | Added on `Achieved` or `Missed`: what was found, linking the evidence and any `DEC-nnn`                                                                                   |
   | `**Changed:**` | Each change while the goal is `Open`: what changed, citing the customer's `DEC-nnn`, as a gap records a change, per [Gap Analysis](research-requirements.md#gap-analysis) |
   | `**Dropped:**` | Only on a dropped goal: the date, the reason, and the customer's `DEC-nnn`, linked, per [Identifier Rules](general-requirements.md#identifier-rules)                      |

3. While a goal is `Open`, its text, including a date, may change, and the bar moves only with the customer's agreement.
   Record each change as one bullet under `**Changed:**`, saying what changed and citing the customer's `DEC-nnn`.
   A goal added later is a bar move too: its first `**Changed:**` bullet says it was added and cites the customer's `DEC-nnn`.
   The bar never moves silently.
4. Set `Achieved` when the `**Measure:**` is met, and `Missed` as soon as it is certain the goal will not be achieved, mid-course included.
   Either verdict adds `**Outcome:**`, saying what was found and linking the evidence and any `DEC-nnn`.
   The verdict is final: a settled goal is neither edited nor moved, and the file stays in identifier order, because a missed goal is evidence rather than clutter.
5. Dropping a goal changes the success bar, so it is agreed with the customer: the `**Dropped:**` field gives the date and the reason, and the reason cites the customer's `DEC-nnn`.
   `Dropped` is final.
6. Below the goals, the file carries a `## Failure And Success Statements` section: one table, whose columns are these, in this order:

   | Column              | What it holds                                                                                                                      |
   | ------------------- | ---------------------------------------------------------------------------------------------------------------------------------- |
   | `Goal`              | Each `TOS-nn` goal chosen for the statement, linked, such as `[TOS-01](#tos-01)`, in `TOS-nn` order, or `—` when no goal covers it |
   | `Success statement` | The success statement the row's failure statement was converted into, as the session wrote it                                      |
   | `Failure statement` | The failure statement the row came from, as the session wrote it                                                                   |

   The rows are grouped by their first goal in `TOS-nn` order, and the rows no goal covers come last, in the order the session listed them.

7. One row is one failure statement with its conversion, so a goal that merged several statements has one row per statement, each linking that goal.
8. Every `TOS-nn` traces to at least one row.
   A row may trace to no goal: the statements are the evidence of the choice the minimal set makes, so nothing is deleted.
9. The table only grows: the statement cells stay as the session wrote them, and a goal's change or drop lives in its own fields, per rules 3 to 5, so no row is rewritten.
   New rows arrive with a goal added later or a statement identified later, and take their place by the grouping above.
   A later goal that covers a row already listed adds its link to that row, and a row that was uncovered moves into the group of that goal.
   A `Goal` link is never removed: a dropped goal keeps its rows, and its `**Dropped:**` field carries the state.
   A correction that changes no meaning, such as a typo, is not an update.

## Full Example

Both files of the meeting-booking example, after Week 5, trimmed to the first two milestones' sections, the sprints they run over, and the testing plan.

From `docs/project-plan.md`:

```markdown
# Project plan

## Milestones

### MLS-03

- **Due:** 2026-10-17
- **Sprints:** [SPRINT-03](#sprint-03)
- **Advances:** [TOS-01](threshold-of-success.md#tos-01)

A client goes from the coach's booking link to a paid, confirmed booking.
Rescheduling and reminders build on this slice in the next increment.

### MLS-05

- **Due:** 2026-10-31
- **Sprints:** [SPRINT-04](#sprint-04), [SPRINT-05](#sprint-05)
- **Advances:** [TOS-01](threshold-of-success.md#tos-01)

A client reschedules a booking without emailing the coach, the booking page shows the free slots within two seconds, and the product runs on the staging and production deployments.

## Sprints

### SPRINT-03

A client books a paid slot and receives the meeting link and the materials.

- **Due:** 2026-10-17
- **Sprint Backlog:** [the issues scheduled into SPRINT-03](https://github.com/<organization>/<repo>/milestone/1)
- **Planned Velocity:** 8
- **Actual Velocity:** 5; the two stories that did not finish moved to SPRINT-04.

#### REL-03

Released as [v0.1.0](https://github.com/<organization>/<repo>/releases/tag/v0.1.0) on 2026-10-15.

### SPRINT-04

A client can reschedule a booking without emailing the coach.

- **Due:** 2026-10-24
- **Sprint Backlog:** [the issues scheduled into SPRINT-04](https://github.com/<organization>/<repo>/milestone/2)
- **Planned Velocity:** 11
- **Actual Velocity:** 8; the reschedule story and its tests moved to SPRINT-05.

#### REL-04

Released as [v0.4.0](https://github.com/<organization>/<repo>/releases/tag/v0.4.0) on 2026-10-22.

### SPRINT-05

A client sees the free slots within two seconds, and the product runs on the staging and production deployments on the university VM.

- **Due:** 2026-10-31
- **Sprint Backlog:** [the issues scheduled into SPRINT-05](https://github.com/<organization>/<repo>/milestone/3)
- **Planned Velocity:** 11
- **Actual Velocity:** 11; nothing moved out.

#### REL-05

Released as [v0.5.0](https://github.com/<organization>/<repo>/releases/tag/v0.5.0) on 2026-10-29.

## Quality Requirement Testing Plan

| QR                                        | QRT                                                     | Status | Checked                 | Planned for sprint      | Evidence                                                                                        |
| ----------------------------------------- | ------------------------------------------------------- | ------ | ----------------------- | ----------------------- | ----------------------------------------------------------------------------------------------- |
| [QR-01](quality-requirements/qr/QR-01.md) | [QR-01 QRT-01](quality-requirements/qr/QR-01.md#qrt-01) | Passes | [SPRINT-05](#sprint-05) | [SPRINT-05](#sprint-05) | [the staging run in the Week 05 report](../reports/week-05/README.md#quality-requirement-tests) |
| [QR-02](quality-requirements/qr/QR-02.md) | [QR-02 QRT-01](quality-requirements/qr/QR-02.md#qrt-01) | Passes | [SPRINT-05](#sprint-05) | [SPRINT-05](#sprint-05) | [the CI run on `4c1e9ab`](...)                                                                  |

## Progress Monitoring

- **Review:** the team's weekly review, Mondays at 17:00, before the customer meeting; it reviews [threshold-of-success.md](threshold-of-success.md), [risks.md](risks.md), and the [testing plan](#quality-requirement-testing-plan) rows that are not `Passes`.
- **Checked by:** the accountable member of each scheduled issue reports its state, and the team walks the sprint backlog against the sprint's goal.
- **Visible at:** the [project's table view](https://github.com/orgs/<organization>/projects/<number>) and the sprints' GitHub milestones.
```

From `docs/threshold-of-success.md`:

```markdown
# Threshold of success

## TOS-01

A coach takes one real paid booking through the product by the end of Week 6.

- **Status:** Open
- **Measure:** one booking in the deployed product whose payment settled in the provider's sandbox, by the end of Week 6.
- **Changed:**
  - Lowered from ten bookings to one: one real booking proves the whole loop, and ten by Week 6 was a guess, per [`DEC-008`](decisions.md#dec-008).

## TOS-02

Every story in the Week 2 candidate is accepted by the customer at the Week 3 meeting.

- **Status:** Missed
- **Measure:** the customer's verdict on each candidate story, recorded as a `DEC-nnn`, at the Week 3 meeting.
- **Outcome:** `US-08` was moved out of the candidate instead of accepted, by the customer's decision, per [`DEC-010`](decisions.md#dec-010); the other two stories were accepted.

## Failure And Success Statements

| Goal              | Success statement                                                         | Failure statement                                   |
| ----------------- | ------------------------------------------------------------------------- | --------------------------------------------------- |
| [TOS-01](#tos-01) | A real user completes the core task end to end.                           | We never put it in front of a real user.            |
| [TOS-01](#tos-01) | A booking pays through the provider.                                      | We never took a real payment.                       |
| [TOS-02](#tos-02) | The customer accepts the Week 2 candidate.                                | The customer never accepted it.                     |
| —                 | A teammate run it from a clean checkout following the setup instructions. | Nobody outside the team could run the product code. |
```
