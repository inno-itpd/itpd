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
  - Which feature was your team most eager to build at kickoff?
  - What could you have learned about users’ existing workflow that would have made you leave that feature out of the first release?
]

#week(1, "Find a problem worth solving",
  [Teams of three or four chose a project, set up a shared repository, compared alternatives, and met their customer at the kickoff.],
  [An alternative can be a tool, a workaround, or the way people already do the work. A gap matters when it gives a specific group of users a reason to switch.],
  [A career coach and a client exchange several messages to find a time. The team compares that workflow with existing schedulers. For a coach who already shares a booking link, what would make switching worthwhile?],
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
  - A user likes your prototype and says their current tool works fine. What would you ask about the last time they did the task to find out if there’s a problem worth solving?
  - A teammate wants to add one more story to the first release. How would you decide whether the story belongs in the minimum usable product?
]

#key-takeaways("from problem to first release")[
  - Base the value proposition on a problem users face with the alternatives they use today.
  - Use a prototype to test an assumption that could change the scope of the first release.
  - Ship one complete workflow that produces a useful outcome. Define what evidence would show that outcome matters in practice.
]

#section("Quality, deployment, and measurement")

#discussion[
  - Imagine your demo goes perfectly and your first day in production goes badly. What failure would you most want to rule out for your product?
  - How would you recreate the conditions for that failure on staging, and what would count as a pass?
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
  - A workflow meets its response-time target on staging with one user. What would you change in the test before making the same claim about peak hours?
  - After release, more users start the workflow and fewer finish it. Which product events and operational signals would you compare to investigate a possible slowdown?
]

#key-takeaways("quality, deployment, and measurement")[
  - Tie an architectural decision to the quality target it helps meet and the tradeoff it brings.
  - Define the conditions and pass criterion for a repeatable test. Run it in an environment that can reproduce those conditions.
  - Use product analytics to see what users did and observability to investigate how the service behaved.
]

#section("Usability and configuration")

#discussion[
  - A participant completes a task after the moderator gives them a hint. What would you record about the session?
  - What would you check about the test setup before inviting the next participant?
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
  - Every participant reaches the final step, and half need a hint to finish. What would you keep constant when retesting a fix, and what would you measure?
  - You need to recreate staging for a retest. Where would you find the configuration and deployment steps, and how would you check that they work?
]

#key-takeaways("usability and configuration")[
  - Watch representative users attempt a realistic task unaided. Use the same success criteria when you retest a fix.
  - Check that the team can reproduce the environment and delivery steps the retest depends on.
]

#section("Acceptance and handoff")

#discussion[
  - It’s handoff day. Every user journey passes, and only the outgoing team knows how to deploy the product. Would you accept the handoff?
  - What would you ask the receiving team to do on its own before you made that decision?
]

#week(9, "Check the customer’s journeys",
  [The Sprint 9 review checks user journeys with the customer on a deployed build and revisits quality results and open goals. The sprint closes with `REL-09`.],
  [A user acceptance test checks whether a deployed build supports a journey the customer depends on. Running it in Sprint 9 leaves time to fix failures before handoff.],
  [Check a journey the customer cares about, such as moving a booking without emailing the coach. Record which build was tested, who ran the journey, and what happened.],
)

#week(10, "Release and hand over the product",
  [Sprint 10 delivers `REL-10`, the minimum viable product (MVP). The team reruns the active journeys, records the customer’s handoff decision, and writes the final report and project reflection.],
  [The receiving team needs evidence about the release it gets and enough access and documentation to deploy, operate, and maintain it.],
  [Hand over the release, deployment instructions, dashboard access, and known limitations. The weekly customer meetings, from kickoff to handoff, show how the product changed as new evidence came in.],
)

#quiz[
  - The customer accepted the journey on the previous build. What would you rerun and record on the handoff build after the fix?
  - The receiving team can deploy the release. What access and instructions would they need to investigate a failed booking after handoff?
]

#key-takeaways("acceptance and handoff")[
  - Check the customer’s journeys on the release they will receive. Record the build, who ran the test, and the outcome.
  - Give the receiving team the instructions and access to run the product, plus the known limitations it will inherit.
]

#section("The pilot pitch and final exam")

#discussion[
  - The panel offers to introduce your team to five pilot users. Who would you want in that group, and what would you hope to learn from them?
  - What result would make you revise the product before inviting anyone else?
]

#slide("What can a pilot tell you?")[
  #set text(size: 19pt)

  - *Customer reviews* help settle the scope and check whether the product supports the journeys the customer cares about.
  - *Usability sessions* show where participants can complete a task unaided and where they need help.
  - *A pilot* shows how people use the product in their normal work over time.

  #v(1fr)

  #example[Four of five participants booked unaided in a test session. Will coaches keep sharing the link after the first week? Will their clients book consultations without help?]
]

#slide("Build the pitch from your project work")[
  #set text(size: 16pt)
  #set par(leading: 0.35em)

  #pitch-rows(
    [*Problem and opportunity · 4*], [Use the kickoff, alternatives, and vision to explain who struggles today and why they would try your product.],
    [*Live demo · 4*], [Choose one realistic journey from the product you built. Show the outcome the pilot users care about.],
    [*Evidence · 3*], [Use one relevant result. Say what you checked, under what conditions, and what you learned.],
    [*Pilot plan and request · 4*], [Use an open question to choose the participants, duration, and success criterion. Ask the panel for one action.],
    [*Quality and architecture · 2*], [Explain one quality requirement, the architectural decision that addresses it, and the tradeoff.],
    [*Panel Q&A · 3*], [Use the decisions and evidence to explain why you changed course and what remains uncertain.],
  )

  #v(1fr)
  #note[#link(course + "exam/README.md#grading")[Final exam rubric]]
]

#slide("Ask the panel for a pilot")[
  #set text(size: 19pt)

  Ask for one action the panel can take. Explain who will participate, how long the pilot will run, and what result will guide your next decision.

  #v(1fr)
  #example[
    *Request* · Could you introduce us to five independent coaches willing to share their booking links for four weeks?

    *Trial* · Our team will onboard the coaches and handle support.

    *Success* · At least four coaches still share their links in week four, and at least 80% of completed consultations are booked without coach help during the trial.
  ]

  #note[Illustrative targets for the simulated exam pilot.]
]

// Allow four minutes for teams to write, then hear two examples.

#slide("Use one result from your own project")[
  Pick a result you can point to in your repository. Take four minutes to finish these three sentences with your team.

  #example[
    We observed … under … conditions.

    We still need to learn …

    We’re asking … to help us test it by …
  ]

  Ask another team whether your proposed pilot would answer the question you named.
]

#slide("Final exam briefing")[
  #set text(size: 19pt)

  - *Thursday, 3 December, 23:59* · Submit the pitch deck separately in Moodle, including any slides for Q&A. Present that version and keep the deck out of the product repository.
  - *Friday, 4 December* · Seven minutes for the pitch with a live demo, followed by five minutes of panel Q&A. Everyone speaks during the pitch.
  - *Sunday, 6 December, 23:59* · Submission 10 and customer handoff are due. Build the pitch from evidence available on exam day.

  #v(1fr)

  #note[
    #link(course + "exam/README.md")[Final exam instructions]
    · #link(course + "assignments/assignment-10.md")[Assignment 10]
    · #link(course + "lectures/lecture-9.pdf")[Lecture 9, The product pitch deck]
  ]
]

#quiz[
  - Every participant finished the task in a usability session. A teammate wants to say users will come back every week. What can you claim now, and what would you measure in a pilot to support that prediction?
  - A panelist says, “We can help.” What single action would you ask for, and how would it help answer your pilot question?
]

#key-takeaways("the pilot pitch and final exam")[
  - Tell the panel what you observed and under what conditions. Demo a journey that matters to the people you want in the pilot.
  - Pick one open question. Define who will take part, how long they’ll use the product, and what result will guide your next decision.
  - Ask the panel for one action that makes the pilot possible. Be ready to explain an architectural tradeoff in Q&A.
]
