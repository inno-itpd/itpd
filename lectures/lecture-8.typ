// Usability testing, lecture 7 of the IT Product Development course.

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
    #text(size: 34pt, weight: "bold", fill: accent)[Configuration management #linebreak() for agentic development]
    #v(0.16in)
    #text(size: 20pt, fill: muted)[Lecture 8, IT Product Development]
  ]
  v(1.2in)
  align(center)[
    #text(size: 14pt, fill: muted)[Innopolis University, 2026]
  ]
}

// Every section opens with a quiz and closes with its Key Takeaways slide.
#let quiz(body) = slide("Quiz")[#body]

#let key-takeaways(section, body) = slide("Key takeaways" + " " + "(" + section + ")")[#body]

// --- Title and agenda -------------------------------------------------------

#title-slide()

#slide("Agenda")[
  - Agentic development
  - Configuration management
  - Configuration management for agentic development in ITPD
]

// --- Usability testing ------------------------------------------------------

#section("Agentic development")

#slide("Quiz")[
  What are the benefits of using an AI agent to develop a product?

  What are the costs of using an AI agent to develop a product?
]

#slide("Agentic development")[
  Adapted from #link("https://www.sonarsource.com/resources/library/what-is-agentic-development/")[What is agentic development?]:

  #show quote: set block(spacing: 1em)

  #quote(block: true)[
    Agentic development:
    - the developer sets the goal and reviews the outcome but does not approve each intermediate step
    - AI agents autonomously carry out multi-step coding tasks such as planning, writing, testing, and fixing code

    The agent analyzes the information it has, decides the sequence of actions, calls tools, observes results, and iterates toward a working solution.
  ]
]

#slide("ReAct agent loop")[
  Agent decides the sequence of actions, calls tools, observes and analyzes results, and iterates toward a working solution.

  #figure(
    image("images/lecture-8/react-agent-loop.png", height: 60%),
    caption: "ReAct agent loop - " + link("https://www.ibm.com/think/topics/react-agent")[source],
  )
]

#slide("ReAct agent and environment")[
  Agent uses tools to interact with its environment, e.g. query or modify it.

  #figure(
    image("images/lecture-8/agent-and-environment.png", height: 60%),
    caption: "ReAct agent example - "
      + link(
        "https://medium.com/google-cloud/building-react-agents-from-scratch-a-hands-on-guide-using-gemini-ffe4621d90ae",
      )[source],
  )
]

#slide("Agentic development challenges")[

]

#key-takeaways("Agentic development")[
  - Agents aren't 100% accurate and the errors that they introduce into the project codebase can accumulate quickly.
]

// --- Review and close -------------------------------------------------------

#quiz[

]
