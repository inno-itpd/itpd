# Guide: Validating With The Customer

How to run the Week 2 meeting, and how to record what it changed.

The rules are in [Validation](../requirements/process-requirements.md#validation) and [Meeting With The Customer](../requirements/process-requirements.md#meeting-with-the-customer), and the file shapes are in [Artifact Requirements](../requirements/artifact-requirements.md#customer-meeting-artifacts).
This guide is the method.

<!-- TODO why mention kickoff method? -->

The kickoff method is in [The Kickoff Interview](customer-interview.md), and it does not change: you prepare in writing, you ask about what happened rather than what should happen, and you write down what you improved.

**Timebox:** the meeting is ~30 minutes, and the writing is most of the work.
Ask for 60 if the customer can give it.

<h2>Table of contents</h2>

- [What You Produce](#what-you-produce)
- [Step 1: Write Down What The Meeting Is For](#step-1-write-down-what-the-meeting-is-for)
- [Step 2: Derive The Questions From The Target](#step-2-derive-the-questions-from-the-target)
- [Step 3: Break Your Own Questions](#step-3-break-your-own-questions)
- [Step 4: Run The Meeting](#step-4-run-the-meeting)
- [Step 5: Trace What Changed](#step-5-trace-what-changed)
- [Common Mistakes](#common-mistakes)

## What You Produce

```text
reports/week-02/meeting-script.md     the target, the questions, the roles
reports/week-02/meeting-report.md     the decisions, the action points, the disagreements
reports/week-02/meeting-notes.md      or meeting-transcript.md, never both
docs/user-stories/US-nn.md            a dated note on what the meeting changed
reports/week-02/README.md             the changed US-nn, named
```

## Step 1: Write Down What The Meeting Is For

This is not the kickoff again, and the difference is the whole point of the week.
In Week 1 the problem and the direction were both open.
Now you have a vision, a boundary, and eight stories, and the one question is: **which of these are wrong?**

Write the target at the top of the script, in one sentence.
A good target is specific enough that you could tell afterwards whether you hit it:

```text
Find out whether the customer accepts our boundary, and whether US-01 and US-02 are the right
two stories to build first.
```

A bad target is a subject, not a target: "discuss the product".
You will spend thirty minutes on the parts you want to talk about and leave with nothing you can change.

Then re-read the kickoff artifacts before you write anything.
The open questions from `reports/week-01/meeting-report.md` are still open, and if the customer answered one of them in the kickoff you do not need to ask again.
The action points from the kickoff are due this week, and if you have carried them out, the customer should hear how they went.

## Step 2: Derive The Questions From The Target

<!-- TODO mention the kickoff less? -->

Do not use the five kickoff areas.
The business goals were settled a week ago, and re-asking them decides nothing.

Take your target and ask what would have to be true for you to be wrong.
Those are your areas, and each one should be a place where the customer's answer could contradict something you wrote.

For a target about the boundary and the first two stories, the areas usually look like this:

<!-- TODO what means marking? -->

- **Scope.**
  What did the customer's own marking actually look like, and does our boundary exclude anything they need?
- **The current workflow.**
  What does a platform engineer do today when they find a request that went out unmarked?
- **Pain points and constraints.**
  What would make them reject this outright, whatever it does?
- **The prototype.**
  What did they think when they saw it, and what did they expect instead?

Derive them, do not copy them.
If an area does not serve the target, delete it, even if it was in the kickoff script.

Ask permission before you record, every time.
Permission is per meeting and is never carried over from the kickoff.
The recording stays out of the repository and goes in the Moodle PDF as a private link.

## Step 3: Break Your Own Questions

Run the same pass you ran in the kickoff: for each question, what would the customer say if they were being kind and had no time?
A question whose most likely answer is "yes, that would be great" is not a question, it is a compliment with a question mark.

<!-- TODO should we still require key improvements? -->

Rewrite those, and record the rewrite in a `## Key improvements` section with the principle behind it.
The same rule as Week 1 applies: an improvement you cannot show is not an improvement.

Two patterns worth using:

<!-- TODO ask about the last time still applicable? -->

- **Ask about the last time.** "When did you last find a request that went out unmarked, and what did you do?" beats "how would you like us to handle this?"
- **Offer the concrete thing and ask what is wrong with it.** "We assumed the company's own marking decides the rules, so the product does not infer sensitivity itself.
  Is that right?" is a question with a falsifiable answer.
  "Do you like that approach?" is not.

## Step 4: Run The Meeting

Same roles as the kickoff, because they worked: an interviewer, a note taker, and an observer who records what was not asked and what was not said.
The whole team attends.

The observer's job is the one that catches the surprise.
The note taker records what was said; the observer records the two questions you did not get to and the thing the customer said in passing and nobody wrote down.
That passing remark is often the most useful thing in the meeting.

Do not pitch.
You are not asking permission, and a customer who agrees with everything has told you almost nothing.
If the customer says "that sounds great" about your own idea, the useful next question is "what would you want to see for that to be true?" or "what is the risk in it?".
Those are the questions that produce a `## Disagreements` row.

## Step 5: Trace What Changed

The meeting report's `## Decisions` table is the record, and it names the `US-nn` each decision changes.
That table is where a reader looks to see whether the week was a test or a formality.

Then make sure the change reaches all four places, because each one answers a different question:

| Where                              | Question it answers                                  |
| ---------------------------------- | ---------------------------------------------------- |
| `reports/week-02/prototypes.md`    | What did we show, and what did they say?             |
| `meeting-report.md` `## Decisions` | What did we decide, and about which story?           |
| `docs/user-stories/US-nn.md`       | What does the story say now, and when did it change? |
| `reports/week-02/README.md`        | What should a reader look at first?                  |

The story file is the one that is easy to skip, and skipping it is what makes a decision invisible to a reader of the stories.
Add a dated note to the story saying what changed and why.
A story edited three times with no dated note gives a reader no way to tell what the customer actually settled from what the team decided on its own.

If nothing changed, that is itself the finding, and it is a serious one.
Either your prototype tested something the customer already agreed with, or you asked questions whose answers could not have contradicted anything.
Write that down too; it is more useful than a week that looks busy.

## Common Mistakes

- **Re-running the kickoff.**
  Twenty questions about business goals decides nothing, because those were settled a week ago.
- **A target that is a subject.**
  "Discuss the vision" is not a target you can miss.
- **Asking about the product you planned.**
  You are the only person in the room who cannot be objective about it.
- **Treating approval as the result.**
  The `## Disagreements` table should not be empty.
- **Deciding but not editing.**
  A decision in the meeting report that never reaches the story file has not actually changed anything.
- **Showing the easy part.**
  If the customer is impressed and you are not surprised, the prototype went to the wrong story.
- **Twelve questions in thirty minutes.**
  You will get through five well, and the rest will be a list somebody read aloud.
