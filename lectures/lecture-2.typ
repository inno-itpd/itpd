// Requirements and prototyping, lecture 2 of the IT Product Development course.
//
// Written by hand for the 2026 course. There is no source export for it.
//
// The deck teaches the week's concepts rather than the files a team writes to.
// It was reframed in the 2026 review: slides no longer name a path, and the
// identifiers US-nn, GAP-nn, Q-nn, and VP-nn remain because traceability is a
// concept. See TASK-012. The boundary slide shows two BND-nn items, which cite
// a CON-nn and a DEC-nnn, from the product vision example. See TASK-086.
//
// Reused from the 2025 decks, which live in tmp/itpd-2025/lectures/ as PDFs only:
//   - the Quiz opener, from lecture-2.2.pdf
//   - the bold Warning! callout, from lecture-2.1.pdf
//   - a per-section review-questions slide, from lecture-2.1.pdf and lecture-3.pdf
//   - opening a lecture by recapping the previous one, from lecture-4.pdf
//   - the proof-of-concept / prototype / MVP distinction, from lecture-3.pdf,
//     including that a prototype is normally thrown away
//   - the fidelity idea behind the "forms of prototype" slide, from lecture-3.pdf
//   - "engineers are fascinated with the machine", from lecture-3.pdf
//   - definition, attribution, then apply, and enumerate your traces then
//     give one worked example each, from tmp/itpd-2025/assignments/assignment-7.md
//
// Borrowed from tmp/swp-2026/:
//   - the user story template, from labs/lab-2.txt
//   - stories articulate the why, criteria define what success looks like, and
//     each criterion must be testable, from labs/lab-3.txt
//   - "which user stories are covered" as the coverage check, from labs/lab-2.txt
//   - MoSCoW as the four-way priority scale, from labs/lab-2.txt
//
// Deviations from the above, on purpose:
//   - No screenshots, images, or diagrams carried over from any source deck.
//     Decks are self-contained Typst with no committed image assets, so they
//     would have to be redrawn. The context diagram is named, not drawn.
//   - No Scrum in this deck. lecture-2.1.pdf uses Scrum as its tactical
//     example; ITPD covers sprints, planning, estimation, and retrospective
//     in Week 3, so they are not here.
//   - No product examples from the 2025 decks. One invented product, a meeting
//     booking app, carries every worked example, and it uses the US-01
//     identifier rather than an identifier that would suggest a real student
//     repository.
//   - A user is any actor with a goal, including an operator.
//   - A story states the problem precisely and leaves the solution open. It may
//     not name what only the team decides, such as a screen, a button, or a
//     component; a detail the customer has settled goes in an acceptance
//     criterion, which may also name system state because an observer sees it.
//   - Estimation and scheduling are not here. They are Week 3.
//   - Quality attributes, quality goals, and quality attribute scenarios are
//     not here. They are Week 4, and this deck only says where they go.
//   - The planning-moved-to-Week-3 argument, the "How to decide" section, and
//     the "What's next" slide were dropped in the 2026 review, so their
//     commented source blocks are gone with them.
//   - Every section keeps its Quiz and lost its Key Takeaways closer, and the
//     helpers takeaways() and key() went with the closer.
//   - The helpers warn(), quoted(), and quiz() are new.
//     The other six are copied unchanged from lecture-1.typ.

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

#let title-slide() = {
  pagebreak(weak: true)
  v(1.3in)
  align(center)[
    #text(size: 34pt, weight: "bold", fill: accent)[Requirements and prototyping]
    #v(0.16in)
    #text(size: 20pt, fill: muted)[IT Product Development]
  ]
  v(1.42in)
  align(center)[
    #text(size: 14pt, fill: muted)[Innopolis University, 2026]
  ]
}

// A quoted artifact, for the one worked example. Typst's bare ">" is not a
// blockquote in markup, so the quote is drawn rather than marked.
#let quoted(body) = block(
  width: 100%,
  inset: (x: 14pt, y: 3pt),
  stroke: (left: 2pt + luma(70%)),
  text(size: 0.95em, fill: muted)[#body],
)

// Every section opens with a check and ends with the Quiz.
#let quiz(body) = slide("Quiz")[#body]

// --- Title and recap --------------------------------------------------------

#title-slide()

#slide("Agenda")[
  - Why this week
  - The chain: vision, stories, criteria, prototype
  - Prototyping
  - Validating with the customer
]

// --- Why this week ----------------------------------------------------------

#section("Why this week")

#slide("Last week")[
  *You settled:*
  - Which products exist, and how well each one does the job
  - Where they all fall short: `GAP-01`, `GAP-02`
  - What you will do differently: `VP-01`, `VP-02`
  - What the customer disagrees with

  *You did not settle:*
  - What your product actually has to do
  - What it will not do
  - What you are building first
]

#slide("This week: say what it must do")[
  The research said *what to build*.

  This week you say *what it must do*, and you find out how much of that was wrong.

  Conjectures lead to experiments.
  Experiments lead to facts.
  Facts lead to decisions.
]

#quiz[
  - What did last week's research give you that you can build on?
  - Name one thing it did not give you.
]

// --- The chain --------------------------------------------------------------

#section("The chain")

#slide("The chain")[
  #text(weight: "bold")[GAP-nn, VP-nn] -> the vision -> #text(weight: "bold")[US-nn] -> the prototype -> the customer -> *a change*

  Every link answers one question:
  - The vision: what is this for?
  - A user story: what does one user need, for which `VP-nn` of the goal?
  - Acceptance criteria: how would we know?
  - The prototype: are we guessing?
  - The meeting: where are we wrong?
]

#slide("The product vision")[
  The vision is the one page a reader holds to understand what you decided to build.
  It has five parts:

  - The *goal*: what the product must achieve
  - The *constraints*: what you cannot change, and what each one costs
  - The *stakeholders*: who uses it, who operates it, who is affected
  - The *boundary*: what it will not do, and who does it instead
  - A *system context diagram*: your system in the environment

  The goal traces to a `VP-nn`.
  A goal that supports no value proposition is a feature you would like.
]

#slide("Constraints and assumptions")[
  #term[Constraint] a condition you cannot change.

  #term[Assumption] a belief you have not verified but treat as true for now; you can be wrong about it.

  Record every constraint under one of four types:
  - *Customer-given*: e.g. integration with a specific API, limited budget
  - *Team-given*: e.g. the team size and skills
  - *Environmental*: e.g. the weeks left in the course
  - *Derived*: what follows from the other constraints

  If you don't know what a constraint costs you, you don't understand it.
]

#slide("The boundary")[
  #term[Boundary] the line between what your product does and what the people and systems around it do.

  The context diagram *draws* the line.
  The vision *writes down* the parts of it someone could argue with:
  one item per job the product will not do, who does it instead, and why.
  Each item has its own identifier, so a story or a decision can cite it.

  #set text(size: 12pt)
  #grid(
    columns: (1fr, 1fr),
    gutter: 16pt,
    ```text
    BND-01
    Host the video call.

    - Status: Active
    - Handled by: Video service
    - Why: CON-03, the single-term course:
      video stays an integration.
    ```,
    ```text
    BND-02
    Schedule more than one expert at a time.

    - Status: Active
    - Handled by: Nobody
    - Why: DEC-002, the customer's decision:
      the experts work alone.
    ```,
  )
]

#slide("The context diagram")[
  #term[Context diagram] is a picture of the product at its edges:

  - The *product* itself
  - The *external actors* that use it or are affected by it
  - The *external systems* it exchanges data with

  It stops there.
  No containers, no components, and no internal structure; that is for later weeks.

  The diagram and the boundary must agree:
  - Whatever the boundary says handles a job is on the diagram.
  - Nothing on the diagram does a job the boundary leaves to nobody.
]

#slide("A user story")[
  #term[User story] captures a need of an actor together with the value.

  ```text
  As a <user>
  I want to <action>
  so that <value>
  ```

  A user is any actor with a goal: the person the product serves, and the
  operator or administrator who keeps it running.

  It is a *need*, not a design.
  - "Avoid double-booking a slot" is a need.
  - "Add a calendar page" is a feature you have already built in your head.

  A story states the problem precisely and leaves the solution open.

  If you cannot finish a user story with a value, you have written a task.
]

#slide("A non-story and a story")[
  Both are about a meeting booking app. Both are made up.

  *Not a story:*

  #quoted[As an expert, I want a booking page with a calendar, so that my clients can see my available time.]

  #note[It names the design ("a booking page with a calendar") and stops at what the screen shows. Why does the expert need clients to see the free time? The value is missing.]

  *A story:*

  #quoted[As a coach who sells sessions online, I want a client to pay when they book, so that an unpaid slot does not block a paying one for the rest of the week.]

  #note[A more precise \<user\>, the value they get, and no design: a payment page, a deposit, or an invoice would all satisfy it.]
]

#slide("How specific?")[
  Ask *who settled the detail*.
  - Only the team would decide it (a screen, a component, a library): leave it out.
  - The user or the customer settled it: the story may carry it.

  #quoted[As a coach, I want booked sessions to appear in the calendar I already use, so that I do not double-book a slot.]

  The customer says the coach uses Google Calendar, so an *acceptance criterion* names it.
  The need stays the same if the coach later switches calendars.

  #note[Google Calendar is on the context diagram, outside the product: a fact about the problem, not your design. Stories get more specific as they get closer to being built.]
]

#slide("Acceptance criteria")[
  The story says *why*.
  The criteria say *what success looks like* (when the story is completed).

  Two or more per story, and the test for a good acceptance criterion is simple:
  *could somebody who is not you run the check and get the same answer?*

  A criterion may name a screen, a field, or a system state, because that is
  what an observer sees.
  The story may not, because that would be the design.

  "Works well" is not a criterion.
  A criterion you cannot run is a belief.

  #note[A criterion that is hard to write is not a writing problem.
    It means you do not yet know what the product does in that case, which makes it a good thing to prototype.]
]



#slide("Prioritizing with MoSCoW")[
  Priority is a four-way scale, relative to the product you intend to finish:

  - *Must Have*: the product is not the product without it
  - *Should Have*: important, but the product is still coherent without it
  - *Could Have*: valuable, and the first thing to cut if you can't implement for some reason
  - *Won't Have*: a real need you have deliberately excluded

  Each label should be justified and account for constraints.

  A `Won't Have` reason may cite the boundary; nothing you build contradicts it.
]

#quiz[
  - What question does each artifact in the chain answer?
    #linebreak()
    #text(weight: "bold")[GAP-nn, VP-nn] -> the vision -> #text(weight: "bold")[US-nn]
  - What does the chain give you that a list of features does not?
  - What is the difference between a need and a design?
  - How do you tell a real acceptance criterion from a wish?
]


#section("Prototyping")

#slide("Proof of concept (PoC), prototype, MUP, MVP")[
  #term[Proof-of-concept (PoC)] "Can this work at all technically?"

  #term[Prototype] "How will this look? Does this user flow make sense?"

  #term[Minimum usable product] "Can the user complete the core tasks without getting frustrated?"

  #term[Minimum viable product] "Will people use it?" The minimum ready-to-ship product that can deliver value to the users.
]

#slide("The prototype")[
  A prototype is an instrument for finding out what is wrong and killing wrong ideas early.

  It is not a showcase, and it is not a part of the product.

  Ask one question first: *which user stories am I least sure about?*

  Then build the cheapest thing that gets a reaction to that question from relevant stakeholders (customer - in case of ITPD).

  After you have learned with the prototype what you planned, you can throw it away.
]

#slide("Forms of prototype")[
  Match the fidelity to the question, not to your ambition.

  - *Paper or static image*: fastest, for layout, vocabulary, and "is this the
    right problem"
  - *Clickable design*: for a flow you want the customer to move through
  - *Code spike*: for a technical risk, kept off `main` and thrown away after

  A high-fidelity prototype is the wrong tool for "does the customer recognise
  this problem": you will spend two days on it and they will comment on the
  colour.
]

#quiz[
  - What question does the prototype answer?
  - What is the difference between a prototype and an MUP?
]

// --- Validating with the customer -------------------------------------------

#section("Validating with the customer")

#slide("What the second meeting asks")[
  The target is one sentence: *which of these is wrong?*

  The prototype, the boundary, and the candidate for the MUP.

  Show the candidate next to every user story and its priority, so the customer can move a story into or out of it.

  Walk through each story's acceptance criteria if time allows.
]

#slide("Do not treat agreement as a result")[
  "That sounds great" about your own idea has told you almost nothing.

  If the customer agrees with everything, you showed them the answer rather than the question.

  Therefore, the `Disagreements` table in your meeting report should not be empty.

  If there are no disagreements, you probably showed what you were already sure about.
]

#quiz[
  - What is the target of the meeting, in one sentence?
  - What do you do when the customer approves everything?
]

#pagebreak(weak: true)
#v(1.4in)
#align(center)[
  #text(size: 28pt, weight: "bold", fill: accent)[Questions?]
]
