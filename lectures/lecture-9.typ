// Lecture 9 of IT Product Development.

#let accent = rgb("#12507b")
#let muted = luma(42%)

#set document(title: "The product pitch deck")
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
  width: 100%,
  fill: rgb("#edf4f8"),
  inset: 14pt,
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
    #text(size: 34pt, weight: "bold", fill: accent)[The product pitch deck]
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
  text(size: 46pt, weight: "bold", fill: accent)[4 of 5], [participants booked a consultation without help.],
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
    columns: (auto, 1fr, auto),
    gutter: 12pt,
    align: horizon,
    [Week 1 · original flow], booking-bar(60%), [6 of 10],
    [Week 2 · revised flow], booking-bar(90%), [9 of 10],
  )
]

#title-slide()

#slide("Agenda")[
  - Audience and goal
  - The opportunity
  - The story and live demo
  - What the evidence supports
  - How the product continues

  #note[Our worked example is a fictional consultation booking app. All figures are illustrative.]
]

#section("Audience and goal")

#slide("What is a pitch deck?")[
  A *pitch deck* is a short set of slides that makes the case for a product and asks a particular *audience to take a next step*.

  - A team meeting an investor for the first time might want a second meeting.

  - A team raising money might ask for funding to reach its next milestone.

  #takeaway[What do you want this audience to do, and what evidence would give them a reason to say yes?]

  #v(1fr)
  #note[#link("https://www.ycombinator.com/blog/practical-design-pitching")[Y Combinator on pitching]]
]

#slide("Your final-exam audience")[
  Choose a role for the panel that can act on your pilot request. In the booking app example, the panel represents investors who know independent coaches.

  For this lecture, assume you want their help starting a *pilot*. A pilot is a limited trial in which a small group uses your product in its everyday work for a set period.

  ---

  The booking team asks:

  #takeaway[Would you introduce us to coaches who could try the app for four weeks of real bookings?]
]

#discussion(
  [As an investor, imagine a team has just shown you a client booking a consultation online.

    You know five coaches who could try the app.],
  [What else would you want to know before introducing the team?],
)

#slide("What must the pitch answer?")[
  #investor-questions
  #v(1fr)
  #note[#link("https://sequoiacap.com/article/writing-a-business-plan")[Sequoia’s pitching guide]]
]

#key-takeaways("audience and goal")[
  - Open so a first-time listener understands who books, what goes wrong today, and why a coach would try the app.
  - Give the panel one claim it can remember. “A client can confirm an appointment in one visit.”
  - Decide what action the evidence warrants. Here the panel could introduce the team to coaches for a pilot.
]

#section("The opportunity")

#discussion(
  [One coach schedules by message. Another already sends clients a booking link.],
  [Why would the second coach switch? What could make this a good time to change?],
)

#slide("Booking a consultation takes several messages")[
  An independent career coach offers a time. The client has a conflict. Both check their calendars again.

  #takeaway[The client picks an available slot and gets a confirmation in one visit.]

  The client books. The coach spends time arranging appointments and could pay for the service.
]

#slide("Would a coach switch from another scheduler?")[
  A coach who already sends a booking link can offer the same one-visit experience.

  #rows(
    [*Reason to switch*],
    [Ask about the last booking the coach had to fix by hand. Could our app handle that case?],
    [*Reason to act now*],
    [If renewal is approaching, the coach may be reviewing tools. Check the renewal date and ask what would justify a move.],
  )

  Until a coach reports a reason, switching is an assumption.
]

#slide("How many coaches could we reach?")[
  #text(size: 38pt, weight: "bold", fill: accent)[About 80 coaches]

  A regional directory lists that many independent coaches offering online consultations. It gives us a place to recruit. Willingness to try the app is still unknown.

  *For your pitch* #linebreak()
  Explain how you could reach your first users. If you give a count or range, say where it came from, what it counts, and whom it leaves out.
]

#key-takeaways("the opportunity")[
  - Name the person doing the work and the person who could pay for an improvement.
  - Compare your product with the best option available to that person. Explain what makes switching worthwhile and what makes the timing plausible.
  - Identify a group you can reach first. If you estimate its size, give the source and its limits.
]

#section("The story and live demo")

#discussion(
  [A coach has one appointment left. Two clients choose it at the same time.],
  [What would you need to see to trust the coach’s calendar?],
)

#slide("Two clients try to book the same slot")[
  Follow the coach’s last 2:00 pm slot. Open it on two clients’ screens and submit both requests.

  #grid(
    columns: (1fr, 1fr),
    column-gutter: 16pt,
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

#slide("What can the audience read from the back row?")[
  #grid(
    columns: (1fr, 1fr),
    gutter: 18pt,
    [
      *Full booking screen*
      #block(width: 100%, stroke: 0.6pt + muted, inset: 9pt)[
        #set text(size: 11pt)
        *Career consultations* #h(1fr) My bookings

        #line(length: 100%, stroke: 0.5pt + muted)
        #grid(
          columns: (auto, 1fr),
          gutter: 12pt,
          [Overview #linebreak() Calendar #linebreak() Settings], [Upcoming appointment #parbreak() #confirmation],
        )
      ]
    ],
    [
      *Confirmation detail*
      #set text(size: 18pt)
      #confirmation
    ],
  )

  The time, time zone, and confirmation status establish what the client booked. 
  
  Tip: Use a crop that the panel can read while you speak.

  #v(1fr)
  #note[#link("https://www.ycombinator.com/blog/guide-to-demo-day-pitches")[Y Combinator on slide design and delivery]]
]

#slide("Why the team waits before confirming")[
  #rows(
    [*Risk*],
    [Both clients could see the slot as available before either finishes booking.],
    [*Decision*],
    [The database accepts one reservation per slot. A client sees confirmation only after the reservation succeeds.],
    [*Cost*],
    [A client who loses their connection must wait to confirm.],
  )

  Be ready to show how you tested simultaneous requests. That gives the panel evidence beyond the single run it saw.
]

#key-takeaways("the story and live demo")[
  - Follow one person through a workflow where the outcome matters.
  - Give each slide one claim. Show the detail that lets the audience check it.
  - Explain a team decision in plain language, including its cost. Keep the design and test evidence ready for questions.
]

#section("What the evidence supports")

#slide("Discussion")[
  #booking-result

  #takeaway[What can we claim today? What would we still need to learn before a rollout?]
]

#slide("What did the usability test show?")[
  #booking-result

  The fifth participant missed the time-zone control.

  #takeaway[Make the time zone easier to find, then retest.]

  Even if all five succeed next time, repeat use and willingness to pay remain open questions.
]

#slide("Did the new booking flow help?")[
  #pilot-chart

  How would you explain the change to the panel?

  #v(1fr)
  #note[Hypothetical future pilot. These figures are for interpreting the chart.]
]

#slide("Did the new booking flow help?")[
  #pilot-chart

  #set text(size: 17pt)
  Coaches logged each intervention. We counted completed consultations booked without help and divided by all completed consultations that week.

  Different coaches took part each week. The higher share could reflect the revised flow, the coaches, or their clients.

  #v(1fr)
  #note[Next test: compare both flows with the same coaches, assigning clients at random during the same period.]
]

#key-takeaways("what the evidence supports")[
  - Tell the panel who took part, what you counted, and how you calculated the measure.
  - Interpret the result against a baseline or target when you have one. Consider what else could explain the difference.
  - State what you learned and the next decision it supports. Apply this to usability, product analytics, and quality requirement tests.
  
  ---
  
  Important: don't just show data, interpret it to your advantage.
]

#section("How the product continues")

#discussion(
  [Suppose clients book successfully in week one. By week three, coaches have stopped sharing the link.],
  [Would you expand the pilot? What would you ask the coaches first?],
)

#slide("Who would put money into this?")[
  #rows(
    [*Buyer*],
    [What would someone pay for? Would a coach pay for managed hosting if it saved them time keeping the service running?],
    [*Sponsor*],
    [Which department would fund an internal tool? Show how it could save staff time or reduce errors.],
    [*Investor*],
    [In a fundraising pitch, name the amount, what it buys, and the milestone it funds.],
  )

  #v(1fr)
  #note[#link(
    "https://www.ycombinator.com/library/2u-how-to-build-your-seed-round-pitch-deck",
  )[Y Combinator’s seed deck guide]]
]

#slide("What would sustain your product?")[
  Explain who benefits enough to keep the product running.

  #rows(
    [*Open source*],
    [Creators can sell hosting or support, attract contributors, or share maintenance.],
    [*Open core*],
    [Offer an open-source scheduler with a paid extension. Would coaching practices pay for shared calendars?],
    [*Proprietary*],
    [A company could keep future versions private and fund them through an internal budget or subscriptions.],
  )

  #v(1fr)
  #note[#link("https://opensource.org/faq")[Open Source Initiative FAQ] · #link("https://gitlab.com/gitlab-com/content-sites/handbook/-/blob/228e22856732c6dd6c5ec83ed68b442681b76ce0/content/handbook/company/stewardship.md")[GitLab’s open-core model]]
]

#slide("What would the pilot tell us?")[
  #takeaway[Five coaches try the app for four weeks of real consultations.]

  Each week, count how many coaches share the link and what share of completed consultations clients booked unaided.

  If coaches stop sharing, ask about the last consultation they arranged another way. Investigate the obstacle before expanding. If use persists, ask whether the benefit justifies paying for the service.
]

#slide("Rehearse with someone new to the project")[
  #investor-questions
  #v(1fr)
  #note[At home, time all seven minutes, including the live demo, evidence, and ask. Then have a listener answer these questions from memory.]
]

#key-takeaways("how the product continues")[
  - Explain who gains enough value to keep the product running.
  - Name the question a pilot could settle and how the answer would change your plans.
  - Close with a request the panel can act on.

  #takeaway[“Could you introduce us to five independent coaches willing to try this for four weeks?”]
]
