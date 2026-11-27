# Final Exam

## Format

- **Seven minutes, 17 points.**
  Pitch your product and demonstrate it live within the seven minutes.
  Every team member must speak during the pitch.
- **Five minutes, 3 points.**
  Answer the panel's questions.
  The panel chooses its questions during the session, and your team can decide who answers each one.

See [Week 11 in the syllabus](../course/syllabus.md#week-11-dec-4--dec-10-final-exam) for the exam date.
If your demo uses the university VM, follow the [shutdown rule](../requirements/repository-requirements.md#environments-and-deployment).

## Your Audience And Goal

Persuade the panel to take one specific step that would help your team run a pilot with more users.
The pilot is a simulation for the exam.
Pitch as if the panel could agree to your request and the pilot could go ahead.

Choose a role that fits the help you need, and tell the panel whom it represents at the start of your pitch.
A library manager could host a tool-lending kiosk trial at one branch.
A museum visitor services lead could invite visitors to try a mobile audio guide for one exhibit.
A grocery store manager could approve a stock-counting app trial in one aisle.
An investor or internal sponsor could fund a specific pilot expense.

## Suggested Pitch Structure

1. **User and problem.**
   Start with one concrete situation that shows who has the problem and what it costs them.
2. **Opportunity.**
   Explain what those users do today, why they would try your product, and how you could reach the first group.
3. **Live demo.**
   Follow one user through a realistic workflow and show the outcome that matters to them.
4. **Evidence and pilot readiness.**
   Present a result that supports your case.
   Explain how you obtained it, what it shows, and what remains uncertain.
   Explain your quality requirement and architectural decision here or where they fit naturally in the pitch.
5. **Pilot plan and ask.**
   Say who would take part, for how long, and what they would do.
   Explain who would run and support the pilot, how you would judge the result, and what action you want the panel to take.

**Required.**
Explain one quality requirement that matters to your proposed pilot and one architectural decision your team made to address it.
In plain language, describe the risk for pilot users, the decision, and the tradeoff you accepted.
If you present a test result, say what you checked, under what conditions, and what you found.

**Example.**
A museum audio guide team might require visitors to be able to play every stop's audio after downloading the tour, even if their phone loses connectivity.
The team could store the full tour on the phone before the visit begins.
This lets visitors listen offline, but it adds an upfront download and uses storage on their phones.

**Recommended.**
Rehearse the full pitch with the live demo and speaker handoffs.
Use prepared accounts and sample data, and make the outcome readable from the back of the room.
See [Lecture 9, The Product Pitch Deck](../lectures/lecture-9.pdf) for examples of demos, evidence, and pilot requests.

## Pitch Deck Submission

Submit the pitch deck separately in Moodle by the [deadline in the syllabus](../course/syllabus.md#week-11-dec-4--dec-10-final-exam).
Present the exact deck you submitted, including any slides you plan to use during Q&A.
Revisions after submission are prohibited.
Keep the deck out of the product repository.

## Grading

| Criterion                                      | Points | What The Panel Assesses                                                                                                             |
| ---------------------------------------------- | -----: | ----------------------------------------------------------------------------------------------------------------------------------- |
| User problem and opportunity                   |      4 | A specific user group, its current workflow, and a credible reason to try the product.                                              |
| Live demonstration                             |      4 | A realistic workflow and an outcome that matters to the proposed pilot users.                                                       |
| Evidence                                       |      3 | A relevant result, how the team obtained it, and what the team can conclude from it.                                                |
| Pilot plan and ask                             |      4 | A plausible group, duration, and success criterion, plus a specific request that fits the panel's role.                             |
| Quality requirement and architectural decision |      2 | A quality requirement relevant to the pilot, the architectural decision that addresses it, and the tradeoff involved.               |
| Q&A                                            |      3 | Clear, direct answers that explain the team's reasoning, use evidence where relevant, and acknowledge uncertainty where it matters. |
| **Total**                                      | **20** |                                                                                                                                     |
