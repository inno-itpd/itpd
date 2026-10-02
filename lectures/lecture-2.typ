// Requirements and prototyping, lecture 2 of the IT Product Development course.
//
// Written by hand for the 2026 course. There is no source export for it.
//
// Reused from the 2025 decks, which live in tmp/itpd-2025/lectures/ as PDFs only:
//   - the Quiz opener and the Key Takeaways closer, from lecture-2.2.pdf
//   - the bold Warning! callout, from lecture-2.1.pdf
//   - a per-section review-questions slide, from lecture-2.1.pdf and lecture-3.pdf
//   - opening a lecture by recapping the previous one, from lecture-4.pdf
//   - the proof-of-concept / prototype / MVP distinction, from lecture-3.pdf,
//     including that a prototype is normally thrown away
//   - conjecture to experiment to fact to decision, from lecture-3.pdf
//   - the fidelity table, from lecture-3.pdf
//   - "engineers are fascinated with the machine", from lecture-3.pdf
//   - strategic versus tactical planning and "define success" as the first
//     strategic step, from lecture-2.1.pdf, used here to explain why planning
//     moved to Week 3
//   - definition, attribution, then apply, and enumerate your traces then
//     give one worked example each, from tmp/itpd-2025/assignments/assignment-7.md
//
// Borrowed from tmp/swp-2026/:
//   - the user story template, from labs/lab-2.txt
//   - stories articulate the why, criteria define what success looks like, and
//     each criterion must be testable, from labs/lab-3.txt
//   - "which user stories are covered" as the coverage check, from labs/lab-2.txt
//
// Deviations from the above, on purpose:
//   - No screenshots, images, or diagrams carried over from any source deck.
//     Decks are self-contained Typst with no committed image assets, so they
//     would have to be redrawn. The context diagram is named, not drawn.
//   - No Scrum. lecture-2.1.pdf uses Scrum as its tactical example and
//     lecture-3.pdf is framed around iteration; ITPD has no Scrum.
//   - No product examples from the 2025 decks. The one worked story pair is
//     invented, and it uses the US-01 identifier rather than an identifier
//     that would suggest a real student repository.
//   - Estimation and scheduling are not here. They are Week 3.
//   - Quality attributes, quality goals, and quality attribute scenarios are
//     not here. They are Week 4, and this deck only says where they go.
//   - The helpers warn(), takeaways(), quoted(), quiz(), and key() are new.
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

#let takeaways(body) = block(
  width: 100%,
  fill: accent,
  radius: 3pt,
  inset: (x: 10pt, y: 5pt),
  text(size: 0.92em, fill: white)[
    *Key takeaways:* #body
  ],
)

// Titles are passed as strings, not markup content, on purpose.
// A markup title like [1. Modular LLM gateway] is parsed as an enumeration
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

// The two per-section closers, so that every section opens with a check and
// ends with the three things worth remembering. Both take a content body.
#let quiz(body) = slide("Quiz")[#body]

#let key(body) = slide("Key Takeaways")[#takeaways(body)]

// --- Title and recap --------------------------------------------------------

#title-slide()

#slide("Agenda")[
  - Why this week
  - The chain: vision, stories, prototype
  - How to decide, not how to do
  - Vocabulary
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

// TODO remove this slide
// #slide("Why planning moved to Week 3")[
//   Last year this course asked for a work plan and a codebase in the same week.

//   One week later the same teams were told to *update* the quality requirements
//   and *update* the priorities.

//   #warn[They were not incomplete. They were wrong, and nobody noticed until it was too late to be cheap.]

//   A scaffold encodes a stack, a data model, and a component structure.
//   All three are decisions about what the product does.
//   You cannot plan what you cannot describe.
// ]

#quiz[
  - What did last week's research give you that you can build on?
  - Name one thing it did not give you.
  // - Why is a scaffold more expensive than it looks?
]

// #key([
//   The research gave you a direction, not a set of requirements.
//   This week converts one into the other.
//   Planning is Week 3 because planning on requirements you have not tested
//   produces a schedule for building the wrong thing.
// ])

// --- The chain --------------------------------------------------------------

// TODO "user story" - is it any user, including an operator?

#section("The chain")

#slide("The chain")[
  #text(weight: "bold")[GAP-nn, VP-nn] -> the vision -> #text(weight: "bold")[US-nn] -> the prototype -> the customer -> *a change*

  Every link answers one question:
  - The vision: what is this for?
  - A user story: what does one user need?
  // TODO can acceptance criteria mention parts of the system?
  - Acceptance criteria: how would we know?
  - The prototype: are we guessing?
  - The meeting: where are we wrong?
]

// TODO this wording is close to what can be in the assignment.
// TODO Should we focus on concepts or specifics (doc paths that may change)

#slide("The product vision")[
  `docs/product-vision.md`, one page, five things:

  - The *goal*: what the product must achieve
  - The *constraints*: what you cannot change, and what each one costs
  - The *stakeholders*: who uses it, who operates it, who is affected
  - The *boundary*: what it will not do
  - A *system context diagram*

  The goal traces to a `VP-nn`.
  A goal that supports no value proposition is a feature you would like.
]

// TODO Won't have - need to explain MoSCoW rather than just mention it here 

#slide("The boundary")[
  The boundary is the list of things your product will *not* do.

  It is what makes the context diagram checkable.
  With it, a reviewer can point at an actor and ask which of your exclusions
  rules them out.
  Without it, a diagram can only be judged as looking reasonable, and
  "reasonable" is not a test.

  #note[Your `Won't Have` stories are the same list, from the other direction.]
]

// TODO provide better examples and more context

#slide("A user story")[
  ```text
  As a <user>
  I want to <action>
  so that <value>
  ```

  It is a *need*, not a design.
  "Add a redaction rule editor" is a feature you have already built in your head.
  "Attach a rule to a region of our own code" is a need you can still be wrong about.

  The third line is the one that catches the difference.
  If you cannot finish it with a value, you have written a task.
]

// TODO Define "hard" criterion

#slide("Acceptance criteria")[
  The story says *why*.
  The criteria say *what success looks like*.

  Two or more per story, and the test is simple:
  could somebody who is not you run the check and get the same answer?

  "Works well" is not a criterion.
  A criterion you cannot run is a belief.

  #note[A hard criterion is not a writing problem. It means you do not yet know what the product does in that case, which makes it a good thing to prototype.]
]

#slide("The prototype")[
  A prototype is an instrument for finding out what is wrong.

  It is not a showcase, and it is not the product.

  Ask it one question first: *which story am I least sure about?*
  Then build the cheapest thing that gets a reaction to that question.

  #note[Which user stories does the prototype cover? Answer that explicitly, out loud, in the file you record it in.]
]

#quiz[
  - What question does each artifact in the chain answer?
  - What is the difference between a need and a design?
  - How do you tell a real acceptance criterion from a wish?
]

// TODO skip takeaways
// Although it's summary in BOPPPS

// #key([
//   The vision, the stories, the criteria, and the prototype each answer one
//   question, and the questions come in an order.
//   A prototype that is not aimed at your least certain story is a demo.
// ])

// --- How to decide ----------------------------------------------------------

// TODO what is this slide about?

// #section("How to decide, not how to do")

// #slide("The stance")[
//   #text(weight: "bold")[You commit this week. Week 4 audits you.]

//   The lecture will not tell you how to run Figma, how to size an estimate, or
//   how to write a quality scenario.
//   Those are tools.

//   What it will tell you is what you are deciding, and what it costs to be wrong.
// ]

#slide("Two traps worth naming")[
  #term[Trap 1] a solution wearing a story's clothes.
  The story names a screen, a button, or a component.
  You have already designed it, so you can no longer be surprised by it.

  #term[Trap 2] a goal nobody can fail.
  "Be fast", "be reliable", "delight the user".
  Nobody can tell on Friday whether you achieved it, so it cannot guide a
  decision on Wednesday.
]

#slide("One story, twice")[
  Both are about a study group planner. Both are made up.

  *Not a story:*

  #quoted[As a student, I want a calendar page so that I can see all my study sessions in one place.]

  *A story:*

  #quoted[As a student preparing for an exam, I want to see the sessions I have already missed, so that I can decide which one to reschedule before the week is over.]

  The first one is a feature with a screen in it.
  // TODO why "decision"?
  The second one has a situation, an object, and a decision.
]

#quiz[
  // TODO can stories mention parts of the system to set more context? 
  - True or false?: a story may name the screen it needs.
  // TODO slide about goals
  - What makes a goal falsifiable?
  // TODO why "surprise"?
  - Which of the two stories could surprise you?
]

#key([
  Write needs, not designs, or you have stopped learning.
  Make the goal something you could fail.
  The three words that give a story away are "page", "button", and "screen".
])

// --- Vocabulary -------------------------------------------------------------

#section("Vocabulary")

#slide("Six words")[
  #term[Goal] - what the product must achieve

  #term[Boundary] - what the team will not do

  #term[Constraint] - a condition you cannot change

  #term[Assumption] - a belief you have not verified

  #term[Story] - one thing a user needs

  #term[Criterion] - how you would know you delivered it

  An assumption is not a constraint.
  A constraint you cannot change; an assumption you can be wrong about, and that
  is the interesting one.
]

#slide("Two distinctions that will cost you")[
  *A goal (Week 2) is not a quality goal (Week 4).*
  A goal says *what*: the request leaves the network governed by the company's
  own rules.
  A quality goal says *how well*, and it arrives in Week 4 with its own
  `Q-nn` identifiers.

  *A threshold of success (Week 3) is not a goal restated.*
  A goal is the outcome.
  A threshold is the measurable bar for calling it done.
  If you can paste your goals into Week 3 and change nothing, they are not yet
  goals.
]

#slide("Prototype, proof-of-concept, MUP, product")[
  #term[Proof-of-concept] - does this work at all technically

  #term[Prototype] - does this deliver the value, and it normally gets thrown away

  #term[Minimum usable product] - real code that delivers value to somebody

  #term[The product] - what you ship, weeks later

  A prototype is not a MUP.
  If it is going to be code, it goes through planning like everything else.

  #warn[Be suspicious of a spike that nobody wants to throw away. Engineers are fascinated with the machine, and a spike is not a small feature.]
]

#quiz[
  - Which of the six words can be wrong, and how would you find out?
  - Give a goal and a quality goal for the same product.
  - What is the difference between a prototype and a MUP?
]

#key([
  A goal is an outcome, a quality goal is a measure, and a threshold is the bar.
  Three different things, three different weeks.
  Know which one you are writing, because the vocabulary does not forgive mixing them.
])

// --- Validating with the customer -------------------------------------------

#section("Validating with the customer")

#slide("What the second meeting asks")[
  You are not asking permission.
  You are finding out where you are wrong.

  The target is one sentence: *which of these eight stories is wrong?*

  Not the business goals. Those were settled last week.
  A later meeting settles one thing or two, and everything else is a
  conversation you do not need to have again.
]

#slide("Do not treat agreement as a result")[
  "That sounds great" about your own idea has told you almost nothing.

  If the customer agrees with everything, you showed them the answer rather
  than the question.
  The `Disagreements` table in your meeting report should not be empty.

  #warn[A prototype that validated everything proved nothing, because you chose the parts you were already sure about.]
]

#slide("Trace what changed")[
  Something has to change as a result.
  In all four places:

  - `prototypes.md` - what you showed, what they said
  - `meeting-report.md` - which `US-nn` changed
  - the story file - what it says now, dated
  - the week report - what to look at first

  A decision in the meeting report that never reaches the story file has not
  changed anything. That is the step that gets skipped.
]

#quiz[
  - What is the target of this meeting, in one sentence?
  - What do you do when the customer approves everything?
  - Where does a change have to be recorded?
]

#key([
  The meeting is a test, so it is allowed to fail.
  Agreement is the one result that means you asked the wrong question.
  And a change that only exists in the meeting report is not a change.
])

// --- Review -----------------------------------------------------------------

#slide("Review questions")[
  - What does the chain give you that a list of features does not?
  - Why did planning move to Week 3?
  - What is the boundary for, and what does it make checkable?
  - How do you tell a real acceptance criterion from a wish?
  - Which of your stories would you prototype first, and why that one?
  - What is the difference between a goal, a quality goal, and a threshold of success?
]

// TODO don't need a title here
#slide("Questions?")[
  #v(1.4in)
  #align(center)[
    #text(size: 28pt, weight: "bold", fill: accent)[Questions?]
  ]
]

// TODO avoid spoilers
// 
// #slide("What's next?")[
//   #v(0.4in)
//   - Week 3: planning and the minimum usable product
//   - Week 4: quality goals and architecture
//   - Quality is Week 4, so this week you are allowed to be unsure about
//     how good it is.
// ]
