// Lecture 10 of IT Product Development.
// The fictional consultation booking app continues the examples in Lectures 2 and 9.

#let accent = rgb("#12507b")
#let muted = luma(42%)
#let light-blue = rgb("#edf4f8")
#let course = "https://github.com/inno-itpd/itpd/blob/main/"

#set document(title: "From the first customer meeting to the pilot pitch")
#set page(
  width: 10in,
  height: 5.625in,
  margin: (x: 0.55in, y: 0.4in),
  footer: context {
    set text(size: 9pt, fill: luma(55%))
    align(right)[#counter(page).display("1")]
  },
)
#set text(font: "Liberation Sans", size: 20pt, lang: "en")
#set par(leading: 0.48em, spacing: 0.88em)
#set list(indent: 1.2em, body-indent: 0.45em, spacing: 0.6em)
#set heading(numbering: none)

#show heading.where(level: 1): it => {
  text(size: 25pt, weight: "bold", fill: accent)[#it.body]
  v(3pt)
  line(length: 1.05in, stroke: 2pt + accent)
  v(4pt)
}
#show link: it => text(fill: accent)[#it]

#let note(body) = text(size: 14pt, fill: muted, body)

#let example(body) = block(
  width: 100%,
  fill: light-blue,
  inset: 13pt,
  text(size: 18pt, body),
)

#let slide(title, body) = {
  pagebreak(weak: true)
  heading(level: 1, title)
  body
}

#let section(title) = {
  pagebreak(weak: true)
  v(1.55in)
  align(center)[#text(size: 32pt, weight: "bold", fill: accent)[#title]]
}

#let discussion(body) = slide("Discussion", body)
#let quiz(body) = slide("Quiz", body)
#let key-takeaways(topic, body) = slide("Key takeaways (" + topic + ")", body)

#let week(number, title, work, principle, worked-example) = slide("Week " + str(number) + " · " + title)[
  #work

  ---

  #principle

  #v(1fr)
  #example(worked-example)
]

#let pitch-rows(..cells) = grid(
  columns: (222pt, 1fr),
  column-gutter: 18pt,
  row-gutter: 9pt,
  ..cells,
)

#let title-slide() = {
  v(1.15in)
  align(center)[
    #text(size: 34pt, weight: "bold", fill: accent)[From the first customer meeting #linebreak() to the pilot pitch]
    #v(0.16in)
    #text(size: 20pt, fill: muted)[Lecture 10, IT Product Development]
  ]
  v(1.2in)
  align(center)[#text(size: 14pt, fill: muted)[Innopolis University, 2026]]
}

#title-slide()

#slide("Agenda")[
  - From problem to first release
  - Quality, deployment, and measurement
  - Usability and configuration
  - Acceptance and handoff
  - The pilot pitch and final exam

  #note[The consultation booking app and its results are fictional.]
]

#section("From problem to first release")

#discussion[
  Your team has an idea for making a common task easier. Some users already have a workaround they like.

  - What would your team need to learn about the workaround before deciding there’s a problem worth solving?
  - What might you learn that would make you leave the feature out of the first release?
]

#week(1, "Find a problem worth solving",
  [Teams of three or four chose a project, set up a shared repository, compared alternatives, and met their customer at the kickoff.],
  [An alternative can be a tool, a workaround, or the way people already do the work. A gap matters when it gives a specific group of users a reason to switch.],
  [A career coach and a client exchange several messages to find a time. The team compares that workflow with existing schedulers. If you were a coach who already used a booking link, what would make you switch?],
)

#week(2, "Choose the first workflow",
  [Teams wrote the product vision, prioritized stories with acceptance criteria, prototyped a risky assumption, and proposed a minimum usable product (MUP).],
  [A prototype gives the customer a workflow to react to while it is cheap to change. Use that feedback to test the assumption most likely to change the scope.],
  [The customer says coaches use Google Calendar, which gives the calendar story a specific acceptance criterion. The proposed first workflow is smaller: open a booking link, select a slot, pay, and get confirmation.],
)

#week(3, "Release a working slice",
  [Teams set their threshold of success, made a project plan and risk register, and cut the first release, `REL-03`.],
  [A working release lets the customer try the whole workflow. The threshold of success defines what evidence would show the product is solving enough of the problem.],
  [From a clean checkout, the team can show a client going from the coach’s link to a paid, confirmed booking. A later goal is to observe a real paid booking on the deployed product.],
)

#quiz[
  - A user likes your prototype and says their current tool works fine. What would you ask them about the last time they did the task? What would you listen for?
  - A teammate wants to add one more story to the first release. How would your team decide whether the story belongs in the minimum usable product?
]

#key-takeaways("from problem to first release")[
  - Base the value proposition on a problem users face with the alternatives they use today.
  - Use a prototype to test an assumption that could change the scope of the first release.
  - Ship one complete workflow that produces a useful outcome. Define what evidence would show that outcome matters in practice.
]

#section("Quality, deployment, and measurement")

#discussion[
  Your demo went well. Before launch, your team has time to test one possible failure on staging.

  - How would your team decide which failure to test for first?
  - How would you reproduce the conditions that could cause it? What result would count as a pass?
]

#week(4, "Decide what quality means",
  [Teams wrote functional and quality requirements, drew the container view, and recorded architectural decisions.],
  [Start with a failure users would notice. State what the system should do under those conditions and explain how an architectural decision helps meet that target.],
  [Even when two clients submit together, at most one should get confirmation. The database accepts one reservation per slot and the app waits for it to succeed. If a client loses their connection, confirmation has to wait.],
)

#week(5, "Check it and deploy it",
  [Teams set up CI and automated checks, wrote quality requirement tests, deployed to staging and production, and documented how to deploy.],
  [A repeatable quality requirement test specifies the setup, the conditions, and what counts as a pass. Run it where the conditions you care about can be reproduced.],
  [Send two simultaneous requests for the last slot on staging. Check whether only one client receives confirmation and the coach’s calendar shows a single reservation.],
)

#week(6, "Measure what happens in use",
  [Teams instrumented the deployed product, chose a focus metric and operational signals, built dashboards, and reviewed the threshold of success.],
  [Product analytics shows how people use the product. A focus metric connects that behavior to a product goal. Observability helps explain how the service behaved at the time.],
  [Count completed paid bookings per active coach per week. Keep smoke tests and usability sessions out of that count. Track how long the free-slot request takes to help investigate slow responses.],
)

#quiz[
  - A workflow meets its response-time target with one user on staging. How would your team test whether it still meets the target at peak times?
  - After a release, more users start a workflow and fewer finish it. Your team suspects a slowdown. Which product events and operational signals would you compare?
]

#key-takeaways("quality, deployment, and measurement")[
  - Tie an architectural decision to the quality target it helps meet and the tradeoff it brings.
  - Define the conditions and pass criterion for a repeatable test. Run it in an environment that can reproduce those conditions.
  - Use product analytics to see what users did and observability to investigate how the service behaved.
]

#section("Usability and configuration")

#discussion[
  You’re moderating a usability test. A participant finishes the task after you give them a hint.

  - What would you record about how the participant finished?
  - Before the next session, what would you check about the task instructions or the test setup?
]

#week(7, "Design the usability test",
  [Teams planned representative participants, realistic tasks, measures, consent, and how to record sessions. They adapted instrumentation to the test and tried the test setup before the first session.],
  [Give representative participants a realistic goal and observe how they try to reach it. Define what counts as success before the first session so you can compare results.],
  [Give each participant the coach’s link and ask them to book a consultation. Record whether they finish without help and where they hesitate.],
)

#week(8, "Use the findings",
  [Teams analyzed the usability sessions, recorded findings, and decided what to fix or investigate. They also reviewed the configuration used to build, check, and deliver the product.],
  [Use what participants actually did to decide what to fix and retest. Review whether the team can reproduce the environments and delivery steps the next run depends on.],
  [Four of five participants booked unaided. The fifth missed the time-zone control. Make it easier to find and retest. For the configuration review, check whether staging can be set up again for the retest.],
)

#quiz[
  - Half the participants need a hint at the final step. When your team retests the fix, what would you keep the same? What would you measure?
  - Your team needs to set up staging again for the retest. Where would you look for the configuration and deployment steps? How would you check that they work?
]

#key-takeaways("usability and configuration")[
  - Watch representative users attempt a realistic task unaided. Use the same success criteria when you retest a fix.
  - Check that the team can reproduce the environment and delivery steps the retest depends on.
]

#section("Acceptance and handoff")

#discussion[
  Imagine you’re the customer. Every user acceptance test passes. So far, only the student team knows how to deploy the product.

  - Would you accept the handoff at this point? Why?
  - Before you decide, what would you ask the people you’ve chosen to maintain the product to try without help from the student team?
]

#week(9, "Check the customer’s journeys",
  [The Sprint 9 review checks user journeys with the customer on a deployed build and revisits quality results and open goals. The sprint closes with `REL-09`.],
  [A user acceptance test checks whether a deployed build supports a journey the customer depends on. Running it in Sprint 9 leaves time to fix failures before handoff.],
  [Check a journey the customer cares about, such as moving a booking without emailing the coach. Record which build was tested, who ran the journey, and what happened.],
)

#week(10, "Release and hand over the product",
  [Sprint 10 delivers `REL-10`, the minimum viable product (MVP). The student team reruns the active journeys, records the customer’s handoff decision, and writes the final report and project reflection.],
  [The people the customer chooses to run and maintain the product need to know what was tested. They also need the access and instructions to deploy and support the release.],
  [Hand over the release, deployment instructions, dashboard access, and known limitations. The weekly customer meetings, from kickoff to handoff, show how the product changed as new evidence came in.],
)

#quiz[
  - A user acceptance test passed on an earlier build. Your team has since fixed a bug in that workflow. What would you rerun on the handoff build, and what would you record for the customer?
  - The customer’s maintainers can deploy the release. What access and instructions would your team give them so they can investigate a failed booking after handoff?
]

#key-takeaways("acceptance and handoff")[
  - Check the customer’s journeys on the release they will receive. Record the build, who ran the test, and the outcome.
  - Give the people who will maintain the product the instructions and access to run it. Tell them about its known limitations.
]

#section("The pilot pitch and final exam")

#discussion[
  Your team can recruit five people for a pilot.

  - What could your team learn from a pilot that a usability session wouldn’t tell you? Who would you invite to find out?
  - What result would make your team change the product before inviting more users?
]

#slide("What can a pilot tell you?")[
  #set text(size: 19pt)

  - *Customer reviews* help settle the scope and check whether the product supports the journeys the customer cares about.
  - *Usability sessions* show where participants can complete a task unaided and where they need help.
  - *A pilot* shows how people use the product in their normal work over time.

  #v(1fr)

  #example[Four of five participants booked unaided in a test session. The booking app team wants to answer two questions in the pilot. Do coaches keep sharing their links after the first week? Do their clients book without help?]
]

#slide("Build the pitch from your project work")[
  #set text(size: 16pt)
  #set par(leading: 0.35em)

  #pitch-rows(
    [*User problem and opportunity*], [Show who faces the problem, what it costs them, and what they do today. Explain why they would try your product and how you would reach them.],
    [*Live demo*], [Follow one user through a realistic workflow. Show the outcome that matters to them.],
    [*Quality requirement and architectural decision*], [Explain one quality requirement that matters for the workflow in the pilot. Explain the decision that addresses it and the tradeoff for the pilot.],
    [*Evidence*], [Give one result that supports the pilot. Say what you checked, under what conditions, what you found, and what remains uncertain.],
    [*Pilot plan and request*], [Use an open question that the pilot should answer to choose the participants, duration, and success criterion. Ask the panel for one action.],
  )

  #v(1fr)
  #note[#link(course + "exam/README.md#what-to-cover-in-your-pitch")[What to cover in your pitch] · #link(course + "exam/README.md#grading")[Final exam rubric]]
]

#slide("Ask the panel for a pilot")[
  #set text(size: 19pt)

  Open by telling the panel whom they represent. Choose a role that can act on your request. End by asking for one specific action.

  #v(1fr)
  #example[
    *Panel role* · Lead of a local coaching network.

    *Trial* · Five independent coaches share their booking links with clients for four weeks. Our team onboards the coaches and handles support.

    *Success* · At least four coaches still share their links in week four, and at least 80% of completed consultations are booked without coach help during the trial.

    *Request* · Could you introduce us to five independent coaches who’d be willing to try the booking app?
  ]

  #note[Illustrative targets for the simulated exam pilot.]
]

#slide("Final exam briefing")[
  #set text(size: 18pt)

  - *Thursday, 3 December, 23:59* · Submit the pitch deck separately in Moodle, including any slides for Q&A. Present that exact deck and keep it out of the product repository.
  - *Friday, 4 December* · Seven minutes for the pitch with a live demo. Every team member speaks during the pitch. Follow the #link(course + "requirements/repository-requirements.md#environments-and-deployment")[shutdown rule] if you demo on the university VM.
  - *Panel Q&A* · Five minutes after the pitch. The panel chooses its questions during the session. Your team decides who answers each one.
  - *Sunday, 6 December, 23:59* · Submission 10 and customer handoff are due. Build the pitch from evidence available on exam day.

  #v(1fr)

  #note[
    #link(course + "exam/README.md")[Final exam instructions]
    · #link(course + "assignments/assignment-10.md")[Assignment 10]
    · #link(course + "lectures/lecture-9.pdf")[Lecture 9, The product pitch deck]
  ]
]

#quiz[
  - Everyone finished the task in a usability session. A teammate wants to tell the panel that users will come back every week. What can your team say based on the session? What would you measure in a pilot to see whether users come back?
  - During your pitch, a panelist says, “We can help.” What one action would you ask the panelist to take? How would it help your team answer its pilot question?
]

#key-takeaways("the pilot pitch and final exam")[
  - Tell the panel what you observed and under what conditions. Demo a journey that matters to the people you want in the pilot.
  - Pick one open question. Define who will take part, how long they’ll use the product, and what result will guide your next decision.
  - Ask the panel for one action that makes the pilot possible. Be ready to explain an architectural tradeoff in Q&A.
]
