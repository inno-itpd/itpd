# Guide: User Stories And Prototyping

How to turn a gap into something a customer can react to, and something a team can build.

The rules are in [Process Requirements](../requirements/process-requirements.md#user-stories-and-acceptance-criteria) and [Validation](../requirements/process-requirements.md#validation), and the file shapes are in [Artifact Requirements](../requirements/artifact-requirements.md#user-stories).
This guide is the method, with a worked shape for each step.

**Timebox:** about two days.
Most of it is arguing about which stories are the same story wearing two hats, which is time well spent.

<h2>Table of contents</h2>

- [What You Produce](#what-you-produce)
- [Step 1: Write The Goal And The Boundary](#step-1-write-the-goal-and-the-boundary)
- [Step 2: Turn Each Gap Into Stories](#step-2-turn-each-gap-into-stories)
- [Step 3: Write Criteria Somebody Else Can Run](#step-3-write-criteria-somebody-else-can-run)
- [Step 4: Prioritize, Then Pick The First Thing To Build](#step-4-prioritize-then-pick-the-first-thing-to-build)
- [Step 5: Choose What To Prototype](#step-5-choose-what-to-prototype)
- [Step 6: Build The Cheapest Thing That Gets A Reaction](#step-6-build-the-cheapest-thing-that-gets-a-reaction)
- [Common Mistakes](#common-mistakes)

## What You Produce

```text
docs/product-vision.md         the goal, the constraints, the stakeholders, the boundary, the context diagram
GitHub issues                  one per story, titled US-nn: <title>, with its criteria and labels
reports/week-02/README.md      the minimum usable product candidate
reports/week-02/prototypes.md  what you showed, what they said, what changed
```

## Step 1: Write The Goal And The Boundary

Start with the goal, in one sentence: what must be true for this product to have worked.
Trace it to the `VP-nn` it supports, so a reader can check that the goal is the one your Week 1 research actually argued for.

Then write the boundary, which is the list of things the product will not do.
This is the step people skip, and the step that pays for itself later: the boundary is what makes the context diagram checkable, and it is what you check your `Won't Have` stories against.

Write the boundary as a list, not a paragraph.
A paragraph cannot be disagreed with item by item, and a boundary nobody can disagree with is a boundary that is not written down.

Then draw the context diagram, with the product, the external actors, and the external systems it exchanges data with.
The format is your choice; the diagram has to be a picture that a reader can look at, and the text beside it has to say what the diagram must show.
See [Stakeholders, Boundary, And Context](../requirements/process-requirements.md#stakeholders-boundary-and-context).

## Step 2: Turn Each Gap Into Stories

Work gap by gap.
For each `GAP-nn`, ask what a user would be trying to do that they cannot do today, and write that as a story.

The shape is always the same three lines:

```text
As a <user>
I want to <action>
so that <value>
```

A user is any actor with a goal: the person the product serves, and the operator or administrator who keeps it running.

The third line is the one that catches a story written from a feature rather than from a need.
If you cannot finish it with a value, you have written a task, not a story, and the story is hiding an assumption you have not checked.

Write **8 or more**, each as a GitHub issue from the issue form.
A gap often turns into three or four stories, because a single sentence about a need usually covers a happy path, a failure, and a way to undo the thing.

**Split anything too big to build and verify in a week.**
A story that takes three weeks is three stories, and splitting it is not a detail: an unbuildable story is one your team will quietly abandon, and an abandoned story is one your `Must Have` list lies about.
When you split, close the parent as not planned with a `superseded` comment and link it from both children, so a reader can see what the pieces were for.

**Write the story you expect to build last.**
It is usually the most honest one, because it is the one nobody has an emotional attachment to.
If it turns out to be the most important, that is a finding.

## Step 3: Write Criteria Somebody Else Can Run

Acceptance criteria are the part of a story that makes it a requirement rather than a hope.
The test is simple: could somebody who is not you run the check and get the same answer?

Write **at least two** per story.
One criterion for the happy path, and one for what happens when something is missing, empty, or wrong.
A single criterion per story is easy to satisfy with a line of prose that tests nothing.
The criteria go in the issue form; an inactive story may carry none.

Any notation works, including `Given`/`When`/`Then`.
The notation is not the requirement; observability is.
Compare:

```text
Works properly.                        not a criterion, and not testable
The user sees a confirmation.          observable, but the answer is a judgement
After attaching a rule to a region,    observable, and the answer is yes or no
the next request that includes the
region has the rule applied, and the
log names the rule.
```

A criterion may name a screen, a field, or a system state, because that is what an observer checks; the story may not, because that would be the design.

When a criterion is hard to write, that is information about the story rather than about your writing.
You probably do not yet know what the product does in that case, which makes it a good candidate for the prototype.

## Step 4: Prioritize, Then Pick The First Thing To Build

MoSCoW is a four-way priority scale: `Must Have`, `Should Have`, `Could Have`, and `Won't Have`.
<!-- TODO link to the section on priorities -->

[The requirement](../requirements/process-requirements.md#user-stories-and-acceptance-criteria) defines each value.
Prioritize every story with it.
The point of the exercise is not the label, it is the argument: whoever disagrees with a `Must Have` has to say why the product is not the product without it.

A `Won't Have` story is inactive by definition, so write it down as an issue and close it as not planned, with the reason, instead of quietly leaving a story out.
A reader can argue with a recorded `Won't Have`; they can only guess about a missing one.

Then name the **minimum usable product candidate** in `reports/week-02/README.md`: a strict, non-empty subset of your `Must Have` stories that you would build first, plus which one you would drop first if you ran out of time.

This is the hardest decision of the week and it belongs here, where the evidence is.
Week 3 schedules and builds whatever you name here, so a candidate of eight stories is not a commitment, it is a postponement.
Two or three stories that a user can finish in one sitting is a more honest answer.

## Step 5: Choose What To Prototype

A prototype answers one question.
Not "is this good", but "is this the right shape".

Look at your list and find the story where you are least sure.
That is usually:

- the one where you guessed at the workflow, because you have not watched anyone do the job;
- the one where the interesting part is a technical risk nobody has tested;
- the one where the customer said something you did not fully understand in the kickoff.

Say the question in one line before you build anything, and write it down.
If you cannot write the question, you are not ready to prototype, and building first is how a team ends up showing a prototype of the easy part.

**Which user stories does your prototype cover?**
Answer that explicitly, in `prototypes.md`, linking the issue of each story.
A prototype that covers one story is fine, as long as you say which one and why that one.

## Step 6: Build The Cheapest Thing That Gets A Reaction

Match the fidelity to the question.
A high-fidelity clickable prototype is the wrong tool for "does the customer recognise this problem", because you will spend two days on it and the customer will comment on the colour.
A pen on paper is the right tool.

Three forms, and all three are acceptable:

- **Paper or static image.**
  Fastest.
  Good for layout, vocabulary, and "is this the right problem".
- **Clickable design tool.**
  Good for a flow you want a customer to move through.
  Share it view-only, never editable.
- **Code spike.**
  Good when the risk is technical rather than visual.
  An agent can build a working sketch quickly.

When the question is only whether the idea can work at all, that is a proof of concept; record it the same way.

On a code spike: **keep it off `main`.**
Do it on a branch, show it from there, and then either delete the branch or merge it only once it has become product code.
The evidence is the screenshot and your record, not the branch, so the branch is genuinely disposable and the repository does not have to carry it for the rest of the course.
If you do not prototype at all, say so and name the question you are carrying into Week 3 instead.

Then show it, and record what happened.
The recording is the artifact; the prototype is not.
See [Validating With The Customer](validating-with-the-customer.md) for the meeting, and [Prototypes](../requirements/artifact-requirements.md#prototypes) for the file shape.

## Common Mistakes

- **Writing stories from the feature list.**
  If your story names a component, a screen, or a button, you have already decided the design and stopped learning.
- **One criterion per story.**
  It is the easiest number to hit and the least useful.
- **A `Must Have` list that is everything.**
  The label stops meaning anything, and Week 3 inherits a MUP nobody can build.
- **Prototyping the part you are sure about.**
  It feels productive, it demos well, and it teaches you nothing.
  The customer being impressed is not the same as the customer being surprised.
- **Treating agreement as validation.**
  A prototype the customer approved is a prototype you showed them the answer to.
- **A prototype that becomes the product by accident.**
  If it is going to be code, it goes through planning like everything else.
  The spike's job is to be thrown away.
- **Filling the week with artifacts.**
  A vision, eight stories, and a prototype that changed one story is a good week.
  Eleven stories and no change is a worse one.
