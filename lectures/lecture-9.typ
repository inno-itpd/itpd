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

#title-slide()

#slide("Agenda")[
  - Audience and Goal
  - The Opportunity
  - The Story and Live Demo
  - What the Evidence Supports
  - How the Product Continues
]

#section("Audience and Goal")

#slide("What Does a Pitch Deck Do?")[
  A pitch deck gives the audience a reason to take a next step.

  #rows(
    [*Understand*], [Whose problem does the product solve?],
    [*Believe*], [What makes the opportunity worth pursuing? Why can this team deliver?],
    [*Act*], [What decision can the audience make today?],
  )

  #v(1fr)
  #note[An early investor pitch can earn a follow-up meeting. #link("https://www.ycombinator.com/blog/practical-design-pitching")[Y Combinator on pitching]]
]

#slide("Your Final-Exam Audience")[
  Your course instructors have heard your ideas as customers. At the final exam, they will hear your pitch as investors.

  #takeaway[Why should we back a pilot?]

  Use your seven minutes to show the problem, demonstrate the working product, and explain what your evidence justifies.
]

#section("The Opportunity")

#slide("What Investors Want to Know")[
  #rows(
    [*Pain*], [Who faces this problem? How often? What does it cost them?],
    [*Alternatives*], [What do people do today? Why would they switch now?],
    [*Reach*], [Who would adopt first? How many are there, and how can you reach them?],
    [*Team*], [What has your team built or learned that makes it credible?],
  )

  #v(1fr)
  #note[#link("https://sequoiacap.com/article/writing-a-business-plan")[Sequoia’s pitching guide]]
]

#slide("Booking a Consultation Takes Several Messages")[
  An independent career coach offers a time. The client has a conflict. Both check their calendars again.

  #takeaway[The client picks an available slot and gets a confirmation in one visit.]

  The client books. The coach manages availability and could pay for the service.

  #v(1fr)
  #note[The booking app and its figures are illustrative throughout.]
]

#slide("How Many Coaches Could We Reach?")[
  #text(size: 38pt, weight: "bold", fill: accent)[About 80 coaches]

  A regional directory lists that many independent coaches offering online consultations. It gives us a place to recruit. Willingness to try the app is still unknown.

  *For your pitch* #linebreak()
  Give one best-effort count or range for your first audience. Say where it came from, what it counts, and whom it leaves out.
]

#section("The Story and Live Demo")

#slide("Follow One Person Through the Story")[
  #rows(
    [*Problem*], [A client wants a consultation. Finding a time takes several messages.],
    [*Product*], [Show that client choosing a time and receiving a confirmation.],
    [*Next step*], [Use the test results to explain why the team wants to try this with working coaches.],
  )
]

#slide("Give Each Slide One Job")[
  Write a title the audience can repeat.

  #takeaway[Clients can book without messaging the coach.]

  Show the booking confirmation. Crop the screen so the time and status are legible. Explain unfamiliar terms aloud.

  #v(1fr)
  #note[#link("https://www.ycombinator.com/blog/guide-to-demo-day-pitches")[Y Combinator on slide design and delivery]]
]

#slide("Two Clients Try to Book the Same Slot")[
  Demonstrate what happens when two clients choose 2:00 pm.

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

  The first booking stands. A quality requirement test can check whether that guarantee holds when both requests arrive together.
]

#slide("Explain a Technical Tradeoff")[
  #rows(
    [*Guarantee*], [Two clients cannot hold the same slot.],
    [*How it works*], [The database accepts one reservation per slot. The app confirms only after it succeeds.],
    [*Tradeoff*], [A client who loses their connection must wait to confirm.],
  )

  Choose a tradeoff that affects users, reliability, or operating cost. Keep the architecture details ready for Q&A.
]

#section("What the Evidence Supports")

#slide("What Did the Usability Test Show?")[
  #booking-result

  #v(1fr)
  #note[Illustrative usability test of the booking app.]
]

#slide("What Did the Usability Test Show?")[
  #booking-result

  The fifth participant missed the time-zone control.

  #takeaway[Make the time zone easier to find, then retest.]

  A pilot can tell us whether coaches keep using the app in their regular work.
]

#slide("Give the Audience a Conclusion")[
  #rows(
    [*Context*], [Who did what, under which conditions?],
    [*Meaning*], [What does the result support? Compare it with a baseline or target when you have one.],
    [*Limit*], [What is still unknown, such as repeat use or willingness to pay?],
    [*Decision*], [What will you change or test next?],
  )

  #v(1fr)
  #note[Use the same questions for product analytics and quality requirement tests.]
]

#section("How the Product Continues")

#slide("Who Would Put Money Into This?")[
  #rows(
    [*Buyer*], [What would someone pay for? A coach might pay to have the team run the booking service.],
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
  #takeaway[Five coaches use the MVP for four weeks of real consultations.]

  *Will clients book on their own?* Track the share of consultations they book unaided and when coaches step in.

  *Will coaches keep using it?* Compare weekly use. Decide whether to expand the pilot or change the workflow.
]

#slide("Close With a Request the Panel Can Act On")[
  #takeaway[“Could you introduce us to five independent coaches willing to try this for four weeks?”]

  Ask for the introductions, access, or resources your pilot needs.

  #v(1fr)
  #note[At home, rehearse the seven-minute pitch with the live demo. Leave time for the evidence and the ask.]
]
