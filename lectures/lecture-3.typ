// Planning, lecture 3 of the IT Product Development course.
//
// Converted from the 2025 slides export tmp/itpd-2025/lectures/lecture-2.1.pdf,
// 18 slides at 720 x 405 pt. Each slide of the export is one slide here, in the
// same order, and the section comments below name the source slides.
//
// Deviations from the export, on purpose:
//   - The title slide adds "Innopolis University, 2026", as lecture-1.typ does.
//   - Source slides 5-16 title every slide "Strategic", "Tactical", or
//     "Planning" and put the topic in a first line beneath it. Here the topic
//     is in the slide title, as "Strategic: define success", so the heading
//     says which slide it is.
//   - The navigation app screenshots on source slides 4 and 11 are the
//     export's own JPEGs, extracted with pdfimages -j and committed under
//     images/lecture-3/. They sit below the slide title rather than beside it.
//   - The "Warning!" lines on source slides 7 and 16 are the warn() callout
//     from lecture-2.typ.
//   - Source slide 16 reads "what works best for: the specific team, what
//     works for your project, ...". The list items are made parallel:
//     "your team", "your project", "the tactical requirements".
//   - Source slide 17 is titled "Review". It is "Quiz" here, the name
//     lecture-2.typ gives its review-questions slides, because "Review" is
//     also the topic of source slide 14.
//   - The agenda keeps "Expectations", although no slide of the export covers
//     it; the lecturer speaks to it.
//   - Three small grammar fixes: "provide an explanation" on slide 16, a colon
//     ending the lead sentence on slide 15, and a full stop after the
//     warning on slide 7.
//   - Wording is otherwise unchanged, including "Iteration demo" rather than a
//     Scrum term: the deck introduces Scrum only as one tactical framework.
//   - The helpers warn() and quiz() are copied from lecture-2.typ. The other
//     six are copied unchanged from lecture-1.typ.

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
#set list(indent: 1.2em, body-indent: 0.45em, spacing: 0.4em)
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

// The content argument of block() is markup, so the label and the body are
// built inside a trailing content block rather than in code mode.
#let warn(body) = block(
  width: 100%,
  fill: luma(93%),
  stroke: (left: 3pt + accent),
  inset: (x: 10pt, y: 5pt),
  radius: 2pt,
  [
    #text(weight: "bold", fill: accent)[Warning!] #body
  ],
)

// Titles are passed as strings, not markup content, on purpose.
// A markup title like [1. Meeting booking app] is parsed as an enumeration
// item, so Typst renders "1." as a list marker and indents the heading.
// The parameter is deliberately left un-annotated: a type annotation makes the
// parameter named-only in Typst 0.15, so the call sites have to f(title: ...).
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

// Rebuilt from source slide 1: the title, the course name as a subtitle,
// and the institution.
#let title-slide() = {
  pagebreak(weak: true)
  v(1.3in)
  align(center)[
    #text(size: 34pt, weight: "bold", fill: accent)[Planning]
    #v(0.16in)
    #text(size: 20pt, fill: muted)[IT Product Development]
  ]
  v(1.42in)
  align(center)[
    #text(size: 14pt, fill: muted)[Innopolis University, 2026]
  ]
}

#let quiz(body) = slide("Quiz")[#body]

// --- Title, agenda, and discussion (source slides 1-3) ----------------------

#title-slide()

#slide("Agenda")[
  - Discussion questions
  - Types of planning
  - Strategic
  - Tactical
  - Expectations
]

#slide("Discussion questions")[
  What is planning?

  Why do people plan?

  How do you plan to plan? :)

  What types of planning do you know?
]

// --- Types of planning (source slides 4-5) ----------------------------------

#slide("Strategic")[
  #grid(
    columns: (1fr, auto, auto),
    column-gutter: 14pt,
    [One way to remember what you need from a strategic plan is to think of a navigation app.],
    image("images/lecture-3/route-overview.jpg", height: 255pt),
    image("images/lecture-3/route-legs.jpg", height: 255pt),
  )
]

#slide("Planning")[
  #grid(
    columns: (1fr, 1fr),
    gutter: 24pt,
    [
      *Strategic*
      - Long term (more than 4 iterations)
      - Achieve goals
      - Keep in mind the threshold of success
    ],
    [
      *Tactical*
      - Situational
      - Short term
    ],
  )
]

// --- Strategic (source slides 6-10) -----------------------------------------

#slide("Strategic")[
  - Define success
  - Develop a roadmap
  - Monitor progress
  - Make contingency plans
]

#slide("Strategic: define success")[
  - Be realistic
  - Make it testable
  - Make sure all stakeholders agree

  #warn[80% of pain comes from skipping this step.]
]

#slide("Strategic: develop a roadmap")[
  - Decompose how to achieve success into steps
  - Find a "zoom level" that works for your project
]

#slide("Strategic: monitor progress")[
  - Where are we in the project right now?
  - How much was done?
  - How much more do we have to do?
  - Are we on track to make deadlines?
  - Are we on track to complete promised deliverables?
]

#slide("Strategic: make contingency plans")[
  - Think of multiple options
  - Define alternative solutions
  - Identify "point of no return" decisions
  - Identify risks
]

// --- Tactical (source slides 11-16) -----------------------------------------

#slide("Tactical: requirements")[
  #grid(
    columns: (1fr, auto),
    column-gutter: 14pt,
    [
      - SMART tasks (goals)
      - Define who is responsible
      - Review completed work
      - Adjust to fix discovered problems
    ],
    image("images/lecture-3/turn-by-turn.jpg", height: 255pt),
  )
]

#slide("Tactical: SMART tasks (goals)")[
  - #strong[S]pecific
  - #strong[M]easurable
  - #strong[A]chievable
  - #strong[R]elevant
  - #strong[T]ime-bound
]

#slide("Tactical: responsibility")[
  - Every task has a specific person responsible for completing it
  - There is a separate person who verifies that it was done
]

#slide("Tactical: review and adjust")[
  *Review*
  - Iteration demo
  - What went wrong?
  - What went right?

  *Adjust*
  - What steps should we take to improve iterations?
]

#slide("Tactical pitfall")[
  Using Scrum as an excuse not to have strategic planning:

  - Can't manage customer expectations.
  - Can't predict how much time larger features will take.
  - You will end up writing code just for the sake of writing code.
]

#slide("Tactical frameworks")[
  There are different tactical approaches like Scrum.
  The specific approach is chosen based on what works best for:

  - your team
  - your project
  - the tactical requirements

  #warn[When you pick a framework, you must use all of it!
    If you removed or added something, you must provide an explanation!]
]

// --- Review and close (source slides 17-18) ---------------------------------

#quiz[
  What is strategic planning?

  What is tactical planning?

  What will happen if we ignore strategic planning?

  What will happen if we lack tactical planning?
]

#pagebreak(weak: true)
#v(1.4in)
#align(center)[
  #text(size: 28pt, weight: "bold", fill: accent)[Questions?]
]
