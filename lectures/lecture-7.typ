// Usability testing, lecture 7 of the IT Product Development course.
//
// Converted by hand from tmp/itpd-2025/lectures/lecture-7.pdf (21 slides).
// The deck follows the export slide for slide, in the same order, with these
// deviations recorded on purpose:
//   - The title slide follows the pattern of the other decks: the export's
//     "Product Development" subtitle becomes "Lecture 7, IT Product
//     Development", and Innopolis University, 2026 is added.
//   - An Agenda slide and four section dividers are new. The export has no
//     agenda and no section breaks; every source slide still has its own page.
//   - The source's opening and closing Review slides keep the title "Review"
//     rather than becoming Quiz slides, because the source uses them to recap.
//   - The table on source slide 14 is redrawn as a Typst table.
//   - The cycle diagram on slide 4, the SEQ and ASQ scales on slides 10 and
//     11, the SUS response format on slide 12, and the SUS percentile chart on
//     slide 18 are the JPEGs extracted with pdfimages -j, committed under
//     images/lecture-7/.
//   - The wording is copy-edited lightly: "background" becomes "backgrounds",
//     "Ctrl-F key" becomes "the Ctrl-F key", "Match user" becomes "Match each
//     user", and the below-average sentence becomes "A score below 68 is
//     considered ...". The questions, survey items, scales, and numbers are
//     unchanged.

#let accent = rgb("#12507b")
#let muted = luma(42%)

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
#set enum(indent: 1.2em, body-indent: 0.45em, spacing: 0.4em)
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

// Titles are passed as strings, not markup content, on purpose.
// A markup title like [1. Meeting booking app] is parsed as an enumeration
// item, so Typst renders "1." as a list marker and indents the heading.
// The parameter is deliberately left un-annotated: a type annotation makes the
// parameter named-only in Typst 0.15, so the call sites have to be f(title: ...).
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
    #text(size: 34pt, weight: "bold", fill: accent)[Usability testing]
    #v(0.16in)
    #text(size: 20pt, fill: muted)[Lecture 7, IT Product Development]
  ]
  v(1.42in)
  align(center)[
    #text(size: 14pt, fill: muted)[Innopolis University, 2026]
  ]
}

// --- Title and agenda -------------------------------------------------------

#title-slide()

#slide("Agenda")[
  - Usability testing
  - Running the test
  - Post-test surveys
  - Analyzing the results
]

// --- Usability testing ------------------------------------------------------

#section("Usability testing")

#slide("Review")[
  What is usability?

  Why do you think you need to test it?

  When you were building your app, did you think about affordances?

  What are Gibson affordances? (Exploratory actions)

  What are Norman affordances? (Correct usability)
]

#slide("Usability testing")[
  #term[Action]
  - Evaluate a product or service by testing it with representative users.

  #term[Goal]
  - Identify any usability problems.

  #term[How]
  - Collect qualitative and quantitative data.
  - Determine the participant's satisfaction with the product.
]

#slide("Usability testing: focus")[
  #grid(
    columns: (0.45fr, 1fr),
    column-gutter: 18pt,
    [
      #term[Focus on]
      - Measure
      - Data
      - Learn
    ],
    image("images/lecture-7/product-development-cycle.jpg", height: 265pt),
  )
]

#slide("Usability testing process outline")[
  + Run pre-test survey
  + Run experiment (test)
  + Collect data
  + Run post-test survey
  + Organize
  + Interpret and analyze
  + Learn
]

// --- Running the test -------------------------------------------------------

#section("Running the test")

#slide("Pre-test survey")[
  The goal is to understand the person and compare results between users with
  similar backgrounds after the tests.

  A basic "Please, tell us about yourself" will do, but try to get more
  specific details that matter for your application.
]

#slide("Run experiment")[
  Give users an ability to use the system without interruptions.

  No guidance, help, or user manual is given to the user.
]

#slide("Collect data")[
  It is best if you have automatic action data collection.

  You can observe what the user does and take notes.
]

// --- Post-test surveys ------------------------------------------------------

#section("Post-test surveys")

#slide("Post-test survey")[
  *Survey frameworks:*
  - Single Ease Question (SEQ)
  - After-Scenario Questionnaire (ASQ)
  - System Usability Scale (SUS)
  - Open-ended questions
]

#slide("Single Ease Question (SEQ)")[
  #v(0.25in)
  #align(center)[
    #text(size: 18pt)[Overall, how difficult or easy was the task to complete?]
  ]
  #v(0.35in)
  #align(center, image("images/lecture-7/seq-scale.jpg", width: 92%))
]

#slide("After-Scenario Questionnaire (ASQ)")[
  + Overall, I am satisfied with the ease of completing the task in this scenario.
  + Overall, I am satisfied with the amount of time it took to complete the task in this scenario.
  + Overall, I am satisfied with the support information (online help, messages, documentation) when completing the task.

  #v(0.15in)
  #align(center, image("images/lecture-7/asq-scale.jpg", width: 92%))
]

#slide("System Usability Scale (SUS)")[
  *Standard 10 questions in order:*
  + I think that I would like to use this system frequently.
  + I found the system unnecessarily complex.
  + I thought the system was easy to use.

  #note[…]

  With the following response format:

  #align(center, image("images/lecture-7/sus-response-format.jpg", width: 55%))

  Source and details: #link("https://measuringu.com/sus/")[https://measuringu.com/sus/]
]

#slide("Open-ended questions")[
  The goal is to fill in missing context.

  When preparing questions, use the approaches that we discussed:
  - ORID
  - "The Mom Test"
]

// --- Analyzing the results --------------------------------------------------

#section("Analyzing the results")

#slide("Organize: observation")[
  #table(
    columns: (1fr, 1fr),
    inset: (x: 8pt, y: 6pt),
    stroke: 0.5pt + luma(70%),
    fill: (x, y) => if y == 0 { luma(95%) } else { none },
    [*Exploratory actions / Gibson affordances*],
    [*Correct usability / Norman affordances*],
    [The user was using the Ctrl-F key to get to the "search" feature],
    [The user saw the search bar on the interface and used it],
    [#text(fill: muted)[…]],
    [#text(fill: muted)[…]],
  )
]

#slide("Organize: match user")[
  Match each user to the corresponding:
  - pre-test survey
  - specific experiment
  - observation
  - post-test survey
]

#slide("Interpret and analyze: example")[
  *Interpreting SUS results:*

  By adding the scores together you get a 0-40 scale.

  To convert it to 0-100, multiply by 2.5.

  The result *is not a percentage!*
]

#slide("Interpret and analyze: example")[
  *Interpreting SUS results:*

  The average score, based on 500+ case studies, is

  #align(center)[*68 points = 50 percentile*]

  A score below 68 is considered below average, or below 50%, and vice versa.
]

#slide("Interpret and analyze: example")[
  #align(center, image("images/lecture-7/sus-percentile.jpg", width: 72%))
]

#slide("Learn")[
  Write down what you have learned after interpreting and analyzing the results.
]

// --- Review and close -------------------------------------------------------

#slide("Review")[
  What is usability?

  Why do you think you need to test it?

  What do we focus on in usability testing?

  Describe the usability testing process.

  Describe the surveys that we can use.

  What is SUS?

  How do we interpret SUS results?
]

#pagebreak(weak: true)
#v(1.4in)
#align(center)[
  #text(size: 28pt, weight: "bold", fill: accent)[Questions?]
]
