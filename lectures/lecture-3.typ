// Planning, lecture 3 of the IT Product Development course.

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
    #text(size: 34pt, weight: "bold", fill: accent)[Goals, Planning, Tracking]
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
  - Goals
  - Threshold of success
  - Strategic planning
  - Tactical planning
]

#section("Goals")

#slide("Discussion questions")[
  What is a goal?

  What are properties of unambiguous goals?

  How to communicate goals to other people?
]

#slide("SMART goals")[
  A goal is an idea of the future or desired result that people envision, plan, and commit to achieve." - #link("https://en.wikipedia.org/wiki/Goal")[Goal on Wiki]

  The #strong[SMART] goal format lets you state goals precisely so that others can agree on what success wrt. this goal is and later tell whether it was achieved.

  #strong[SMART] goal:
  - #strong[S]pecific: what exactly will be done, and for whom?
  - #strong[M]easurable: what evidence or number proves it is done?
  - #strong[A]chievable: can we reach it with our skills, time, and resources?
  - #strong[R]elevant: does it align well with the project vision?
  - #strong[T]ime-bound: by when, with a date?

]

#slide("SMART goal example")[
  #grid(
    columns: (0.5fr, 1fr),
    gutter: 24pt,
    [
      *Example*

      By the Week 3 soft deadline, October 15, 2026, our team ships a minimum usable product in which a user completes the core task chosen in Week 2 end to end, and the customer accepts it at that week's meeting.
    ],
    [
      #strong[Properties]

      - #strong[S]pecific — the MUP vertical slice for the core task, built only from Must Have stories.
      - #strong[M]easurable — the core task runs end to end, and the customer's verdict is recorded as a DEC-nnn.
      - #strong[A]chievable — one course week, a 3–4 person team, using a candidate already reviewed in Week 2.
      - #strong[R]elevant — it is Submission 3 (7% of the grade) and the base for the Week 5 MVP.
      - #strong[T]ime-bound — October 15, 2026, 23:59 (soft), October 16, 2026, 23:59 (hard).
    ],
  )
]

#slide("Quiz")[
  Why write SMART goals?
]


#section("Threshold of success (ToS)")

#slide("Discussion questions")[
  What is success?

  What is failure?

  What is between them?
]

#slide("Why need threshold of success (ToS)?")[
  #strong[Threshold of success] (ToS):

  - Helps focus on essential goals
  - Increases chances for a clear project success
  - Helps communicate goals to stakeholders
  - Helps identify the most important risks that are necessary to manage
]

#slide("Guess the sequence of ToS steps")[
  - Convert to success statements (how to avoid failure?)
  - List failure statements (when can the project fail?)
  - Gather the team
  - Write a minimal set of SMART goals
  - Build a minimum picture of failure
]

#slide("The sequence of ToS steps")[
  1. Gather the team
  2. Build a minimum picture of failure
  3. List failure statements
  4. Convert to success statements
  5. Write a minimal set of SMART goals
]

#slide("Discussion questions")[
  What can be a failure statement for your team?
]

#section("Planning")

#slide("Discussion questions")[
  What is planning?

  Why do people plan?

  When do people plan?

  What types of planning do you know?
]

// --- Types of planning (source slides 4-5) ----------------------------------

#slide("Planning types")[
  #grid(
    columns: (1fr, 1fr),
    gutter: 24pt,
    [
      *Strategic*
      - Long-term
      - Achieve global project goals
      - Keep in mind the threshold of success
    ],
    [
      *Tactical*
      - Short-term
      - Achieve local project goals
      - Complete tasks
      - Situational
    ],
  )
]

#section("Strategic planning")

#slide("Strategic plan example")[
  #grid(
    columns: (1fr, auto, auto),
    column-gutter: 14pt,
    [A navigation app provides a strategic plan #linebreak() - a path from start to finish.],
    image("images/lecture-3/route-overview.jpg", height: 255pt),
    image("images/lecture-3/route-legs.jpg", height: 255pt),
  )
]

// --- Strategic (source slides 6-10) -----------------------------------------

#slide("Strategic planning & tracking")[
  Level: project goals

  - #strong[Define success wrt. your goals]
    - Make it testable
    - Make sure all stakeholders agree (80% of pain comes from skipping this step)
  - #strong[Develop a roadmap]
    - Decompose the path to success into steps (sub-goals, milestones)
    - Find a "zoom level" that works for your project
  - #strong[Monitor progress] - #strong["tracking"]
    - Where are we in the project right now?
    - How much was done?
    - How much more do we have to do?
    - Are we on track to complete promised deliverables?
    - Can stakeholders clearly see our progress?
  - #strong[Make contingency plans]
    - Identify risks
    - Define alternative solutions
    - Identify "point of no return" decisions
]

// --- Tactical (source slides 11-16) -----------------------------------------

#section("Tactical planning")

#slide("Tactical planning example")[
  #grid(
    columns: (1fr, auto, auto),
    column-gutter: 14pt,
    [The same navigation app provides a tactical plan #linebreak() - a step-by-step path to a local goal (sub-goal)],
    image("images/lecture-3/turn-by-turn.jpg", height: 255pt),
  )
]

#slide("Tactical planning")[
  Level: local sub-goals and tasks

  - #strong[Define who is responsible]
    - Every task has a specific person responsible for completing it ("responsible")
  - #strong[Define when the work is done]
    - There is Definition of Done for the work (task, user story, etc.)
  - #strong[Review completed work]
    - There is a separate person who verifies that a task was done ("accountable")
    - Iteration demo
    - What went wrong?
    - What went right?
  - #strong[Adjust to fix discovered problems]
    - What should we keep from what went right?
    - Which steps should we take to improve iterations?

  #note([Similar to #link("https://deming.org/explore/pdsa/")[The PDSA cycle]])
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
