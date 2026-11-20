// Lecture 9 of IT Product Development.

#let accent = rgb("#12507b")
#let muted = luma(42%)

#set document(title: "The Product Pitch Deck")
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
#set list(indent: 1.2em, body-indent: 0.45em, spacing: 0.65em)
#set heading(numbering: none)

#show heading.where(level: 1): it => {
  text(size: 25pt, weight: "bold", fill: accent)[#it.body]
  v(3pt)
  line(length: 1.05in, stroke: 2pt + accent)
  v(4pt)
}
#show link: it => text(fill: accent)[#it]

#let note(body) = text(size: 14pt, fill: muted, body)

#let takeaway(body) = block(
  width: 100%, fill: rgb("#edf4f8"), inset: 14pt,
  text(size: 24pt, fill: accent, weight: "bold", body),
)

#let rows(..cells) = grid(
  columns: (145pt, 1fr),
  column-gutter: 18pt,
  row-gutter: 16pt,
  align: top,
  ..cells,
)

#let slide(title, body) = {
  pagebreak(weak: true)
  heading(level: 1, title)
  body
}

#let section(title) = {
  pagebreak(weak: true)
  v(1.55in)
  align(center)[
    #text(size: 32pt, weight: "bold", fill: accent)[#title]
  ]
}

#let title-slide() = {
  pagebreak(weak: true)
  v(1.3in)
  align(center)[
    #text(size: 34pt, weight: "bold", fill: accent)[The Product Pitch Deck]
    #v(0.16in)
    #text(size: 20pt, fill: muted)[Lecture 9, IT Product Development]
  ]
  v(1.42in)
  align(center)[
    #text(size: 14pt, fill: muted)[Innopolis University, 2026]
  ]
}

#let booking-result = grid(
  columns: (auto, 1fr),
  column-gutter: 18pt,
  align: horizon,
  text(size: 46pt, weight: "bold", fill: accent)[4 of 5],
  [participants booked a consultation without help.],
)

#let discussion(scenario, question) = slide("Discussion")[
  #scenario

  #takeaway(question)
]

#let key-takeaways(topic, body) = slide("Key takeaways (" + topic + ")", body)

#let investor-questions = [
  #set text(size: 18pt)
  #set enum(spacing: 0.36em)
  + Who has the problem? How often does it occur, and what does it cost?
  + What do people use today? Why would they switch? Why now?
  + Who could we reach first, how many are there, and how do we reach them?
  + What do the demo and the data establish? What remains uncertain?
  + Who would pay for the product or sustain it, and why?
  + What has this team learned or delivered that earns our confidence?
  + What help does the team need? What result would justify continuing?
]

#let confirmation = block(width: 100%, fill: rgb("#e3f1ec"), inset: 0.8em)[
  *Booking confirmed* #linebreak()
  Tue 8 Dec · 2:00 pm #linebreak()
  Moscow (UTC+3)
]

#let booking-bar(share) = block(width: 100%, height: 18pt, fill: rgb("#e4e9ec"))[
  #block(width: share, height: 18pt, fill: accent)
]

#let pilot-chart = [
  *Share of completed consultations booked without coach help*
  #grid(
    columns: (auto, 1fr, auto), gutter: 12pt, align: horizon,
    [Week 1 · original flow], booking-bar(60%), [6 of 10],
    [Week 2 · revised flow], booking-bar(90%), [9 of 10],
  )
]

#title-slide()

#slide("Agenda")[
  - Audience and Goal
  - The Opportunity
  - The Story and Live Demo
  - What the Evidence Supports
  - How the Product Continues

  #note[Our worked example is a fictional consultation booking app. All figures are illustrative.]
]

#section("Audience and Goal")

#discussion(
  [Imagine a team has just shown you a client booking a consultation online. You know five coaches who could try the app.],
  [What else would you want to know before introducing the team?],
)

#slide("What Must the Pitch Answer?")[
  #investor-questions
  #v(1fr)
  #note[#link("https://sequoiacap.com/article/writing-a-business-plan")[Sequoia’s pitching guide]]
]

#slide("Your Final-Exam Audience")[
  Your course instructors know the project as customers. At the final exam, they hear your seven-minute pitch as investors.

  #takeaway[Why should we back a pilot?]

  Open so someone hearing the pitch for the first time understands who books, what goes wrong today, and why a coach would try the app.

  #v(1fr)
  #note[An early investor pitch can earn a follow-up meeting. #link("https://www.ycombinator.com/blog/practical-design-pitching")[Y Combinator on pitching]]
]

#key-takeaways("Audience and Goal")[
  - Give the panel one claim it can remember. “A client can confirm an appointment in one visit.”
  - Decide what action the evidence warrants. Here the panel could introduce the team to coaches for a pilot.
]

#section("The Opportunity")

#discussion(
  [One coach schedules by message. Another already sends clients a booking link.],
  [Why would the second coach switch? What could make this a good time to change?],
)

#slide("Booking a Consultation Takes Several Messages")[
  An independent career coach offers a time. The client has a conflict. Both check their calendars again.

  #takeaway[The client picks an available slot and gets a confirmation in one visit.]

  The client books. The coach spends time arranging appointments and could pay for the service.
]

#slide("Would a Coach Switch From Another Scheduler?")[
  A coach who already sends a booking link can offer the same one-visit experience.

  #rows(
    [*Reason to switch*], [Ask about the last booking the coach had to fix by hand. Could our app handle that case?],
    [*Reason to act now*], [If renewal is approaching, the coach may be reviewing tools. Check the renewal date and ask what would justify a move.],
  )

  Until a coach reports a reason, switching is an assumption.
]

#slide("How Many Coaches Could We Reach?")[
  #text(size: 38pt, weight: "bold", fill: accent)[About 80 coaches]

  A regional directory lists that many independent coaches offering online consultations. It gives us a place to recruit. Willingness to try the app is still unknown.

  *For your pitch* #linebreak()
  Give one best-effort count or range for your first audience. Say where it came from, what it counts, and whom it leaves out.
]

#key-takeaways("The Opportunity")[
  - Name the person doing the work and the person who could pay for an improvement.
  - Compare your product with the best option available to that person. Explain what makes switching worthwhile and what makes the timing plausible.
  - Size the group you can reach first. Give the source and its limits.
]

#section("The Story and Live Demo")

#discussion(
  [A coach has one appointment left. Two clients choose it at the same time.],
  [What would you need to see to trust the coach’s calendar?],
)

#slide("Two Clients Try to Book the Same Slot")[
  Follow the coach’s last 2:00 pm slot. Open it on two clients’ screens and submit both requests.

  #grid(
    columns: (1fr, 1fr), column-gutter: 16pt,
    block(width: 100%, fill: rgb("#edf4f8"), inset: 15pt)[
      First client #parbreak()
      *2:00 pm confirmed*
    ],
    block(width: 100%, fill: rgb("#edf4f8"), inset: 15pt)[
      Second client #parbreak()
      *Choose another time*
    ],
  )

  Return to the coach’s calendar. Show the single reservation and who holds it.
]

#slide("What Can the Audience Read From the Back Row?")[
  #grid(
    columns: (1fr, 1fr), gutter: 18pt,
    [
      *Full booking screen*
      #block(width: 100%, stroke: 0.6pt + muted, inset: 9pt)[
        #set text(size: 11pt)
        *Career consultations* #h(1fr) My bookings

        #line(length: 100%, stroke: 0.5pt + muted)
        #grid(columns: (auto, 1fr), gutter: 12pt,
          [Overview #linebreak() Calendar #linebreak() Settings],
          [Upcoming appointment #parbreak() #confirmation],
        )
      ]
    ],
    [
      *Confirmation detail*
      #set text(size: 18pt)
      #confirmation
    ],
  )

  The time, time zone, and confirmation status establish what the client booked. Use a crop that the panel can read while you speak.

  #v(1fr)
  #note[#link("https://www.ycombinator.com/blog/guide-to-demo-day-pitches")[Y Combinator on slide design and delivery]]
]

#slide("Why the Team Waits Before Confirming")[
  #rows(
    [*Risk*], [Both clients could see the slot as available before either finishes booking.],
    [*Decision*], [The database accepts one reservation per slot. A client sees confirmation only after the reservation succeeds.],
    [*Cost*], [A client who loses their connection must wait to confirm.],
  )

  Be ready to show how you tested simultaneous requests. That gives the panel evidence beyond the single run it saw.
]

#key-takeaways("The Story and Live Demo")[
  - Follow one person through a workflow where the outcome matters.
  - Give each slide one claim. Show the detail that lets the audience check it.
  - Explain a team decision in plain language, including its cost. Keep the design and test evidence ready for questions.
]

#section("What the Evidence Supports")

#slide("Discussion")[
  #booking-result

  #takeaway[What can we claim today? What would we still need to learn before a rollout?]
]

#slide("What Did the Usability Test Show?")[
  #booking-result

  The fifth participant missed the time-zone control.

  #takeaway[Make the time zone easier to find, then retest.]

  Even if all five succeed next time, repeat use and willingness to pay remain open questions.
]

#slide("Did the New Booking Flow Help?")[
  #pilot-chart

  How would you explain the change to the panel?

  #v(1fr)
  #note[Hypothetical future pilot. These figures are for interpreting the chart.]
]

#slide("Did the New Booking Flow Help?")[
  #pilot-chart

  #set text(size: 17pt)
  Coaches logged each intervention. We counted completed consultations booked without help and divided by all completed consultations that week.

  Different coaches took part each week. The higher share could reflect the revised flow, the coaches, or their clients.

  #v(1fr)
  #note[Next test: compare both flows with the same coaches, assigning clients at random during the same period.]
]

#key-takeaways("What the Evidence Supports")[
  - Tell the panel who took part, what you counted, and how you calculated the measure.
  - Interpret the result against a baseline or target when you have one. Consider what else could explain the difference.
  - State what you learned and the next decision it supports. Apply this to usability, product analytics, and quality requirement tests.
]

#section("How the Product Continues")

#discussion(
  [Suppose clients book successfully in week one. By week three, coaches have stopped sharing the link.],
  [Would you expand the pilot? What would you ask the coaches first?],
)

#slide("Who Would Put Money Into This?")[
  #rows(
    [*Buyer*], [What would someone pay for? Would a coach pay for managed hosting if it saved them time keeping the service running?],
    [*Sponsor*], [Which department would fund an internal tool? Show how it could save staff time or reduce errors.],
    [*Investor*], [In a fundraising pitch, name the amount, what it buys, and the milestone it funds.],
  )

  #v(1fr)
  #note[#link("https://www.ycombinator.com/library/2u-how-to-build-your-seed-round-pitch-deck")[Y Combinator’s seed deck guide]]
]

#slide("What Would Sustain Your Product?")[
  Explain who benefits enough to keep the product running.

  #rows(
    [*Open source*], [Creators can sell hosting or support, attract contributors, or share maintenance.],
    [*Open core*], [Offer an open-source scheduler with a paid extension. Would coaching practices pay for shared calendars?],
    [*Proprietary*], [A company could keep future versions private and fund them through an internal budget or subscriptions.],
  )

  #v(1fr)
  #note[#link("https://opensource.org/faq")[Open Source Initiative FAQ] · #link("https://gitlab.com/gitlab-com/content-sites/handbook/-/blob/228e22856732c6dd6c5ec83ed68b442681b76ce0/content/handbook/company/stewardship.md")[GitLab’s open-core model]]
]

#slide("What Would the Pilot Tell Us?")[
  #takeaway[Five coaches try the app for four weeks of real consultations.]

  Each week, count how many coaches share the link and what share of completed consultations clients booked unaided.

  If coaches stop sharing, ask about the last consultation they arranged another way. Investigate the obstacle before expanding. If use persists, ask whether the benefit justifies paying for the service.
]

#slide("Rehearse With Someone New to the Project")[
  #investor-questions
  #v(1fr)
  #note[At home, time all seven minutes, including the live demo, evidence, and ask. Then have a listener answer these questions from memory.]
]

#key-takeaways("How the Product Continues")[
  - Explain who gains enough value to keep the product running.
  - Name the question a pilot could settle and how the answer would change your plans.
  - Close with a request the panel can act on.

  #takeaway[“Could you introduce us to five independent coaches willing to try this for four weeks?”]
]
