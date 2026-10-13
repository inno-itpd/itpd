# Planning Requirements

These requirements define the project plan and the threshold of success: where each lives, what parts each carries, and how each part is written and kept current.
[Guide: Planning And Tracking](../guides/planning-and-tracking.md) is the method.
How the `SPRINT-nn`, `MLS-nn`, `REL-nn`, and `TOS-nn` identifiers are issued and cited is in [General Requirements](general-requirements.md#identifier-rules).

<h2>Table of contents</h2>

- [Where The Plan And The Threshold Live](#where-the-plan-and-the-threshold-live)
- [Sprints](#sprints)
- [Releases](#releases)
- [Milestones](#milestones)
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

   - The **sprints**, per [Sprints](#sprints): the `## Sprints` table and one `### SPRINT-nn` section per sprint, each with its release per [Releases](#releases).
   - The **milestones**, per [Milestones](#milestones): the `## Milestones` table and one `### MLS-nn` section per milestone.
   - The **progress monitoring**, per [Progress Monitoring](#progress-monitoring), last.

2. The threshold of success is `docs/threshold-of-success.md`.
   It carries one `## TOS-nn` section per goal, per [The Threshold Of Success](#the-threshold-of-success).

## Sprints

**Since: W3**

A **sprint** is one submission week, with a timebox, a goal, and a release of its own.
Every week from Week 3 to Week 9 is a sprint, so the plan carries seven of them, `SPRINT-03` to `SPRINT-09`.

**Required**

1. Each sprint is `SPRINT-nn` after its week number, per [Identifier Rules](general-requirements.md#identifier-rules), and the plan carries one `### SPRINT-nn` section per sprint, in sprint order, under `## Sprints`.
2. `## Sprints` opens with a table whose columns are these, in this order:

   | Column    | What it holds                                                                                        |
   | --------- | ---------------------------------------------------------------------------------------------------- |
   | `Sprint`  | The `SPRINT-nn`, linked to its section, such as `[SPRINT-03](#sprint-03)`                            |
   | `Due`     | The hard deadline of the sprint's week, from the syllabus, such as `2026-10-16`                      |
   | `Release` | The sprint's `REL-nn`, linked to its section, such as `[REL-03](#rel-03)`, per [Releases](#releases) |

3. A `### SPRINT-nn` section opens with the sprint's goal, in one sentence: what the sprint is for, stated as a result rather than as a list of tasks.
4. A sprint the team has not planned yet states a **provisional** goal: one sentence, kept current until the sprint is planned, so the plan leaves no future week without direction.
5. Under the goal, the section carries its only field, `**Sprint Backlog:**`: a link to the issue view filtered by the sprint's `Sprint` value, such as `field.Sprint:SPRINT-03`, which lists the issues scheduled into the sprint.
   The field appears once the sprint has issues.
6. The plan does not copy that list: scheduling is the `Sprint` field's job, per [Issue Tracking](repository-requirements.md#issue-tracking).

**Example**

The `**Sprint Backlog:**` field of a planned sprint:

```markdown
- **Sprint Backlog:** [the issues scheduled into SPRINT-03](https://github.com/<organization>/<repo>/issues?q=field.Sprint:SPRINT-03)
```

## Releases

**Since: W3**

A **release** is the sprint's stable state: the product as it stands when the sprint ends, tagged, so later work cites one commit rather than a moving week.
Every sprint from Week 3 to Week 9 ends in one release, named `REL-nn` after its sprint: the MUP week is `REL-03`, and the last is `REL-09`.
The changelog and the tags follow [Changelog, Releases And Versioning](repository-requirements.md#changelog-releases-and-versioning); this section says how a release belongs to its sprint.

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

**Recommended**

- Put what should point at the release into its GitHub release body, such as the changelog section for that version and the week's report.

## Milestones

**Since: W3**

A **milestone** is an increment on the path to the threshold, due at the end of a week.
The sprints working toward it may span one or more sprints, and not every week has one: the releases give the weekly cadence, and the milestones give the increments on the path to the threshold of success.
An issue belongs to a milestone only when it is part of that increment, so there is no parking milestone; the week it is worked in comes from its `Sprint` field, per [Issue Tracking](repository-requirements.md#issue-tracking).

**Required**

1. Number each milestone by the week it is due in: `MLS-03` is due at the end of Week 3.
   A week with no milestone leaves a gap in the sequence, which [Identifier Rules](general-requirements.md#identifier-rules) expects.
2. Create each milestone on GitHub with the title `MLS-nn: <focus>`, such as `MLS-03: Deliver MUP`, and its due date.
   The title carries the number and the focus, and does not repeat the week number.
3. The plan carries one `### MLS-nn` section per milestone under `## Milestones`, and `## Milestones` opens with a table whose columns are these, in this order:

   | Column      | What it holds                                                                        |
   | ----------- | ------------------------------------------------------------------------------------ |
   | `Milestone` | The `MLS-nn`, linked to its section, such as `[MLS-03](#mls-03)`                     |
   | `Due`       | The milestone's due date, the one its GitHub milestone carries, such as `2026-10-16` |

4. A `### MLS-nn` section opens with these fields, in this order, as a bulleted list, per [Identifier Rules](general-requirements.md#identifier-rules):

   | Field            | What it says                                                                                                                                                                                               |
   | ---------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
   | `**Milestone:**` | The GitHub milestone title as link text, linked to the milestone itself, such as `[MLS-03: Deliver MUP](https://github.com/<organization>/<repo>/milestone/3)`; the linked title is the milestone's scope. |
   | `**Due:**`       | The hard deadline of the due week, from the syllabus, matching the GitHub milestone.                                                                                                                       |
   | `**Done when:**` | The observable check that says the increment is finished, distinct from the description below the fields.                                                                                                  |
   | `**Sprints:**`   | The `SPRINT-nn` the milestone is worked on in, each linked, one or more.                                                                                                                                   |
   | `**Advances:**`  | The `TOS-nn` goal or goals the milestone serves, each linked, at least one.                                                                                                                                |

5. A description of the increment follows the fields.
   Its first sentence states what the increment delivers, so a reader who stops there has the milestone, and it is the one place the increment's scope is edited.
   Later sentences may add scope, sequencing, or the problem the increment beats, and do not restate `**Done when:**`, `**Sprints:**`, or `**Advances:**`.
6. The milestone does not repeat the `VP-nn`: it reaches the vision through its `**Advances:**`, and the vision's goal links the threshold, per [Goal](product-vision-requirements.md#goal).
7. The team chooses its milestone set.
   In Week 3 it creates at least two: `MLS-03`, whose focus is delivering the MUP, and one more for the next increment, which the team defines.
   The second milestone's number follows its due week, so one due at the end of Week 5 is `MLS-05`; the week is the team's choice.
8. Close the GitHub milestone once its `**Done when:**` check passes.
   The section stays as written, because the platform carries the state, per [Identifier Rules](general-requirements.md#identifier-rules).

**Recommended**

- Write `**Done when:**` as the check the customer could run, not as a summary of the description.

## Progress Monitoring

**Since: W3**

The team meets on its own every week to hold the plan against what actually happened.
That review is where the threshold of success and the risks are looked at; the weekly customer meeting is not the review point.

**Required**

1. `## Progress Monitoring` is the plan's last part, after the sprint and milestone sections.
2. It is a bulleted list, one `- **Label:** value` bullet per item, as an identifier's fields are per [Identifier Rules](general-requirements.md#identifier-rules).
3. The list names three things:

   - The team's weekly review and when it is held.
   - Who checks the artifacts the review covers.
   - Where progress is visible, such as the sprint backlog view and the milestone list.

4. The review reads `docs/threshold-of-success.md` and `docs/risks.md`, per [Risk Requirements](risks-requirements.md).
   The plan links `docs/risks.md` once, from this list.
5. The plan carries no contingency section: a fallback is a risk's `**Contingency:**`, so it lives in `docs/risks.md`.
6. What the review settles is recorded in the artifact that changed: a goal's change or drop in `docs/threshold-of-success.md`, per [The Threshold Of Success](#the-threshold-of-success), and a risk's status or outcome in `docs/risks.md`.
   A status change cites a `DEC-nnn` only when a decision settled one.

## The Threshold Of Success

**Since: W3**

The **threshold of success** is the minimal set of SMART goals that must all be achieved for the project to count as a success.
The file holds the set the team keeps and nothing else; the steps that produce it, from failure statements to the kept goals, are the method in [Guide: Planning And Tracking](../guides/planning-and-tracking.md), not content of this file.

**Recommended**

- Set 3 to 5 goals.
  A list of ten is a plan, not a threshold.

**Required**

1. The threshold is `docs/threshold-of-success.md`, and each of its goals is a section of its own, headed `## TOS-nn`, per [Identifier Rules](general-requirements.md#identifier-rules).
2. A `## TOS-nn` section states the goal on its first line, in one sentence, as a result its `**Measure:**` can settle, and carries these fields, in this order:

   | Field          | What it says                                                                                                                                                              |
   | -------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
   | `**Status:**`  | `Open`, `Achieved`, `Missed`, or `Dropped`; a goal starts `Open`                                                                                                          |
   | `**Measure:**` | The evidence or number that proves the goal is achieved, and the week it lands in                                                                                         |
   | `**Outcome:**` | Added on `Achieved` or `Missed`: what was found, linking the evidence and any `DEC-nnn`                                                                                   |
   | `**Changed:**` | Each change while the goal is `Open`: what changed, citing the customer's `DEC-nnn`, as a gap records a change, per [Gap Analysis](research-requirements.md#gap-analysis) |
   | `**Dropped:**` | Only on a dropped goal: the date, the reason, and the customer's `DEC-nnn`, linked, per [Identifier Rules](general-requirements.md#identifier-rules)                      |

3. While a goal is `Open`, its text, including a date, may change, and the bar moves only with the customer's agreement.
   Record each change as one bullet under `**Changed:**`, saying what changed and citing the customer's `DEC-nnn`.
   The bar never moves silently.
4. Set `Achieved` when the `**Measure:**` is met, and `Missed` as soon as it is certain the goal will not be achieved, mid-course included.
   Either verdict adds `**Outcome:**`, saying what was found and linking the evidence and any `DEC-nnn`.
   The verdict is final: a settled goal is neither edited nor moved, and the file stays in identifier order, because a missed goal is evidence rather than clutter.
5. Dropping a goal changes the success bar, so it is agreed with the customer: the `**Dropped:**` field gives the date and the reason, and the reason cites the customer's `DEC-nnn`.
   `Dropped` is final.

## Full Example

Both files of the meeting-booking example, after Week 3, with the later sprints and the second milestone left out.

From `docs/project-plan.md`:

```markdown
# Project plan

## Sprints

| Sprint                  | Due        | Release           |
| ----------------------- | ---------- | ----------------- |
| [SPRINT-03](#sprint-03) | 2026-10-16 | [REL-03](#rel-03) |
| [SPRINT-04](#sprint-04) | 2026-10-23 | [REL-04](#rel-04) |

### SPRINT-03

A client books a paid slot and receives the meeting link and the materials.

- **Sprint Backlog:** [the issues scheduled into SPRINT-03](https://github.com/<organization>/<repo>/issues?q=field.Sprint:SPRINT-03)

#### REL-03

Released as [v0.1.0](https://github.com/<organization>/<repo>/releases/tag/v0.1.0) on 2026-10-15.

### SPRINT-04

A client can reschedule a booking without emailing the coach.

#### REL-04

## Milestones

| Milestone         | Due        |
| ----------------- | ---------- |
| [MLS-03](#mls-03) | 2026-10-16 |
| [MLS-05](#mls-05) | 2026-10-30 |

### MLS-03

- **Milestone:** [MLS-03: Deliver MUP](https://github.com/<organization>/<repo>/milestone/3)
- **Due:** 2026-10-16
- **Done when:** a clean checkout completes the core task end to end by following [setup.md](setup.md).
- **Sprints:** [SPRINT-03](#sprint-03)
- **Advances:** [TOS-01](threshold-of-success.md#tos-01)

A client goes from the coach's booking link to a paid, confirmed booking.
Rescheduling and reminders build on this slice in the next increment.

## Progress Monitoring

- **Review:** the team's weekly review, Mondays at 17:00, before the customer meeting; it reviews [threshold-of-success.md](threshold-of-success.md) and [risks.md](risks.md).
- **Checked by:** the accountable member of each scheduled issue reports its state, and the team walks the sprint backlog against the sprint's goal.
- **Visible at:** the sprint backlog view and the milestone list.
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
```
