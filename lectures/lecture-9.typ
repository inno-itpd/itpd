// Presenting Project, converted from tmp/itpd-2025/lectures/lecture-8.pdf.
//
// Conversion notes (numbers refer to slides in the export):
// - All 37 slides keep their order, including the staged discussion and visual reveals.
// - The current lecture layout changes fonts, headings, spacing, and image placement.
//   Slide 1 uses the course title slide and identifies this as Lecture 9 in 2026.
// - Slides 2–4 identify the 2025 logistics, extra points, and investor report as
//   historical. Slide 2 directs students to the current syllabus for the schedule.
//   The public deck omits the link to the 2025 grade report.
// - Slides 3 and 7 expand MVP in the historical and teaching material. The
//   export uses MVP for the pitching examples and 2025 awards, so that term stays.
// - Slides 13–14 use editable Typst charts. Bar values are approximated from the
//   export's geometry, which labels the axes but gives no exact values for the bars.
//   The axis labels use a consistent lowercase k. Slide 14 clarifies the seasonal test.
// - Slide 16 reports the export's attribution to John Adams as such.
// - Slides 20–21, 24, 26, and 32 use labelled links for the original source URLs.
// - Spelling, grammar, capitalization, and punctuation have been lightly edited
//   throughout. Slides 12, 17, 18, 25, 30, and 35 also rephrase parts of the original
//   explanation or simplify its emphasis. Slides 25 and 35 keep the crossed-out word.

#let accent = rgb("#12507b")
#let muted = luma(42%)

#set document(title: "Presenting Project")
#set page(
  width: 10in,
  height: 5.625in,
  margin: (x: 0.55in, y: 0.4in),
  footer: context {
    set text(size: 9pt, fill: luma(55%))
    align(right)[#counter(page).display("1")]
  },
)

#set text(font: "Liberation Sans", size: 15pt, lang: "en")
#set par(leading: 0.65em, spacing: 1.05em)
#set list(indent: 1.2em, body-indent: 0.45em, spacing: 0.7em)
#set heading(numbering: none)

#show heading.where(level: 1): it => {
  text(size: 22pt, weight: "bold", fill: accent)[#it.body]
  v(3pt)
  line(length: 1.05in, stroke: 2pt + accent)
  v(4pt)
}
#show link: it => text(fill: accent)[#it]

#let term(name) = text(weight: "bold", fill: accent)[#name:]
#let note(body) = text(size: 0.9em, fill: muted)[#body]
#let tag(body) = box(
  fill: accent,
  radius: 3pt,
  inset: (x: 5pt, y: 1.5pt),
  text(size: 10pt, weight: "bold", fill: white)[#body],
)

#let slide(title, body, size: 15pt) = {
  pagebreak(weak: true)
  set text(size: size)
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
    #text(size: 34pt, weight: "bold", fill: accent)[Presenting Project]
    #v(0.16in)
    #text(size: 20pt, fill: muted)[Lecture 9, IT Product Development]
  ]
  v(1.42in)
  align(center)[
    #text(size: 14pt, fill: muted)[Innopolis University, 2026]
  ]
}

#let two-columns(left, right, columns: (1fr, 1fr)) = grid(
  columns: columns,
  column-gutter: 20pt,
  align: top,
  left,
  right,
)

#let visual(file, alt, width: 100%, height: auto) = image(
  "images/lecture-9/" + file + ".jpg",
  alt: alt,
  width: width,
  height: height,
  fit: "contain",
)

#let source(url, name) = text(size: 10pt)[Source: #link(url)[#name]]

#let sourced-visual(body, credit) = grid(
  columns: 1,
  row-gutter: 6pt,
  align: center,
  body,
  credit,
)

#let three-act-diagram(width: 100%, height: auto) = visual(
  "three-act-structure",
  "Three-act structure. A first plot point leads from setup into rising action, a second leads to crisis, and falling action leads to resolution.",
  width: width,
  height: height,
)

#let skyfall-image = visual(
  "skyfall",
  "A silhouetted figure stands in the bright opening of a dark tunnel.",
  height: 255pt,
)
#let skyfall-source = source("https://www.007.com/the-films/skyfall/", "Skyfall")
#let scrum-diagram = visual(
  "scrum-diagram",
  "A dense Scrum process illustration with lanes, artifacts, sprint tasks, and handoffs.",
  height: 272pt,
)

#let quarterly-chart() = {
  let plot-width = 275pt
  let plot-height = 180pt
  let label-width = 42pt
  let baseline = 200
  let goal = 600
  let scale = plot-height / (goal - baseline)
  let quarters = (
    ("Q1", 440, rgb("#eeff41")),
    ("Q2", 560, black),
    ("Q3", 320, rgb("#eeeeee")),
    ("Q4", 580, rgb("#78909c")),
  )
  block(width: label-width + plot-width, height: plot-height + 32pt)[
    #for tick in range(baseline, goal + 1, step: 100) {
      let y = 8pt + (goal - tick) * scale
      place(top + left, dx: label-width, dy: y, line(length: plot-width, stroke: 0.75pt + muted))
      place(top + left, dy: y - 6pt, text(size: 11pt, fill: muted, "$" + str(tick) + "k"))
    }
    #for (i, (quarter, value, color)) in quarters.enumerate() {
      let slot-width = plot-width / quarters.len()
      let bar-height = (value - baseline) * scale
      let x = label-width + i * slot-width
      place(
        top + left,
        dx: x + (slot-width - 40pt) / 2,
        dy: 8pt + plot-height - bar-height,
        rect(width: 40pt, height: bar-height, fill: color, stroke: none, radius: 1pt),
      )
      place(
        top + left,
        dx: x,
        dy: 16pt + plot-height,
        box(width: slot-width, align(center, text(size: 11pt, fill: muted, quarter))),
      )
    }
  ]
}

// --- Course status and investor report --------------------------------------

#title-slide()

#slide("Status")[
  #tag[2025 course logistics]
  #v(0.4em)

  - Today is the last lecture.
  - Homework is due at the end of next week.
  - The final presentation is the exam on 20 December 2025, from 14:00 to 16:30 in room 106.
  - Every team needs to attend.
  - Grading is in progress.
  - There is a grade report sheet.

  #note[See the 2026 course syllabus for the current schedule.]
]

#slide("Extra points opportunity")[
  #tag[2025 course awards]
  #v(0.4em)

  - *500 points* for the best minimum viable product (MVP) presentation, voted on by mentors.
  - *500 points* for the best product and MVP presentation, voted on by peers.
  - *500 points* for the investor report.
]

#slide("Investor report")[
  #two-columns(
    [
      #tag[2025 assignment example]
      #v(0.4em)
      You were hired to review the projects and the teams behind them.

      - Why should we hire this team for future projects?
      - How did they show their skills while working on the project?
      - What interesting solutions did they develop? Why should we care?
    ],
    visual("investor-review", "An investor sits in an office surrounded by stacks of documents."),
  )
]

#slide("Investor report")[
  #two-columns(
    [
      *Do not submit:*

      - Generic reports that could apply to any team.
      - Unformatted reports.
      - Reports with no meaningful analysis.
      - A list of links as the entire account of what the team did.
    ],
    visual("investor-report-pitfalls", "An investor leans forward in an office full of documents."),
  )
]

#slide("Investor report")[
  #two-columns(
    [
      - Give specific details about how the team worked on the project.
      - Make the report easy to read.
      - Give it a professional layout.
      - Link to further details.
      - Use screenshots to illustrate your points.
      - Use data to support your claims.
      - Use the product and show that it works.
    ],
    visual("investor-report-evidence", "An investor leans back in a chair in the same office."),
  )
]

// --- Discussion and pitch decks ---------------------------------------------

#slide("Discussion")[
  What happens to minimum viable products (MVPs) when you are done writing code?
]

#slide("Discussion")[
  What happens to MVPs when you are done writing code?

  Who decides whether the project continues?

  How do people judge the team's performance?
]

#slide("Discussion")[
  When do you think a presentation is appropriate?

  What is your approach to creating a presentation?

  How do you make your presentation interesting?

  Do you like making presentations?
]

#slide("Pitch Deck")[
  A pitch deck, also called a start-up or investor pitch deck, is a presentation that helps investors learn more about your business.
]

#slide("Pitch Deck Approach")[
  A good pitch deck is built around these elements.

  - Understandable explanations
  - Focus on the opportunity
  - Relatable examples
  - Visuals
  - Data
  - Story structure
]

#slide("Understandable")[
  Assume your audience is smart and has a short attention span.

  - Use their time well.
  - Back up your claims.
  - Explain unfamiliar IT vocabulary.
]

#slide("Understandable: explain data")[
  #two-columns(
    [Don’t just show this:],
    quarterly-chart(),
  )
]

#slide("Understandable: explain data")[
  #two-columns(
    [
      Our goal was *\$600k per quarter*.

      We ran a different version of the software each quarter. The colors indicate the versions.

      The black and blue bars show the best results.

      We’ll test those versions again in different periods to check for seasonal effects.
    ],
    quarterly-chart(),
  )
]

#slide("Understandable: tools, frameworks, and abbreviations")[
  If you mention a tool or framework, explain

  - what it does
  - why you chose it
  - how it helped you

  Expand each abbreviation the first time you use it.
]

#slide("Opportunity focused")[
  #two-columns(
    [
      “Every problem is an opportunity in disguise.”

      #note[Attributed to John Adams in the 2025 slides.]
    ],
    align(center, visual("john-adams", "Portrait of John Adams, the second US president.", height: 260pt)),
  )
]

#slide("Opportunity focused")[
  You solved a problem and overcame challenges along the way.

  Now the customer can do something they couldn't do before.

  You learned lessons you can apply on future projects.
]

#slide("Relatable")[
  Show the human problem your product solves.

  Tell the story through the people involved.

  Focus on the customer, the users, and your team.
]

#slide("Visual")[
  Visual aids should support the message on the slide.

  Make your slides match your product’s user interface.

  Remove elements that distract from the message.
]

#slide("Visual")[
  #two-columns(
    [Imagine all your visuals being just as:],
    skyfall-image,
    columns: (0.65fr, 1fr),
  )
  #skyfall-source
]

#slide("Visual")[
  #two-columns(
    [
      Imagine all your visuals being just as:

      - Clever
      - Clean
      - Calm
      - Effective
    ],
    skyfall-image,
    columns: (0.65fr, 1fr),
  )
  #skyfall-source
]

#slide("Visual")[
  #align(center, scrum-diagram)
]

#slide("Visual: too many useless details")[
  #align(center, scrum-diagram)
]

#slide("Visual: details that support the message")[
  #sourced-visual(
    visual(
      "airbnb-business-model",
      "An Airbnb pitch slide shows a ten percent commission, 84 million dollars in trips, a 25 dollar average fee, and 200 million dollars in projected revenue.",
      height: 260pt,
    ),
    source("https://slidebean.com/blog/airbnb-pitch-deck", "Airbnb pitch deck"),
  )
]

#slide("Data")[
  “Show me the #strike[money] data.”

  #note[Adapted from a 1996 film.]

  Use data to show what your project achieved.
]

#slide("Data")[
  #sourced-visual(
    visual(
      "simple-mobile-tools",
      "Simple Mobile Tools shows four of its apps and highlights over 70 million downloads, 24 apps, and a 4.6 average rating.",
      height: 260pt,
    ),
    source("https://simplemobiletools.com/", "Simple Mobile Tools"),
  )
]

#slide("Data")[
  Be prepared to explain how you

  - collected the data
  - processed it
  - interpreted the results
]

#slide("Is this enough?")[]

#slide("Is this enough?")[
  What makes a pitch deck interesting?
]

// --- Story structure and review ---------------------------------------------

#slide("Story Structure")[
  Story structure connects the elements of a pitch deck and keeps the audience interested.
]

#slide("Story Structure")[
  “Humans think in stories and we try to make sense of the world by telling stories.”

  #note[Yuval Noah Harari, historian]
]

#slide("Story Structure")[
  #sourced-visual(
    three-act-diagram(height: 260pt),
    source("https://slidebean.com/blog/what-is-a-pitch-deck-presentation-meaning", "Pitch deck structure"),
  )
]

#slide("Story Structure: Setup")[
  #two-columns(
    [
      #term("Introduction") Describe your customer.

      #term("Context") Describe the system as it is today.

      #term("Problem") Introduce the problem.

      #term("First plot point") Show what starts the project. The customer may have an idea and need help to realize it, or your team may propose the idea.
    ],
    three-act-diagram(),
  )
]

#slide("Story Structure: Confrontation")[
  #two-columns(
    [
      #term("Hero") The product.

      #term("Helpers") Your team, the customer, and others who helped.

      Describe how you built the product to solve the problem.

      #term("Second plot point") Describe what enabled success, such as collecting data or gaining a new insight.
    ],
    three-act-diagram(),
  )
]

#slide("Story Structure: Resolution")[
  #two-columns(
    [
      #term("Demo") Show how your product solves the problem.

      #term("Data") Show how well the product works and how much value it delivers.

      #term("Sell") Ask for #strike[money] a grade.

      You can also explain what each team member contributed.
    ],
    three-act-diagram(),
  )
]

#slide("Review")[
  How can you improve your presentation?

  What is a pitch deck?

  What are the components of a good pitch deck?

  Which components will you use for your MVP presentation?

  What is your favorite component, and why?
]

#section("Questions?")
