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

#let week(number, title, work, timing, booking) = slide("Week " + str(number) + " · " + title)[
  #work

  #timing

  #v(1fr)
  #example(booking)
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
  - Usability, acceptance, and handoff
  - The pilot pitch and final exam

  #note[The consultation booking app and its results are fictional.]
]

#section("From problem to first release")

#discussion[
  #example[What did your team believe in Week 1 that changed after someone saw or used the product?]

  What did you observe, and which decision did it change?
]

#week(1, "Find a problem worth solving",
  [Teams of three or four chose a project, set up a shared repository, compared alternatives, and met their customer at the kickoff.],
  [The comparison gave teams a gap and a value proposition to discuss before they chose what to build.],
  [A career coach and a client exchange several messages to find a time. The team compares that workflow with existing schedulers. For a coach who already shares a booking link, what would make switching worthwhile?],
)

#week(2, "Choose the first workflow",
  [Teams wrote the product vision, prioritized stories with acceptance criteria, prototyped a risky assumption, and proposed a minimum usable product (MUP).],
  [The customer could react to a concrete workflow while changing it still cost little.],
  [The customer says coaches use Google Calendar, which gives the calendar story a specific acceptance criterion. The proposed first workflow is smaller: open a booking link, select a slot, pay, and get confirmation.],
)

#week(3, "Release a working slice",
  [Teams set their threshold of success, made a project plan and risk register, and cut the first release, `REL-03`.],
  [A working slice gave the customer something to try. The weekly meetings could now review each new increment against the project’s goals.],
  [From a clean checkout, the team can show a client going from the coach’s link to a paid, confirmed booking. A later goal is to observe a real paid booking on the deployed product.],
)

#quiz[
  A coach already shares a booking link. Your team thinks the coach would switch tools if clients could pay while booking.

  - What could you show the coach in a prototype to test that assumption?
  - What would you expect to work end to end in the first release?
]

#key-takeaways("from problem to first release")[
  - Use the alternatives and the customer kickoff to explain whose problem you’re solving and why they would switch.
  - Walk the coach through a prototype of booking with payment. Ask how it would change their work today.
  - Use the first release to try the workflow end to end, from opening the link to getting confirmation for a paid booking.
]

#section("Quality, deployment, and measurement")

#discussion[
  The booking demo works when one client uses it. Now two clients try to pay for the last available slot.

  #example[What should happen, and what evidence would convince you that the deployed product handles it?]
]

#week(4, "Decide what quality means",
  [Teams wrote functional and quality requirements, drew the container view, and recorded architectural decisions.],
  [The first release gave them a concrete workflow to examine. They could name what might go wrong and explain how their design addressed it.],
  [Even when two clients submit together, at most one should get confirmation. The database accepts one reservation per slot and the app waits for it to succeed. If a client loses their connection, confirmation has to wait.],
)

#week(5, "Check it and deploy it",
  [Teams set up CI and automated checks, wrote quality requirement tests, deployed to staging and production, and documented how to deploy.],
  [A deployed build gave the customer something they could reach. The tests gave teams a repeatable way to check a quality target under known conditions.],
  [Send two simultaneous requests for the last slot on staging. Check whether only one client receives confirmation and the coach’s calendar shows a single reservation.],
)

#week(6, "Measure what happens in use",
  [Teams instrumented the deployed product, chose a focus metric and operational signals, built dashboards, and reviewed the threshold of success.],
  [Analytics could show how people used the workflow. Observability could show how the service behaved while they used it.],
  [Count completed paid bookings per active coach per week. Keep smoke tests and usability sessions out of that count. Track how long the free-slot request takes to help investigate slow responses.],
)

#quiz[
  The team wants to check whether the last slot can be double-booked and find out how often coaches get paid bookings.

  - What would you run on staging to check the first question?
  - What would you count in production to answer the second?
]

#key-takeaways("quality, deployment, and measurement")[
  - State the quality target, then connect it to a design decision and a repeatable test.
  - Check that only one reservation and confirmation succeed when two clients request the same slot on staging.
  - Count paid bookings per active coach per week in production. Use operational signals to investigate how the service behaved.
]

#section("Usability, acceptance, and handoff")

#discussion[
  You’re taking over the booking app. You’ve seen a successful demo and will be responsible for the next release.

  #example[What would you want to see before accepting the release, and what would you need to run it afterward?]
]

#week(7, "Design the usability test",
  [Teams planned representative participants, realistic tasks, measures, consent, and how to record sessions. They adapted instrumentation to the test and tried the test setup before the first session.],
  [Agreeing on tasks and success criteria ahead of time gave participants comparable conditions and the team a way to interpret the results.],
  [Give each participant the coach’s link and ask them to book a consultation. Record whether they finish without help and where they hesitate.],
)

#week(8, "Use the findings",
  [Teams analyzed the usability sessions, recorded findings, and decided what to fix or investigate. They also reviewed the configuration used to build, check, and deliver the product.],
  [The sessions gave teams observed problems to act on. By now, they had used the delivery setup and agent instructions long enough to judge how well they served the project.],
  [Four of five participants booked unaided. The fifth missed the time-zone control. Make it easier to find and retest. For the configuration review, check whether staging can be set up again for the retest.],
)

#week(9, "Check the customer’s journeys",
  [The Sprint 9 review checks user journeys with the customer on a deployed build and revisits quality results and open goals. The sprint closes with `REL-09`.],
  [The review leaves time to fix issues and lets the team ask what the customer will need at handoff.],
  [Check a journey the customer cares about, such as moving a booking without emailing the coach. Record which build was tested, who ran the journey, and what happened.],
)

#week(10, "Release and hand over the product",
  [Sprint 10 delivers `REL-10`, the minimum viable product (MVP). The team reruns the active journeys, records the customer’s handoff decision, and writes the final report and project reflection.],
  [The customer needs evidence about the version they receive and enough information to run it and follow up on open work.],
  [Hand over the release, deployment instructions, dashboard access, and known limitations. The weekly customer meetings, from kickoff to handoff, show how the product changed as new evidence came in.],
)

#quiz[
  One participant missed the time-zone control. You make it easier to find after the Sprint 9 review.

  - How would you check whether the change helped users?
  - What would you record when the customer checks the booking journey on the handoff build?
]

#key-takeaways("usability, acceptance, and handoff")[
  - Give participants a realistic task and observe where they hesitate. Retest the changed workflow without coaching them through it.
  - Record who checked each customer journey, the build they used, and the outcome.
  - Give the customer the release, the information needed to run it, and the known limitations.
]

#section("The pilot pitch and final exam")

#discussion[
  Four of five usability test participants booked without help. The panel can introduce the team to coaches who might try the app in their work.

  #example[What would the panel need to hear before making those introductions?]
]

#slide("What do you need more users to learn?")[
  #set text(size: 19pt)

  - *Customer reviews* helped settle the scope and check the journeys the customer cared about.
  - *Usability sessions* showed where participants could complete the task and where they needed help.
  - *A pilot* can show whether the workflow holds up with more people using it in their normal work over time.

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

  *Panel role* · A sponsor who can introduce the team to independent career coaches.

  *Trial* · Five coaches share their links with clients for four weeks. The team onboards the coaches and handles support.

  *Success* · At least four coaches still share the link in week four, and at least 80% of completed consultations are booked without coach help during the trial.

  #v(1fr)
  #example[Could you introduce us to five independent coaches willing to try this for four weeks?]

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
  A panelist says, “Four of five participants booked unaided, so coaches will keep sharing their links.”

  - What does the result actually tell you?
  - What would you measure during the pilot to check whether coaches keep sharing their links?
]

#key-takeaways("the pilot pitch and final exam")[
  - Explain what you observed. Four of five participants booked unaided in a test session.
  - Design the pilot around what you still need to learn. Check how many coaches still share their links in week four.
  - Rehearse one live journey that matters to the pilot users.
  - Ask the panel for one specific action and be ready to explain a quality tradeoff in Q&A.
]
