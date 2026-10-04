# Guide: Validating With The Customer

How to prepare and run a meeting after the kickoff, and how to record what it changed.

The rules are in [Validation](../requirements/process-requirements.md#validation) and [Meeting With The Customer](../requirements/process-requirements.md#meeting-with-the-customer), and the file shapes are in [Artifact Requirements](../requirements/artifact-requirements.md#customer-meeting-artifacts).
This guide is the method for every meeting after the kickoff.
The kickoff is a different meeting, and its method is in [The Kickoff Interview](customer-interview.md).

**Timebox:** the meeting is ~30 minutes, and the writing is most of the work.
Ask for 60 if the customer can give it.

<h2>Table of contents</h2>

- [What You Produce](#what-you-produce)
- [Step 1: Write Down What The Meeting Is For](#step-1-write-down-what-the-meeting-is-for)
- [Step 2: Derive The Questions From The Target](#step-2-derive-the-questions-from-the-target)
- [Step 3: Cut Questions That Cannot Change Anything](#step-3-cut-questions-that-cannot-change-anything)
- [Step 4: Run The Meeting](#step-4-run-the-meeting)
- [Step 5: Trace What Changed](#step-5-trace-what-changed)
- [Common Mistakes](#common-mistakes)

## What You Produce

```text
reports/week-NN/meeting-script.md     the target, the questions, the roles
reports/week-NN/meeting-report.md     the decisions, the action points, the disagreements
reports/week-NN/meeting-notes.md      or meeting-transcript.md, never both
the story issue                       a dated comment on what the meeting changed
reports/week-NN/README.md             the changed US-nn, named
```

## Step 1: Write Down What The Meeting Is For

This is not the kickoff again, and the difference is the whole point of a later meeting.
In Week 1 the problem and the direction were both open.
By now you have something concrete to test, and the one question is: **which of these is wrong?**

Write the target at the top of the script, in one sentence.
A good target is specific enough that you could tell afterwards whether you hit it.
A bad target is a subject, not a target: "discuss the product".
You will spend thirty minutes on the parts you want to talk about and leave with nothing you can change.

The assignment says what this week's meeting has to settle.
The target is that content written as the one question the meeting exists to answer.

<!-- TODO why starts with "then" -->

Then re-read the previous meeting report before you write anything.
Its open questions are still open, and its action points are due; if you have carried one out, the customer should hear how it went.

## Step 2: Derive The Questions From The Target

<!-- TODO don't mention the kickoff -->

The kickoff's five areas are not yours.
The business goals were settled then, and re-asking them decides nothing.

<!-- TODO write more concretely -->
<!-- Which "areas"? -->

Take your target and ask what would have to be true for you to be wrong.
Those are your areas, and each one should be a place where the customer's answer could contradict something you wrote.
Derive them, do not copy them.
If an area does not serve the target, delete it, even if it was in an earlier script.
The assignment gives the content this week's target is made of.

<!-- TODO why tag? -->

Write every question numbered, and tag it open or closed.
An open question asks the customer to tell you something; a closed one can be answered yes or no.
The tag is what you check the question against in [Step 3](#step-3-cut-questions-that-cannot-change-anything).

Ask permission before you record, every time.
Permission is per meeting and is never carried over from the previous one.
The recording stays out of the repository and goes in the Moodle PDF as a private link.

## Step 3: Cut Questions That Cannot Change Anything

A question earns its place only if an answer could change something in the target.
For each question, ask what answer you expect, and what you would do differently if the answer went the other way.
If no answer changes anything, cut the question; asking it costs meeting time and tells you nothing.

Rewrite at least one question and record the rewrite in `## Key improvements`, with the principle behind it.
The section is required for every meeting, and an improvement you cannot show is not an improvement.
The principle is yours; what matters is that a reader can see the before, the after, and why the second one is better.

## Step 4: Run The Meeting

Assign the three roles before the meeting, per [Meeting With The Customer](../requirements/process-requirements.md#meeting-with-the-customer).
The whole team attends.

The observer's job is the one that catches the surprise.
The note taker records what was said; the observer records the two questions you did not get to and the thing the customer said in passing and nobody wrote down.
That passing remark is often the most useful thing in the meeting.

Do not pitch.
You are not asking permission, and a customer who agrees with everything has told you almost nothing.
If the customer says "that sounds great" about your own idea, the useful next question is "what would you want to see for that to be true?" or "what is the risk in it?".
Those are the questions that produce a `## Disagreements` row.

## Step 5: Trace What Changed

<!-- TODO why table? -->
<!-- TODO what if a decision doesn't change a user story? -->
<!-- TODO why should it be related to user stories exactly, not some functional requirements? -->

The meeting report's `## Decisions` table is the record, and it names the `US-nn` each decision changes.
That table is where a reader looks to see whether the week was a test or a formality.

Then make sure the change reaches all four places, because each one answers a different question:

| Where                              | Question it answers                                  |
| ---------------------------------- | ---------------------------------------------------- |
| `reports/week-NN/prototypes.md`    | What did we show, and what did they say?             |
| `meeting-report.md` `## Decisions` | What did we decide, and about which story?           |
| the story issue                    | What does the story say now, and when did it change? |
| `reports/week-NN/README.md`        | What should a reader look at first?                  |

The issue comment is the one that is easy to skip, and skipping it is what makes a decision invisible to a reader of the stories.
Add a dated comment to the issue saying what changed and why, and link the meeting report.
A story edited three times with no comment gives a reader no way to tell what the customer actually settled from what the team decided on its own.

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
- **Deciding but not commenting.**
  A decision in the meeting report that never reaches the story issue has not actually changed anything.
- **Showing the easy part.**
  If the customer is impressed and you are not surprised, the prototype went to the wrong story.
- **Twelve questions in thirty minutes.**
  You will get through five well, and the rest will be a list somebody read aloud.
