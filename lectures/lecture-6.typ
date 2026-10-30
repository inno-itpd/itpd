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
#set list(indent: 1.2em, body-indent: 0.45em, spacing: 0.6em)
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

// A citation links the bracketed key it prints to the key's labelled entry
// on the References slide; rest carries the locator some citations write
// beside the key, as in [Bck, Ch. 20].
#let cite(key, rest: "") = link(label(key))[\[#key#rest\]]

// A quotation drawn rather than marked, from lecture-2.typ.
#let quoted(body) = block(
  width: 100%,
  inset: (x: 14pt, y: 3pt),
  stroke: (left: 2pt + luma(70%)),
  text(size: 0.95em, fill: muted)[#body],
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
  v(1in)
  align(center)[
    #text(size: 34pt, weight: "bold", fill: accent)[Hypothesis-driven #linebreak() product development]
    #v(0.16in)
    #text(size: 20pt, fill: muted)[Lecture 6, IT Product Development]
  ]
  v(1.42in)
  align(center)[
    #text(size: 14pt, fill: muted)[Innopolis University, 2026]
  ]
}

// Every section opens with a quiz and closes with its Key Takeaways slide.
#let quiz(body) = slide("Quiz")[#body]

#let key-takeaways(body) = slide("Key takeaways")[#body]

// differential testing - caveat: lean version may not capture the intent
// TODO link paper about lean verification of natural-language math proofs

#title-slide()

#slide("Agenda")[
  - Hypothesis-driven entrepreneurship
  - Product analytics
  - Observability
]

#section("Hypothesis-driven entrepreneurship")

#quiz[
  - Which problem are you solving for yourself by building a product in the ITPD course?
  - Which problem do entrepreneurs solve for themselves by building products?
  - Why can you afford yourself not to try other product ideas in the ITPD course?
]

#slide("Hypothesis-driven entrepreneurship")[
  The goal is to fail fast and to not waste resources on the wrong direction.

  ---

  From #link("https://www.hbs.edu/faculty/Pages/item.aspx?num=41302")[Hypothesis-Driven Entrepreneurship]:

  #show quote: set block(spacing: 1em)

  #quote(block: true)[
    "Lean startups" use hypothesis-driven approach to evaluate entreprenerial opportunities.

    They state falsifiable hypotheses about their business model and test them using MVPs.

    Based on test feedback (quantitative and qualitative data), they decide whether to *keep* the business model, to *pivot* by updating the model, or to *abandon* the model.
  ]
]

#slide("Hypothesis example")[
  #show quote: set block(spacing: 1em)

  #quote(block: true)[
    *Willingness to pay (viability)*:

    - *Belief*: We believe coaches will pay 500 RUB a month to stop scheduling meetings by hand.
    - *Test*: paid online meeting booking service pilot offered to the 20 coaches who finish onboarding.
    - *Falsified if*: fewer than 3 accept the pilot, or more than half cancel within four weeks.

  ]
]

#slide("Lean startup cycle")[
  #figure(
    image("images/lecture-6/lean-startup-circle.png", height: 70%),
    caption: "Ries' Lean startup, "
      + link("https://blog.babak.no/2016/11/07/six-management-ideas-applied-to-research-leadership/")[source],
  )
]

#key-takeaways[
  - Make testable hypotheses so that you can set up experiments.
  - Plan experiments and learn from them, don't just try things.
]

#section("Product analytics")

#quiz[

]

#slide("Product analytics")[

]

#section("Observability")

#quiz[

]

// TODO supporting product analytics with observability

#slide("Observability")[

]

#key-takeaways[

]


// --- References (source slide 34) -------------------------------------------

// TODO revise

#slide("References")[
  #set text(size: 12.5pt)


]
