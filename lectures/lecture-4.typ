// Quality, Architecture & Agile, lecture 4 of the IT Product Development course.

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

#title-slide()

#slide("Agenda")[
  - Product quality
  - Quality requirements
  - Architecture
  - Agile
  - Scrum
  // - Product Backlog
]

#section("Product Quality")

#quiz[
  What are examples of fast software?

  What are examples of slow software?

  How to measure the speed of software?

  Who decides which speed is enough?
]

#slide("Stakeholders and Quality")[
  #cite("Sbok5"):

  *Stakeholders* are all individuals and groups affected by the Scrum project.

  #line(length: 100%, stroke: 0.5pt + luma(70%))

  Your stakeholders are course instructors, your customer, team, users of your product.

  You should identify, manage, and meet their requirements and expectations about the quality of your product (e.g. security, speed) and project (e.g. time, budget, processes, etc.) to achieve success.

  *Important: stakeholders may not know how to describe the quality they want, so you should help them. This way, you can collaborate towards achieving the same desired quality.*
]

#slide("Product Quality")[
  #cite("Iso25010"):

  The *quality of a system* is the degree to which the system satisfies the #underline("stated") and #underline("implied") needs of its various stakeholders, and thus provides value.

  Stakeholders' needs (functionality, performance, security, maintainability, etc.) are precisely what is represented in the *quality model*, which categorizes the product quality into *characteristics* and *sub-characteristics* (a.k.a "quality attributes").
]

#slide("The ISO 25010 Quality Model")[
  #cite("Iso25010"):

  Quality → Characteristics → Sub-characteristics

  #image("images/lecture-4/iso-25010-model.jpg", width: 100%)
]

#slide("The Q42 Quality Model")[
  #grid(
    columns: (1fr, auto),
    column-gutter: 18pt,
    [
      #cite("Q42"):

      The arc42 quality model Q42 is a simple, pragmatic yet effective approach to *product and system quality*. It starts with *stakeholders' expectations* and *requirements*. From these, it derives 8 important *system properties*, which are sufficient to cover most, if not all, required, desirable or expected of the more than 100 _traditional_ qualities.
    ],
    image("images/lecture-4/q42-model.jpg", height: 255pt),
  )
]

#slide("Key Takeaways")[
  - Stakeholders have explicit and implicit expectations about the properties of the software system that you build. Help them uncover these expectations and manage these expectations.
  - Existing quality models cover most of the potentially desirable properties of software systems.
]

#section("Quality Requirements")

#slide("How to Measure Your Product Quality? Idea 1")[
  You ask stakeholders to assess the quality of a product version ("I know it when I see it.").

  - *Pros:*
    - Stakeholders know their needs and thus are the perfect assessors.
  - *Cons:*
    - It's probably too late. You should've agreed on the quality in advance to have shared expectations and to build adequate quality into your product and processes #cite("Pmbok7").
]

#slide("How to Measure Your Product Quality? Idea 2")[
  You use quality attributes from an existing model ("I don't want to think.").

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
    - They can be put into a contract ("service-level agreements").
  - *Cons:*
    - They may not cover the perceived quality #cite("Garvin").
]

#slide("Quality Attribute Scenarios (Quality Requirements, QR)")[
  *Quality attribute scenarios* (*QAS*) are a way to write unambiguous testable (pass/fail) *quality requirements* (*QR*) #cite("Bck").

  To prove that the requirement is testable, you define a *quality requirement test* (*QRT*) which specifies how to test the requirement.

  A scenario has 6 parts #cite("QasArch"):

  #set text(size: 12pt)
  #table(
    columns: (auto, 1fr),
    inset: (x: 6pt, y: 4pt),
    stroke: 0.5pt + luma(75%),
    fill: (x, y) => if y == 0 { accent } else { none },
    text(fill: white, weight: "bold")[Part], text(fill: white, weight: "bold")[Short description],
    [Source of stimulus], [An entity that generates the stimulus (human, external system, sensor, etc.)],
    [Stimulus], [A condition (event) to be considered when it arrives at a system],
    [Environment], [A system's condition when a stimulus occurs],
    [Response], [The activity undertaken at the arrival of the stimulus],
    [Artifact], [Some artifact that is stimulated; may be the whole system or part of it],
    [Response measure],
    [The response to the stimulus should be measurable someway so that the quality requirement can be tested],
  )
]

#slide("A General Quality Attribute Scenario for Availability")[
  #align(center)[#image("images/lecture-4/availability-scenario.jpg", width: 87%)]

  #align(center)[Source: #cite("Bck")]
]

#slide("Example: A QR for Moodle's Availability")[
  #set text(size: 12pt)
  #table(
    columns: (auto, 1fr),
    inset: (x: 6pt, y: 3pt),
    stroke: 0.5pt + luma(75%),
    fill: (x, y) => if x == 0 { luma(96%) } else { none },
    [*Source of Stimulus*], [External: A large number of students (e.g., 500+) simultaneously using the system.],
    [*Stimulus*],
    [Fault (Crash): An unexpected number of concurrent database write operations, triggered by all students submitting a high-stakes quiz in the final minute before the deadline, causes the primary database server to crash.],

    [*Artifact*],
    [The Moodle application, specifically the database server and the services that depend on it (e.g., quiz submission, gradebook, session management).],

    [*Environment*],
    [Normal (Peak) Operation: The system is operating under a heavy but expected load on a weekday evening, which is a known peak usage time for students.],

    [*Response*],
    [The system's high-availability mechanism detects the primary database failure. It automatically initiates a failover to a redundant, standby database server. A brief maintenance page is displayed to users currently in the process of submitting, and the system then seamlessly restores their sessions once the failover is complete.],

    [*Response Measure*],
    [Full service is restored within 3 minutes. No more than 0.5% of student quiz submissions are lost and require resubmission. The system's availability must not drop below 99.9% during the academic term.],
  )
]

#slide("Example: A QR test")[
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

#slide("How to obtain QAS?")[
  Quality requirements belong to *architectural drivers* that also include primary functional requirements, technical and business constraints, business goals. More about them later.

  To obtain QAS, you can conduct a *Quality Attribute Workshop* (*QAW*, #link("https://github.com/inno-se/the-guide?tab=readme-ov-file#quality-attribute-workshop-qaw")[more info here]).

  During QAW, facilitators (team members, AI) identify and clarify architectural drivers with stakeholders and the architect and then help stakeholders generate, prioritize, verify (check requirements for consistency, feasibility etc.) and refine QA scenarios based on these drivers.
]

#slide("Key Takeaways")[
  - Elicit quality requirements at the project start to better manage customer expectations.
  - Use quality attribute scenarios to express testable quality requirements.
  - Derive specific quality requirements from generic quality attributes in existing quality models.
  - Use AI to produce requirements and specify corresponding tests.
  - More info: #link("https://github.com/inno-se/the-guide?tab=readme-ov-file#quality")[Quality]
]

#section("Architecture")

#quiz[
  Which software systems have an architecture?

  What is the architecture of a software system?
]

#slide("What is the Architecture of a Software System?")[
  #cite("Bck"):

  The *software architecture* of a system is the set of *structures* needed to reason about the system. These structures comprise software elements, relations among them, and properties of both.

  A structure is *architectural* if it supports reasoning about the system and the system's quality attributes. The reasoning should be about attributes of the system that are important to some stakeholder(s).

  The attributes include *functionality* achieved by the system (see Functional Suitability in #cite("Iso25010")).
]

#slide("Why is the Architecture Important?")[
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

  The architecture is developed based on *Architecturally Significant Requirements* (ASRs) that can affect quality attributes of the system.

  ASRs are:

  - Primary functional requirements;
  - Quality requirements;
  - Business goals;
  - Constraints (business, technical)
]

#slide("When to Design the Architecture?")[
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

  Diagrams:
  - Static views (context diagram, component diagram)
  - Dynamic views (sequence diagram)

  #note[The diagrams must include a key (legend)!]

  Text:
  - *Architectural decision records* (*ADR*) - architectural decisions with justification; #linebreak() records have a uniform format
  - Diagram descriptions
]

#slide("Key Takeaways")[
  - The architecture should mostly be developed early in the project.
  - The architecture depends on architecturally significant requirements (ASRs).
  - The ASRs should be gathered early in the project.
  - The ASRs include quality requirements.
  - Hence, quality requirements should be gathered early in the project.
  - More info: #link("https://github.com/inno-se/the-guide?tab=readme-ov-file#architecture")[Architecture]
]

#section("Agile")

#quiz[
  Who of you heard about Agile?

  Is Agile an excuse to not deliver results on time?
]

#slide("What is Agile?")[  
  From #link("https://agilemanifesto.org/history.html")["History: The Agile Manifesto"]:

  #quote(
    "We hope that our work ... helps others in our profession to think about software development, methodologies, and organizations, in new – more agile – ways.",
    block: true,
  )
  
  Opinion: Agile is a response of independent thinkers about software development to inefficient corporate bureaucracy.

  Opinion: Agile is a mindset based on particular values, definitely not a process framework.
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

#slide("Agile and Architecture")[
  See #link("https://agilemanifesto.org/principles.html")[Principles behind the Agile Manifesto], #link("https://github.com/inno-se/the-guide?tab=readme-ov-file#agile-and-architecture")[Agile and architecture]

  #cite("Bck"):

  #set text(size: 12pt)
  #table(
    columns: (40%, 10%, 1fr),
    inset: (x: 6pt, y: 3pt),
    stroke: 0.5pt + luma(75%),
    fill: (x, y) => if x == 0 { luma(96%) } else { none },
    [*Agile Principle*], [*Agree?*], [*Architecture-centric View*],

    [The best architectures, requirements, and designs emerge from self-organizing teams.],
    [No],
    [No, they don’t. The best architectures are consciously designed by skilled, talented, trained, and experienced architects, as we describe in Chapter 20],

    [The most efficient and effective method of conveying information to and within a development team is face-to-face conversation.],
    [No],
    [This is nonsense for nontrivial systems. Humans invented writing because our brains can’t remember everything we need to remember.],

    [Business people and developers must work together daily throughout the project.],
    [Mostly],
    [Business goals lead to quality attribute requirements, which the architecture’s primary duty is to fulfill, as we discussed in Chapter 19.],

    [Build projects around motivated individuals. Give them the environment and support they need, and trust them to get the job done.],
    [Mostly],
    [While we agree in principle, many developers are inexperienced. So make sure to include a skilled, experienced, and motivated architect to help guide these individuals.],

    [Working software is the primary measure of progress.],
    [Mostly],
    [Yes, as long as “primary” is not taken to mean “only,” and as long as this principle is not used as an excuse to eliminate all work except coding.],

    [Simplicity — the art of maximizing the amount of work not done — is essential.],
    [Mostly],
    [Yes, of course, as long as it is understood that the work we are not doing can actually be jettisoned safely without detriment to the system being delivered.],

    [Deliver working software frequently, from a couple of weeks to a couple of months, with a preference for the shorter time scale.],
    [Yes!],
    [Absolutely, as long as this principle is not seen as precluding a thoughtful architecture. DevOps has a large role to play here, and we have seen, in Chapter 5, how architectures can support DevOps.],

    [Welcome changing requirements, even late in development. Agile processes harness change for the customer’s competitive advantage.],
    [Yes!],
    [Absolutely. This principle is served by architectures that provide high degrees of modifiability (Chapter 8) and deployability (Chapter 5).],
  )

  Does architecture-centric view agree with other principles? *Yes!*
]

#slide("Why use Agile for the ITPD Course?")[
  - You work in a team so you need to care about interactions with your teammates.

  #linebreak()

  - The ultimate goal is to produce working valuable software although we also require you manage the configuration to be able to comprehensively control the project.

  #linebreak()

  - We want you to learn to elicit and analyze requirements so you have to meet with the customer weekly. We don't provide a contract to negotiate.

  #linebreak()

  - The development of a new product can be unpredictable so you have to respond to changes although you should also keep in mind the general plan to know how it changes when changes arrive.
]

#section("Scrum")

#quiz[
  - What is Scrum?
  - How is it related to Agile?
]

#slide("Scrum Framework (visualized)")[
  #align(center + horizon, image("images/lecture-4/scrum-framework.jpg", width: 90%))
]

#slide("Definitions")[

  #cite("ScrumGuide")

  - *Scrum* - a lightweight process framework that helps people, teams and organizations generate value through adaptive solutions for complex problems.
  - *Product Backlog* - emergent, ordered list of what is needed to improve the product. It is the single source of work undertaken by the Scrum Team. Consists of *Product Backlog items (PBI)* - user stories, tasks, etc.
  - *Sprint* - a container for Scrum events (*Sprint Planning, Daily Scrum, Sprint Review, Sprint Retrospective*). _1 week long for this course._
  - *Sprint Backlog* - the *Sprint Goal*, the PBIs selected for the Sprint (*Sprint Backlog items* - *SBI*), plus the plan for delivering them.
  - *Sprint Goal* - communicates why the Sprint is valuable to stakeholders. Defined at the Sprint Planning.
]

#slide("Scrum events")[
  - *Sprint Planning (start of the Sprint)* - The team plans the work to be performed for the Sprint. They define the Sprint Goal and select the most important PBIs. Developers decompose the PBIs into smaller work items.
  - *Daily Scrum* - A daily 15-minute meeting where the team inspects the progress towards the Sprint Goal and produces an actionable plan for the next day of work.
  - *Sprint Review (near the end of the Sprint)* - The team inspects the outcome of the Sprint with the customer and determines future adaptations.
  - *Sprint Retrospective (after the Sprint Review)* - The team plans ways to increase quality and effectiveness.

  #note[Source: #link("https://scrumguides.org/scrum-guide.html")[The Scrum Guide]]
]

#slide("Scrum in ITPD")[
  In ITPD, we use elements of Scrum that align well with what's imporant in the course - regular communication inside the team and with the customer, iterative progress towards MVP, bounded amount of work each Sprint.

  Please don't tell during the Industrial Project that you were trained to use Scrum in ITPD!

  As explained in the #cite("ScrumGuide") end note:

  #quoted["The Scrum framework, as outlined herein, is immutable. While implementing only parts of Scrum is possible, the result is not Scrum. Scrum exists only in its entirety and functions well as a container for other techniques, methodologies, and practices."]
]

#section("Key Takeaways")

#slide("Key Takeaways")[
  - You should help stakeholders express their quality requirements and then collaborate with them to achieve the desired product quality.
  - You must think about quality early if you want to have control over your software system via its architecture.
  - Effective Agile practices should be supported by the well-thought-out architecture and configuration management.
  - Scrum is a well-documented framework in spirit of Agile that guides you how to deliver value every Sprint.
  - ITPD relies on Scrum practices that ensure team's collaboration and steady progress towards their goals.
]

// #quiz[
//   - Is there the team lead role in a Scrum team?

//   - Who is accountable for the project success in a Scrum team?

//   - Why not use full Scrum in ITPD?
// ]

// #section("Product Backlog")

// #slide("Discussion (3 minutes)")[
//   - What is a Product Backlog?
// ]

// #slide("DEEP product backlog")[
//   - *Detailed enough* - User stories on the Product Backlog that will be done soon need to be sufficiently well understood that they can be completed in the coming Sprint.
//   - *Estimated* - for well-understood PBIs, estimate how much effort, complexity, and risk it’ll require to complete these PBIs.
//   - *Emergent* - as more is learned, user stories and tasks on the Product Backlog will be added, removed, or reprioritized.
//   - *Prioritized* - The Product Backlog should be sorted with the most valuable items at the top and the least valuable at the bottom. By always working in priority order, the team is able to maximize the value of the product or system being developed.

//   #note[Sources: #link("https://www.mountaingoatsoftware.com/blog/make-the-product-backlog-deep")[Make the Product Backlog DEEP], #link("https://www.atlassian.com/agile/project-management/estimation")[Story Points and Estimation]]
// ]

// #slide("Detailed enough")[
//   #place(
//     top + left,
//     dx: 1.55in,
//     dy: 0.77in,
//     image("images/lecture-4/backlog-detail.png", height: 4in),
//   )
//   #place(bottom + left, dy: 0.18in)[
//     #note[Sources: #link("https://www.mountaingoatsoftware.com/agile/user-stories/product-backlog-refinement")[Product Backlog Refinement]]
//   ]
// ]

// #slide("Product Backlog Refinement Tips")[
//   - *Refine* the Product Backlog *every Sprint* to ensure the priorities are correct.
//   - *Have* at least *two Sprints* worth of stories *refined*.
//   - Refine *before the Sprint Planning*.
//   - More refined Product Backlog means easier Sprint Planning.
//   - *Who should do* the Product Backlog refinement?
//     + Product owner (must)
//     + Developers (should)
// ]

// #section("Sprint Planning")

// #slide("Discussion (2 minutes)")[
//   - When should you conduct the Sprint Planning?
// ]

// #slide("Sprint Planning")[
//   - *Refine the Sprint Goal:* \
//     what will be the overall value of your Sprint to the customer?
//   - Given the Sprint Goal, decide what can be *delivered* in the upcoming Sprint and discuss how that work will be achieved.
//   - *Who should attend* the Sprint Planning meeting?
//     + Product owner (must)
//     + Scrum master (must)
//     + Developers (must)
// ]

// #slide("Activity 3 - Sprint Planning (20 mins)")[
//   Start working on the Sprint Backlog for delivering the MVP v1:

//   + Define the Sprint Goal for the upcoming Sprint.
//   + Based on your Sprint Goal, pick all relevant PBIs from the refined Product Backlog \
//     (probably all user stories from the MVP v1 scope negotiated with the customer).
//   + Make sure all selected user stories are estimated in story points.
//   + Calculate how many story points are going in total into the Sprint.
//   + Select two or three user stories from the Sprint Backlog.
//   + Break each of them into two or three tasks. \
//     These user stories and tasks will be Sprint Backlog items (SBI).
//   + Provide two AC for each SBI.
//   + Assign a _responsible_ person for each SBI - who will work on the item.
//   + Assign an _accountable_ person for each SBI - a different person who will review the work and will be responsible for successful completion of that item.
//   + Ensure each SBI has enough information for developers to start working on that item.
// ]


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
