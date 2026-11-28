# Final Exam

- The final exam is on **Friday 4 December 2026**.
- Submit your [exam materials](#pitch-deck-and-demo-submission) separately in Moodle by **Thursday 3 December 2026 at 23:59**.

See [Week 11 in the syllabus](../course/syllabus.md#week-11-dec-4--dec-10-final-exam) for the full schedule.

## Exam Format

1. **Product pitch and live demo (7 minutes, 17 points).**
   Use part of your pitch to demonstrate the product live.
   Every team member must speak during the pitch.
   If your demo uses the university VM, follow the [shutdown rule](../requirements/repository-requirements.md#environments-and-deployment).
2. **Panel Q&A (5 minutes, 3 points).**
   The panel chooses its questions during the session.
   Your team decides who answers each one.

## Your Audience And Goal

Persuade the panel to take one specific step that would help your team run a pilot with more users.
A pilot is a limited trial in which people use the product in their usual setting.
The exam simulates the decision to run that trial, so pitch as if the panel could agree to your request.
If your work with the customer helps explain why you're asking for this pilot, briefly say what you learned.

Choose a role for the panel that can act on your pilot request.
At the start of your pitch, tell panel members whom they represent.

- A **library manager** could host a tool-lending kiosk trial at one branch.
- An **investor who knows independent coaches** could introduce the meeting booking team to coaches willing to try the app.
- A **grocery store manager** could approve a stock-counting app trial in one aisle.
- An **investor or internal sponsor** could fund a specific pilot expense.

## What To Cover In Your Pitch

Cover all the topics below within your seven minutes.
The order is suggested, and you can combine or reorder topics to suit your pitch.

1. **User problem and opportunity.**
   Start with one concrete situation that shows who has the problem and what it costs them.
   Explain what those users do today, why they would try your product, and how you could reach the first group.
   If you have a source, you can use it to estimate how many people you could reach that way.
2. **Live demo.**
   Show one realistic workflow that proposed pilot users would carry out and the outcome that makes it worth trying.
3. **Evidence and pilot readiness.**

   - **Quality requirement and architectural decision.**
     Describe one realistic pilot condition that could put the outcome of the demonstrated workflow at risk.
     In plain language, state one measurable quality requirement for that condition.
     Explain how one architectural decision your team made helps meet the requirement and what its tradeoff means for pilot users.
   - **Evidence.**
     Present a result that supports your case for the pilot.
     Say what you checked, under what conditions, what you found, and what remains uncertain.
     A result from testing your chosen quality requirement can serve as this evidence.
     You can present that result separately from the live demo.

4. **Pilot plan and request.**
   Say who would take part, for how long, and what they would do.
   Explain who would run and support the pilot, what you still need to learn, and how you would judge success.
   End by asking the panel for one specific action and explain how it would let pilot users try the workflow in their usual setting.

**Example pitch excerpt for the meeting booking app (illustrative figures).**

"An independent coach and a client can exchange several messages before they find a time that works.
Watch what happens when two clients open the coach's booking link and both choose the last Friday slot.
One sees a confirmation, the other is prompted to choose another time, and the coach's calendar shows one appointment.

The coach can only meet one of them, so exactly one client should get a confirmation every time.
The database lets us reserve the slot once, and we wait until it's reserved before we tell a client it's theirs.
If their connection drops, they may have to wait to find out whether they got it.
We tried this 20 times on staging, sending both requests at the same moment.
Each time, one client got a confirmation and one appointment appeared on the coach's calendar.

What we still don't know is what the other client does next.
Do they pick another time, or do they go back to messaging the coach?
We'll help the coaches set up their links.
If fewer than half the clients who miss a slot book another one on their own, we'll revise that step before inviting more coaches.
Could you introduce us to five independent coaches willing to share their booking links with clients for four weeks?"

## Rehearsal Tips

Rehearse the full pitch with the live demo and speaker handoffs.
Use prepared accounts and sample data, and make the outcome readable from the back of the room.
See [Lecture 9, The Product Pitch Deck](../lectures/lecture-9.pdf) for examples of demos, evidence, and pilot requests.

## Preparing For Panel Q&A

Prepare for questions your panel might ask before agreeing to the pilot.

- Why did you choose this design?
- Which pilot conditions did your tests or observations cover?
- How would you support users if the tradeoff caused problems during the pilot?
- If the pilot succeeds, who might help keep the product running, and why would that be worthwhile for them?

You can prepare backup slides with details that would help you answer likely questions, such as a small diagram or a test result.

## Pitch Deck And Demo Submission

Submit a prerecorded product demo together with your pitch deck in Moodle.
Include any slides you plan to use during panel Q&A in the deck you submit.
Present the exact deck you submitted.
Revisions after submission are prohibited.
Keep the deck out of the product repository.

## Grading

| Criterion                                      | Points | What the panel assesses                                                                                                                                      |
| ---------------------------------------------- | -----: | ------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| User problem and opportunity                   |      2 | A specific user group, its current workflow, and a credible reason to try the product.                                                                       |
| Live demo                                      |      4 | A workflow proposed pilot users would carry out, with an outcome that makes it worth trying.                                                                 |
| Quality requirement and architectural decision |      4 | A measurable requirement for the demonstrated workflow under a realistic pilot condition, the decision that helps meet it, and its tradeoff for pilot users. |
| Evidence                                       |      3 | A relevant result, how the team obtained it, and what the team can conclude from it.                                                                         |
| Pilot plan and request                         |      4 | A plausible group, duration, and success criterion, plus a specific action the panel can take to let pilot users try the workflow.                           |
| Panel Q&A                                      |      3 | Clear, direct answers that explain the team's reasoning, use evidence where relevant, and acknowledge uncertainty where it matters.                          |
| **Total**                                      | **20** |                                                                                                                                                              |
