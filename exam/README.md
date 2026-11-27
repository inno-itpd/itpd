# Final Exam

- The final exam is on **Friday 4 December 2026**.
- Submit the [pitch deck](#pitch-deck-submission) separately in Moodle by **Thursday 3 December 2026 at 23:59**.

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

Choose a role for the panel that can act on your pilot request.
At the start of your pitch, tell panel members whom they represent.

- A **library manager** could host a tool-lending kiosk trial at one branch.
- A **museum visitor services lead** could invite visitors to try a mobile audio guide for one exhibit.
- A **grocery store manager** could approve a stock-counting app trial in one aisle.
- An **investor or internal sponsor** could fund a specific pilot expense.

## What To Cover In Your Pitch

Cover all the topics below within your seven minutes.
The order is suggested, and you can combine or reorder topics to suit your pitch.

1. **User problem and opportunity.**
   Start with one concrete situation that shows who has the problem and what it costs them.
   Explain what those users do today, why they would try your product, and how you could reach the first group.
2. **Live demo.**
   Follow one user through a realistic workflow and show the outcome that matters to them.
3. **Evidence and pilot readiness.**

   - **Quality requirement and architectural decision.**
     Pick one quality requirement that matters when pilot users try the workflow you demonstrated.
     In plain language, explain what the product needs to do under those conditions, what is at risk for users, and how one architectural decision your team made addresses that risk.
     Explain the tradeoff you accepted and what it means for the pilot.
   - **Evidence.**
     Present a result that supports your case for the pilot.
     Say what you checked, under what conditions, what you found, and what remains uncertain.
     A result from testing your chosen quality requirement can serve as this evidence.

4. **Pilot plan and request.**
   Say who would take part, for how long, and what they would do.
   Explain who would run and support the pilot, what you still need to learn, and how you would judge success.
   End by asking the panel for one specific action.

**Example of connecting the demo to the pilot.**
In the museum audio guide demo, a visitor downloads the tour and plays one stop with the phone in airplane mode.
For the pilot, visitors need to be able to play every stop after downloading the tour, even where the exhibit has poor reception.
The team stores the full tour on the phone so it can play offline.
Visitors need time to download it and enough space to store it.
In a test on two phones, every stop played in airplane mode after the full download.
The pilot would check whether visitors can complete the download before entering the exhibit.

## Rehearsal Tips

Rehearse the full pitch with the live demo and speaker handoffs.
Use prepared accounts and sample data, and make the outcome readable from the back of the room.
See [Lecture 9, The Product Pitch Deck](../lectures/lecture-9.pdf) for examples of demos, evidence, and pilot requests.

## Preparing For Panel Q&A

Prepare for questions your panel might ask before agreeing to the pilot.

- Why did you choose this design?
- Which pilot conditions did your tests or observations cover?
- How would you support users if the tradeoff caused problems during the pilot?

You can prepare backup slides with details that would help you answer likely questions, such as a small diagram or a test result.

## Pitch Deck Submission

Include any slides you plan to use during panel Q&A in the deck you submit.
Present the exact deck you submitted.
Revisions after submission are prohibited.
Keep the deck out of the product repository.

## Grading

| Criterion                                      | Points | What the panel assesses                                                                                                             |
| ---------------------------------------------- | -----: | ----------------------------------------------------------------------------------------------------------------------------------- |
| User problem and opportunity                   |      2 | A specific user group, its current workflow, and a credible reason to try the product.                                              |
| Live demo                                      |      4 | A realistic workflow and an outcome that matters to the proposed pilot users.                                                       |
| Quality requirement and architectural decision |      4 | A quality requirement relevant to the demonstrated workflow and the pilot, the decision that addresses it, and the tradeoff.        |
| Evidence                                       |      3 | A relevant result, how the team obtained it, and what the team can conclude from it.                                                |
| Pilot plan and request                         |      4 | A plausible group, duration, and success criterion, plus a specific request that fits the panel's role.                             |
| Panel Q&A                                      |      3 | Clear, direct answers that explain the team's reasoning, use evidence where relevant, and acknowledge uncertainty where it matters. |
| **Total**                                      | **20** |                                                                                                                                     |
