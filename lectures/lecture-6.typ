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
  - Which problem do entrepreneurs solve for themselves?
  - Why can you afford yourself not to try other product ideas?
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
