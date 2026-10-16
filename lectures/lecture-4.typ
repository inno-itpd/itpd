// Quality, Architecture & Agile, lecture 4 of the IT Product Development course.
//
// Converted from the 2025 slides export tmp/itpd-2025/lectures/lecture-2.2.pdf,
// 34 slides at 720 x 405 pt. Each slide of the export is one slide here, in the
// same order, and the section comments below name the source slides.
//
// Deviations from the export, on purpose:
//   - The title slide drops the author line and adds "Innopolis University, 2026",
//     as lecture-1.typ does.
//   - The quizzes keep their questions as lines rather than the export's numbered
//     list, the shape lecture-2.typ gives its quizzes.
//   - Source slide 6 draws a curly brace under the paragraph, pointing to the
//     "a.k.a quality attributes" line. The line is a centered note here, with no
//     brace.
//   - The quality-model diagrams on source slides 7 and 8, the availability
//     figure on slide 13, and the design-effort curve on slide 23 are the
//     export's own JPEGs, extracted with pdfimages -j so they are not
//     re-encoded, and committed under images/lecture-4/.
//   - The tables on source slides 12 and 14 are Typst tables set to 12pt,
//     because the export's text does not fit the slide at the deck's size.
//   - The [ScrumGuide] quotation on source slide 32 is the quoted() callout from
//     lecture-2.typ.
//   - Source slide 34 keeps all 11 references, including [Pmbok6], which no
//     slide cites.
//   - The links to the 2025 course guide and to the two example architecture
//     documents are kept as the export has them.
//   - Wording is otherwise unchanged.

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

// Rebuilt from source slide 1: the title, the course name as a subtitle, and
// the institution, as lecture-1.typ does.
#let title-slide() = {
  pagebreak(weak: true)
  v(1.3in)
  align(center)[
    #text(size: 34pt, weight: "bold", fill: accent)[Quality, Architecture & Agile]
    #v(0.16in)
    #text(size: 20pt, fill: muted)[IT Product Development]
  ]
  v(1.42in)
  align(center)[
    #text(size: 14pt, fill: muted)[Innopolis University, 2026]
  ]
}

// Every section opens with a quiz and closes with its Key Takeaways slide.
#let quiz(body) = slide("Quiz")[#body]

// --- Title, agenda, and the Product Quality opener (source slides 1-3) ------

#title-slide()

#slide("Agenda")[
  - Quality
  - Architecture
  - Agile
]

#section("Product Quality")

// --- Quality (source slides 4-17) -------------------------------------------

#quiz[
  What is a quality attribute?

  Which quality attributes do you know?

  Which quality attribute did the NavProject team skip?
]

#slide("Stakeholders and Quality")[
  #cite("Sbok5"):

  *Stakeholders* are all individuals and groups affected by the Scrum project.

  #line(length: 100%, stroke: 0.5pt + luma(70%))

  Your stakeholders are course instructors, your customer, peer teams, your team.

  You should manage and meet their expectations about the quality of both your product and project (deliver on time, use appropriate processes, tools etc.)
]

#slide("Product Quality")[
  #cite("Iso25010"):

  The *quality of a system* is the degree to which the system satisfies the stated and implied needs of its various *stakeholders*, and thus provides value.

  *Stakeholders' needs* (functionality, performance, security, maintainability, etc.) are precisely what is represented in the quality model, which categorizes the *product quality* into characteristics and sub-characteristics.

  #align(center)[#note[a.k.a "quality attributes" - properties of the system that stakeholders consider to measure quality]]
]

#slide("The ISO 25010 Quality Model")[
  Quality → Characteristics → Sub-characteristics #cite("Iso25010"):

  #image("images/lecture-4/iso-25010-model.jpg", width: 100%)
]

#slide("The Q42 Quality Model")[
  #grid(
    columns: (1fr, auto),
    column-gutter: 18pt,
    [
      #cite("Q42"):

      The arc42 quality model Q42 is a simple, pragmatic yet effective approach to *product and system quality*. It starts with *stakeholders' expectations* and requirements. From these, it derives 8 important system properties, which are sufficient to cover most, if not all, required, desirable or expected of the more than 100 _traditional_ qualities.
    ],
    image("images/lecture-4/q42-model.jpg", height: 255pt),
  )
]

#slide("How to Measure Your Product Quality? Idea 1")[
  You ask stakeholders to assess the quality of a product version.

  - *Pros:*
    - Stakeholders know their needs and thus are the perfect assessors.
  - *Cons:*
    - It's probably too late. You should've agreed on the quality in advance to have shared expectations and to build adequate quality into your product and processes #cite("Pmbok7").
]

#slide("How to Measure Your Product Quality? Idea 2")[
  You use quality attributes from an existing model.

  - *Pros:*
    - Don't need to design your own quality attributes.
  - *Cons:*
    - Existing attributes are too abstract and can't be directly measured. Example #cite("Iso25010"):

      #note[Capacity - Degree to which the maximum limits of a product or system parameter meet requirements.]
]

#slide("How to Measure Your Product Quality? Idea 3")[
  You agree with stakeholders on testable (pass/fail) quality requirements.

  - *Pros:*
    - These requirements can be tested by all stakeholders (your team, your customer, etc.)
    - Their price can be estimated by tracing these requirements to related architectural decisions.
    - They can be put into a contract.
  - *Cons:*
    - They may not cover the perceived quality #cite("Garvin").
]

#slide("Quality Attribute Scenarios")[
  QA scenarios are a way to write unambiguous testable quality requirements #cite("Bck"). You should specify a realistic test to prove that a scenario is testable.

  A scenario has 6 parts #cite("QasArch"):

  #set text(size: 12pt)
  #table(
    columns: (auto, 1fr),
    inset: (x: 6pt, y: 4pt),
    stroke: 0.5pt + luma(75%),
    fill: (x, y) => if y == 0 { accent } else { none },
    text(fill: white, weight: "bold")[Part],
    text(fill: white, weight: "bold")[Short description],
    [Source of stimulus], [An entity that generates the stimulus (human, external system, sensor, etc.)],
    [Stimulus], [A condition (event) to be considered when it arrives at a system],
    [Environment], [A system's condition when a stimulus occurs],
    [Response], [The activity undertaken at the arrival of the stimulus],
    [Artifact], [Some artifact that is stimulated; may be the whole system or part of it],
    [Response measure], [The response to the stimulus should be measurable someway so that the quality requirement can be tested],
  )
]

#slide("A General Quality Attribute Scenario for Availability")[
  #align(center)[#image("images/lecture-4/availability-scenario.jpg", width: 87%)]

  #align(center)[Source: #cite("Bck")]
]

#slide("A QA Scenario for Moodle's Availability (AI-generated)")[
  #set text(size: 12pt)
  #table(
    columns: (auto, 1fr),
    inset: (x: 6pt, y: 3pt),
    stroke: 0.5pt + luma(75%),
    fill: (x, y) => if x == 0 { luma(96%) } else { none },
    [*Source of Stimulus*], [External: A large number of students (e.g., 500+) simultaneously using the system.],
    [*Stimulus*], [Fault (Crash): An unexpected number of concurrent database write operations, triggered by all students submitting a high-stakes quiz in the final minute before the deadline, causes the primary database server to crash.],
    [*Artifact*], [The Moodle application, specifically the database server and the services that depend on it (e.g., quiz submission, gradebook, session management).],
    [*Environment*], [Normal (Peak) Operation: The system is operating under a heavy but expected load on a weekday evening, which is a known peak usage time for students.],
    [*Response*], [The system's high-availability mechanism detects the primary database failure. It automatically initiates a failover to a redundant, standby database server. A brief maintenance page is displayed to users currently in the process of submitting, and the system then seamlessly restores their sessions once the failover is complete.],
    [*Response Measure*], [Full service is restored within 3 minutes. No more than 0.5% of student quiz submissions are lost and require resubmission. The system's availability must not drop below 99.9% during the academic term.],
  )
]

#slide("A Test for the QA scenario (AI-Generated)")[
  - *Step 1: Simulate the Stimulus*
    - In a staging environment, we use a load testing tool (JMeter) to simulate *500+ students* submitting a quiz at the exact same second.
  - *Step 2: Inject the Fault*
    - At the precise moment of peak submission load, we intentionally *crash the primary database server* to trigger the automated failover system.
  - *Step 3: Measure the Response*
    - The test is considered a *PASS* only if the system automatically recovers and meets these strict criteria:
      - *Recovery Time:* Full functionality is restored in *under 3 minutes*.
      - *Data Integrity:* Fewer than *0.5%* of student submissions are lost.
      - *Availability:* The overall uptime of *99.9%* is maintained.
]

#slide("How to get QA Scenarios?")[
  - Quality Attribute Workshop (see #link("https://github.com/inno-se/the-guide?tab=readme-ov-file#quality-attribute-workshop-qaw")[Quality attribute workshop])
    - During QAW, facilitators identify and clarify architectural drivers with stakeholders and the architect and then help stakeholders generate, prioritize, and refine QA scenarios based on these drivers.
  - Use an AI (similar to QAW; modify the steps below as necessary)
    - Load into the chat with the AI the existing product documentation, an existing quality model (ISO 25010, Q42, etc.) description, architectural drivers (see #link("https://github.com/inno-se/the-guide?tab=readme-ov-file#architectural-drivers")[Architectural drivers]), QAW procedure description.
    - Ask the AI to identify relevant quality attributes and come up with brief scenarios.
    - Ask stakeholders to validate and prioritize these scenarios.
    - Ask the AI to refine the most important scenarios.
    - Verify the requirements (consistency, feasibility, etc.)
    - Repeat steps as necessary.
]

#slide("Key Takeaways")[
  - Elicit quality requirements at the project start to better manage customer expectations.
  - Use QA scenarios to express testable quality requirements.
  - Derive specific quality requirements from generic quality attributes in existing quality models.
  - Use AI to produce requirements and specify corresponding tests.

  More info: #link("https://github.com/inno-se/the-guide?tab=readme-ov-file#quality")[Quality]
]

#section("Architecture")

// --- Architecture (source slides 19-26) -------------------------------------

#quiz[
  What is an architecture of a software system?

  Which software systems have an architecture?
]

#slide("What is an Architecture of a Software System?")[
  #cite("Bck"):

  The *software architecture* of a system is the set of structures needed to reason about the system. These structures comprise software elements, relations among them, and properties of both.

  A *structure is architectural* if it supports reasoning about the system and the system's quality attributes. The reasoning should be about attributes of the system that are important to some stakeholder(s).

  The attributes include *functionality* achieved by the system (see Functional Suitability in #cite("Iso25010")).
]

#slide("Why is an Architecture Important?")[
  #cite("Bck"):

  - The architecture connects (often abstract) business goals and requirements with the (concrete) tasks and implementation.
  - Designing an architecture helps avoid costly changes later.
  - An architecture will inhibit or enable a system's driving quality attributes.
  - A documented architecture enhances communication among stakeholders.
  - The decisions made in an architecture allow you to reason about and manage change as the system evolves.
  - An architecture defines a set of constraints on subsequent implementation.
]

#slide("What can Affect the Architecture?")[
  #cite("Bck"):

  Architecturally Significant Requirements (ASRs) derived from:

  - Functional requirements;
  - Quality requirements;
  - Business goals;
  - Constraints (business, technical)
]

#slide("When to Design an Architecture?")[
  #grid(
    columns: (1fr, auto),
    column-gutter: 18pt,
    [
      #cite("Bck"):

      Design mostly at the very beginning of the project.

      Continue designing and detailing the architecture throughout the project.

      Change the architecture in response to changing requirements.
    ],
    image("images/lecture-4/design-effort.jpg", height: 250pt),
  )
]

#slide("How to Design an Architecture?")[
  See:

  - Designing an Architecture #cite("Bck", rest: ", Ch. 20")
  - An LLM-assisted approach to designing software architectures using ADD #cite("LlmAdd")
]

#slide("How to Document the Architecture?")[
  See #cite("Bck", rest: ", Chapter 22"), #link("https://github.com/otrebmuh/EventTicketSystem/blob/2a928d226d43704457ad5be46b1e6b80f5bca8cb/Design/Architecture.md")[Example 1], #link("https://github.com/otrebmuh/HotelPricingSystem/blob/433e061f712a8748fdf04a6f767752e12be2f4b9/Design/Architecture.md")[Example 2]

  In your assignments, you'll have to document at least these:

  - Static views (context diagram, use case diagram, component diagram)
  - Dynamic views (sequence diagram)
  - Architectural decisions with justification

  The diagrams must include a key (legend).

  The documentation should be #link("https://github.com/inno-se/the-guide?tab=readme-ov-file#just-barely-good-enough-jbge")[just barely good enough] (of enough quality for the target audience at a given time).
]

#slide("Key Takeaways")[
  - The architecture should mostly be developed early in the project.
  - The architecture depends on architecturally significant requirements (ASRs).
  - The ASRs should be gathered early in the project.
  - The ASRs include quality requirements.
  - Hence, quality requirements should be gathered early in the project.

  More info: #link("https://github.com/inno-se/the-guide?tab=readme-ov-file#architecture")[Architecture]
]

#section("Agile")

// --- Agile (source slides 28-33) --------------------------------------------

#quiz[
  Which Agile approaches did you use?

  Why do you think they were Agile approaches?
]

#slide("Agile Manifesto")[
  #cite("AgileManifesto"):

  #align(center)[
    We are uncovering better ways of developing software by doing it and helping others do it. Through this work we have come to value:
  ]

  #v(0.12in)

  #align(center)[
    *Individuals and interactions* over processes and tools \
    *Working software* over comprehensive documentation \
    *Customer collaboration* over contract negotiation \
    *Responding to change* over following a plan
  ]

  #v(0.12in)

  #align(center)[
    That is, while there is value in the items on the right, we value the items on the left more.
  ]
]

#slide("Why use Agile for the ITPD Course?")[
  ITPD is like a training before the Industrial Project (IP) course.

  The IP lasts for two semesters. There will most probably be changes in requirements. You'll have to deliver value to real companies to succeed.

  Agile works well for small self-organizing cross-functional teams. Agile is about managing changes and delivering value early. During ITPD, you'll practice both in a low-stakes project under our supervision.

  We hope that the training during ITPD will help you succeed during the IP.
]

#slide("Agile Practices")[
  During the course, you'll apply practices from Agile approaches to improve the quality of your system through processes and tools.

  The focus will be on these approaches and associated practices/artifacts and deliverables (the list may be extended):

  - Extreme Programming, or XP
    - Test-driven development: Tests
    - Continuous integration: CI/CD pipelines
    - Design improvement: Documented architecture
  - Scrum #cite("ScrumGuide")
    - Scrum Team, Scrum Events (Sprint Planning, Review, Retrospective): Sprint tracking sheet
    - Product Backlog, Sprint Backlog: GitHub Issues, GitHub Projects
    - Increments: Milestones and Releases on GitHub
]

#slide("You Won't use Scrum in ITPD")[
  Please don't tell during the Industrial Project that you were trained to use Scrum!

  We teach you to apply Scrum practices, not the framework.

  As explained in the #cite("ScrumGuide") end note:

  #quoted["The Scrum framework, as outlined herein, is immutable. While implementing only parts of Scrum is possible, the result is not Scrum. Scrum exists only in its entirety and functions well as a container for other techniques, methodologies, and practices."]
]

#slide("Key Takeaways")[
  - Scrum practices aren't Scrum.
  - We believe that Agile practices can improve the quality of your software.
  - ITPD lets you train for the IP course.

  More info: #link("https://github.com/inno-se/the-guide?tab=readme-ov-file#agile")[Agile], #link("https://github.com/inno-se/the-guide?tab=readme-ov-file#scrum")[Scrum], #link("https://github.com/inno-se/the-guide?tab=readme-ov-file#projects")[Projects]
]

// --- References (source slide 34) -------------------------------------------

#slide("References")[
  #set text(size: 12.5pt)

  + [Sbok5]<Sbok5>: SBOK® Guide, 5th ed., #link("https://www.scrumstudy.com/sbokguide/download-free-buy-sbok#new-sbok-download")[https://www.scrumstudy.com/sbokguide/download-free-buy-sbok#new-sbok-download]
  + [Iso25010]<Iso25010>: #link("https://iso25000.com/index.php/en/iso-25000-standards/iso-25010")[https://iso25000.com/index.php/en/iso-25000-standards/iso-25010]
  + [Pmbok6]<Pmbok6>: PMBOK® Guide, 6th ed., #link("https://www.pmi.org/standards/pmbok")[https://www.pmi.org/standards/pmbok]
  + [Pmbok7]<Pmbok7>: PMBOK® Guide, 7th ed., #link("https://www.pmi.org/standards/pmbok")[https://www.pmi.org/standards/pmbok]
  + [Q42]<Q42>: #link("https://quality.arc42.org/")[https://quality.arc42.org/]
  + [Garvin]<Garvin>: #link("https://en.wikipedia.org/wiki/Eight_dimensions_of_quality")[https://en.wikipedia.org/wiki/Eight_dimensions_of_quality]
  + [QasArch]<QasArch>: Quality attributes of software architectures #link("https://www.cs.unibo.it/cianca/wwwpages/as/5.pdf#page=26")[https://www.cs.unibo.it/cianca/wwwpages/as/5.pdf#page=26]
  + [Bck]<Bck>: L. Bass, P. Clements, and R. Kazman, Software Architecture in Practice, 4th ed.
  + [LlmAdd]<LlmAdd>: An LLM-assisted approach to designing software architectures using ADD, #link("https://arxiv.org/abs/2506.22688")[https://arxiv.org/abs/2506.22688]
  + [AgileManifesto]<AgileManifesto>: Manifesto for Agile Software Development #link("https://agilemanifesto.org/")[https://agilemanifesto.org/]
  + [ScrumGuide]<ScrumGuide>: Scrum Guide™ #link("https://scrumguides.org/scrum-guide.html")[https://scrumguides.org/scrum-guide.html]
]
