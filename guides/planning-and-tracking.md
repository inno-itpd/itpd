# Guide: Planning And Tracking

How to turn the threshold of success into a plan the team follows, a register of what could stop it, and a weekly review that holds both against reality.

The rules are in [Planning Requirements](../requirements/planning-requirements.md) for the plan, the threshold, and the review, and in [Risk Requirements](../requirements/risks-requirements.md) for the register.
The scheduling mechanics are in [Issue Tracking](../requirements/repository-requirements.md#issue-tracking), the release mechanics in [Changelog, Releases And Versioning](../requirements/repository-requirements.md#changelog-releases-and-versioning), and the decision log in [Decision Requirements](../requirements/decisions-requirements.md).
This guide is the method: what to decide first, how to phrase it, and what the team does with it every week.

**Timebox:** about a day for the whole team, spent unevenly.
The threshold session of Step 1 and the risk session of Step 5 are the hours that decide whether the rest of the plan is worth writing.

<h2>Table of contents</h2>

- [What You Produce](#what-you-produce)
- [Step 1: Agree On The Threshold Of Success](#step-1-agree-on-the-threshold-of-success)
- [Step 2: Choose The Roadmap's Zoom Level](#step-2-choose-the-roadmaps-zoom-level)
- [Step 3: Write The Sprints And Their Releases](#step-3-write-the-sprints-and-their-releases)
- [Step 4: Write The Milestones](#step-4-write-the-milestones)
- [Step 5: Name The Risks And Their Fallbacks](#step-5-name-the-risks-and-their-fallbacks)
- [Step 6: Set Up Progress Monitoring](#step-6-set-up-progress-monitoring)
- [Step 7: Review And Adjust](#step-7-review-and-adjust)
- [Common Mistakes](#common-mistakes)

## What You Produce

```text
docs/threshold-of-success.md   TOS-01, TOS-02, … one section per goal
docs/project-plan.md           the sprint and milestone tables with their sections, and progress monitoring
docs/risks.md                  RISK-01, RISK-02, … the register
GitHub                         the MLS-nn milestones, and the Sprint, Responsible, and Accountable values on scheduled issues
```

The threshold is the bar, the plan is the path to it, and the register is what could take the path away.

## Step 1: Agree On The Threshold Of Success

A **threshold of success** is the minimum set of goals that must all be achieved for the project to count as a success.
Two tests keep the set honest:

- **Minimal.**
  If missing the goal would not make the project a failure, it is a plan item, not a threshold goal.
- **Checkable.**
  The goal names the evidence or the number that settles it, so `**Measure:**` is something you look up rather than argue about.

[The Threshold Of Success](../requirements/planning-requirements.md#the-threshold-of-success) owns the file's shape and how a goal changes, and its [full example](../requirements/planning-requirements.md#full-example) shows a written set.
This step produces that set, in five moves:

1. **Gather the whole team.**
   The threshold is the commitment every member is measured by, so the member who was not in the room is the member who argues with it in Week 9.
   Make it a working session rather than a draft one member writes for the others to approve.
2. **Picture failure.**
   Do not start from what success looks like, because that produces the goals everybody already agrees with.
   Start from the failure you are each afraid of: it is the last week of the course, the project is being written off, and somebody asks what went wrong.
   Write the answers while they are still uncomfortable.
3. **List failure statements.**
   One statement per thing that went wrong, such as "we didn't get a single user through it", "the customer never accepted it", or "nobody outside the team could run it".
   A statement belongs on the list when somebody outside the team could check it; "it felt unfinished" is a mood, not a failure statement.
4. **Convert each one into a success statement.**
   "We must get a real user through it", "the customer must accept it", "a teammate must be able to run it from a clean checkout".
   The conversion is where the measure and the date usually appear, which are the M and the T of SMART.
5. **Keep the minimal SMART set and delete the rest.**
   Merge statements that are one goal behind two fears, and delete what nobody would treat as a failure.
   What is left is the threshold; what is deleted becomes the first draft of the roadmap in [Step 2](#step-2-choose-the-roadmaps-zoom-level).

The wording of each kept goal is checked against SMART: specific, measurable, achievable, relevant, and time-bound.
The letters are a checklist rather than a template: a goal the team cannot reach with its time and skills is a wish, and a goal that does not serve the vision's goal is a distraction.

Each kept statement becomes one `TOS-nn` section from the start.
The failure statements are working notes and do not go into the file, which holds the set the team keeps and nothing else.

**Example**

```text
Failure:  We never put it in front of a real user.
Success:  A real user completes the core task end to end.
Goal:     TOS-01: a coach takes one real paid booking through the product by the end of Week 6.
          Measure: one booking in the deployed product, by the end of Week 6.
```

In the full example the second goal was `Missed`, and it stayed in the file with its `**Outcome:**`.
A set that quietly drops the goal it missed is not a threshold; it is the first draft of a report that no longer has to be honest.

## Step 2: Choose The Roadmap's Zoom Level

The **roadmap** is the path from where the team is to the threshold: the milestones, in order, each one a step somebody outside the team can see.

Its hardest decision is the zoom level, which is how big one step is.
Too close and the milestones restate the sprints; too far and the roadmap says nothing until the end of the course, when it is too late to change anything.
The level that works is an increment that takes several sprints, ends in a state the customer can react to, and is one of a handful between now and the threshold.

Two questions place a candidate increment:

1. **Could it finish inside one sprint?**
   Then it is the sprint's goal, not a milestone.
2. **Could the customer watch it run?**
   If the increment cannot be shown as a working thing or a visible change, it is a phase, and the plan will never be able to say when it is done.

Attach every milestone to the threshold goal it serves; `**Advances:**` is the field that carries that link, per [Milestones](../requirements/planning-requirements.md#milestones).
A goal no milestone advances is a goal the plan does not seriously pursue, so either add an increment for it or take it out of the threshold.

A team defines its own milestone set, and a course this long usually has a handful of milestones rather than one per week.
The set comes from the increments rather than from the calendar: number each milestone by the week it is due in, and let a week without one leave a gap.

The plan holds increments, never the issue list.
Which issue is worked on when is a `Sprint` field value, per [Issue Tracking](../requirements/repository-requirements.md#issue-tracking), so the same issue can move between sprints without rewriting the roadmap.

## Step 3: Write The Sprints And Their Releases

Every submission week is a **sprint**, and the plan carries one section per sprint, in order, from the first to the last.
Write them from near to far: the current sprint in concrete terms, the next one in its own words, and the rest at the level of direction.

**Lead with a result.**
The sprint's first line is one sentence, and it states what will be true at the end of the week:

```markdown
### SPRINT-03

A client books a paid slot and receives the meeting link and the materials.
```

A goal that reads like a task list, such as "implement the booking page and fix the payment bug", tells the team what to do and hides what it is for.
The tasks live in the sprint backlog view, where they are already listed and already current.

**Give every unplanned sprint a provisional goal.**
The sprint five weeks out still gets a sentence, because a plan that goes blank after next week cannot be held against the threshold.
Keep the sentence at its own level, such as "a coach can reschedule without emailing", and revise it when the sprint is planned for real.
A provisional goal is a direction the plan currently believes, not a promise to the customer, and a stale one misleads exactly the week it was written for.

**Schedule with the field, not in the file.**
When a sprint is planned, the issues that make its goal true carry three values: the `Sprint` they belong to, and the `Responsible` and `Accountable` members who do the work and verify it, per [Issue Tracking](../requirements/repository-requirements.md#issue-tracking).
The plan's `**Sprint Backlog:**` field links the filtered issue view, so the plan never copies the list and never goes stale.

**Releases.**
Every sprint ends in one release: the product's state tagged at its end, so later work cites a commit rather than a moving week.
Cut it after the customer meeting and any same-week rework, on the state the sprint actually left behind, and in this order:

1. Merge the sprint's pull requests.
2. Push the tag on that commit.
3. Merge what links the tag: the changelog's released section, the plan's `REL-nn` line, and the week's report.

The documents come after the tag because each of them links it, and a link to a tag that does not exist yet is broken the moment it is checked.
The release itself is about the product code, so the documents following it do not change what was released.
[Releases](../requirements/planning-requirements.md#releases) states the order as a rule; the reason to keep it is that it makes the links resolve the first time.

**Pick the number from what a user could observe.**
The tag is the team's choice under SemVer, per [Changelog, Releases And Versioning](../requirements/repository-requirements.md#changelog-releases-and-versioning).
A first release with no users is usually `v0.1.0`; after that, a fix a user could notice is a patch, a new capability is a minor, and a change that breaks how an existing user works is a major.
When the number is not obvious, ask what a user would see, because that is what the version communicates.

## Step 4: Write The Milestones

A milestone section opens with its fields and follows them with a description of the increment, per [Milestones](../requirements/planning-requirements.md#milestones).
The fields carry what the index table cannot: the GitHub milestone, the due date, the exit check, the sprints, and the threshold goals the increment advances.

Write `**Done when:**` as a check the customer could run at the end of the due week, not as a summary of the description:

```markdown
- **Done when:** a clean checkout completes the core task end to end by following [setup.md](setup.md).
```

**Lead the description with the outcome.**
The first sentence is the conclusion, and the sentences after it add scope, sequencing, or the problem the increment beats:

```markdown
Delivers the minimum usable product: one link where a client picks a free slot, pays, and receives the meeting link and the materials.
Rescheduling and reminders build on this slice in the next increment.
```

A reader who stops after the first line already has the increment, and nobody has to reach the end to find out what they get.
This is Barbara Minto's pyramid principle applied to a plan: the conclusion first, the support after, because a reader reads a plan to decide whether the increment matters, not to follow the team's itinerary.
The tell of a buried outcome is the word "so" near the end: "we started with the slots, then wired payments, so that a client can book" says the same thing as the first sentence above, a paragraph later.

The first sentence is also where the increment's scope lives, so when the customer or the work moves something in or out, edit that sentence rather than keeping a second scope list somewhere else.
Record the reason like any other change: a customer's decision gets a `DEC-nnn`, per [The Decision](../requirements/decisions-requirements.md#the-decision), and the story issue says what moved.

## Step 5: Name The Risks And Their Fallbacks

A **risk** is something that has not happened and could hurt the project if it does, and the register holds the ones the team would act on, per [The Risk](../requirements/risks-requirements.md#the-risk).
A register that stays short is a register that gets read, so the first job is choosing what not to write down.

**Start from the plan, not from a feeling.**
Walk the threshold and the plan in order and ask what could stop each part:

- For a `TOS-nn`: what would stop its `**Measure:**` from ever existing?
- For a milestone: which part is new, unproven, or owned by somebody outside the team?
- For a sprint: what would leave the week's goal unfinished on the due day?
- For the team and its tools: what has gone wrong before, and which single failure stops the work?

The pass produces more candidates than the register should hold, and the action test cuts them down: when nobody would change what they do if the risk started to happen, it is a worry, not a risk.

**Write the first line as cause, event, and impact.**
One sentence, in that order, so the reader knows why it happens, what happens, and what it costs:

```text
The team has never integrated a payment provider, so the payment step may take longer than the sprint allows, which would push the MUP past the Week 3 deadline.
```

"The payment integration might be hard" names no event and no cost, so nothing can be decided about it.

**Rate to sort, not to decorate.**
`**Impact:**` says what the project loses if the risk happens, and `**Likelihood:**` says why it is that likely, per [Rating](../requirements/risks-requirements.md#rating).
Write the reason as evidence, such as "the provider rate-limits the shared sandbox", rather than as a mood, because the review uses the ratings to choose what to look at first.

**Give it a trigger and a window.**
`**Trigger:**` is what the review will see when the risk is materializing, and without one the risk is noticed only after it has happened.
`**Window:**` is when it can happen, which is also how the register stays honest: a risk whose window closes without its trigger becomes `Dropped` with the date and the reason, per [Checking And Settling](../requirements/risks-requirements.md#checking-and-settling).

**Answer it twice.**
`**Mitigation:**` changes the odds, and `**Contingency:**` changes what happens after: it is the fallback the team decided before it needed one, which the lecture calls the alternative solution.
Write the fallback before the trigger fires, because the moment a risk materializes is the wrong moment to invent one.
If the team wants two fallbacks, it has two risks: one risk carries one contingency, and a risk that offers a choice is a decision the team has not made.

**Points of no return are decisions.**
Some answers commit the team to something it cannot cheaply undo, such as a stack the product is built on, or a branch that holds the only copy of a test.
When the team passes one, it records a `DEC-nnn`, per [The Decision](../requirements/decisions-requirements.md#the-decision), and the risk whose answer crossed it cites that decision instead of repeating the reasoning.
The habit that catches these is one question asked before the choice: "if this turns out wrong, what does reversing it cost?"
If the answer is "we rebuild", it is a decision.

**Run it as a session.**
Half an hour with the whole team, quiet writing first and discussion second, because the loudest member's risk is often the one already being handled.
Then keep the register to what the weekly review can actually read, and read it there, per [Step 6](#step-6-set-up-progress-monitoring).

## Step 6: Set Up Progress Monitoring

Monitoring is a habit, not a report: the team meets every week, looks at the same things in the same order, and edits what the week changed.
[Progress Monitoring](../requirements/planning-requirements.md#progress-monitoring) fixes what the plan says about that meeting, so the cadence, the checker, and the visible views are written down rather than assumed.
A review with no stated time does not happen, and a review with no named checker turns into a conversation about whoever is least defensive.

**Run it in a fixed order:**

1. **The sprint.**
   Walk the backlog against the sprint's goal, one issue at a time: what moved, what is stuck, and does the goal still hold?
   Each scheduled issue's accountable member reports its state, so the answer does not depend on who is asked.
2. **The threshold.**
   Read every `**Measure:**`: is any goal met, missed, or in danger?
   The review spots the change and proposes it; the bar itself moves only with the customer's agreement, per [The Threshold Of Success](../requirements/planning-requirements.md#the-threshold-of-success).
3. **The register.**
   Read every `**Trigger:**` and `**Window:**`: has anything fired, and has any window closed?
   Settle what the review sees while the evidence is in front of it, per [Checking And Settling](../requirements/risks-requirements.md#checking-and-settling).
4. **The changes.**
   Name each edit the review settled and the artifact it lands in: the goal, the risk, the plan, or nothing.

**Keep the customer meeting separate.**
The team's review is where the plan meets reality, and the weekly customer meeting is where the customer decides and accepts.
Holding the review before the meeting means the meeting can spend its time on the product instead of on the team discovering its own state in the room.

**Put progress where it can be seen without the plan.**
The plan names the sprint backlog view and the milestone list, and those two are the answer to "how far along is this?" without anyone opening a file.
The views are always current because the work itself updates them: a percentage in the plan drifts the day somebody forgets it, and the issue field does not.

## Step 7: Review And Adjust

The weekly review is one turn of the loop the lecture calls [PDSA](https://en.wikipedia.org/wiki/PDCA): plan the sprint, do the work, study what happened, and act on what the study found.
The loop fails in two opposite ways: a review that changes nothing is a status report, and a plan that changes every week has no direction to test.

**Ask the same questions every week:**

- What did the sprint deliver, and what did it not?
- What went wrong, and what will the team do differently next sprint?
- What went right, and what will the team keep doing?
- What did the customer accept, reject, or ask for, and what does that change?

**Turn each answer into one move:**

| What the answer means                | The move                                                                                                                                                                        |
| ------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| The plan is still right              | Nothing, and say so: "no change" is a decision the team made                                                                                                                    |
| The plan is right, the text is stale | Edit the artifact: the sprint goal, a provisional goal, a milestone's first sentence, or a trigger                                                                              |
| Reality moved away from the plan     | Change the plan: edit the active milestone's first sentence for scope, or set an issue's `Sprint` value to the sprint that now holds it                                         |
| The bar itself has to move           | Only the customer can move it: a goal's change or drop cites their `DEC-nnn`, per [The Threshold Of Success](../requirements/planning-requirements.md#the-threshold-of-success) |

**Record the result in the artifact that changed.**
The threshold file, the plan, and the register are the record; the review produces edits, and a decision where the customer settled something.
A risk that was answered becomes `Mitigated` or `Realized` in the register, per [Checking And Settling](../requirements/risks-requirements.md#checking-and-settling), and a goal whose measure lands becomes `Achieved`.
Settled items keep their headings and their wording, because the account of what the team believed earlier is what makes the current plan trustworthy.

**Match the amount of plan to the amount of certainty.**
The nearer a sprint is, the more its goal is a commitment; the farther it is, the more it is a direction, which is why the later sprints carry provisional goals.
When a far sprint's provisional goal turns out wrong, that is the system working, and the fix costs one sentence now instead of a rewritten plan later.

The customer meeting that follows the review has its own method in [Validating With The Customer](validating-with-the-customer.md).

## Common Mistakes

- **A threshold that is a wish list.**
  Ten goals, all important, none of which would make the project a failure: the threshold is the smallest set, and the rest is the plan.
- **A failure picture nobody said out loud.**
  The session is worth having for the fear that nobody had named; if it ended with the previous draft unchanged, no failure was pictured.
- **A plan that describes activity.**
  "Build the booking flow in Week 3" says what the team does, not what will be true; every sentence in the plan should survive being read by the customer.
- **A milestone per week.**
  At that zoom level the milestones restate the sprints, and the roadmap stops showing a path.
- **Burying the outcome of an increment.**
  If the first sentence is the history and the last is the deliverable, a reader who stops early gets the wrong idea of what is being built.
- **A goal that moves with no decision.**
  The bar changes only with the customer's agreement; a threshold edited quietly is a file the team stops believing.
- **A trigger that fired and a status that did not.**
  The register then reads as a list of things nobody watched.
- **A risk with two fallbacks.**
  It reads like a plan and hides a decision, and the review cannot tell which branch the team would take.
- **A plan that copies the backlog.**
  It is stale within a day; the filtered issue view is current because the issues are.
- **The review as a status meeting.**
  Reading the board aloud changes nothing; the review is over when each artifact that needed an edit has one.
- **A new direction every week.**
  A plan that changes faster than the team can act on it is the same as no plan.
- **A stale provisional goal.**
  It misleads exactly the later week it was written for.
