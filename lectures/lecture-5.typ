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

// Rebuilt from source slide 1: the title, the course name as a subtitle, and
// the institution, as lecture-1.typ does.
#let title-slide() = {
  pagebreak(weak: true)
  v(1.3in)
  align(center)[
    #text(size: 34pt, weight: "bold", fill: accent)[Quality Management]
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

// differential testing - caveat: lean version may not capture the intent
// TODO link paper about lean verification of natural-language math proofs

#title-slide()

#slide("Agenda")[
  - Quality management
  - Quality assurance
  - Quality requirement tests
  - Deployment, environments, automation
]

#section("Quality Management")

#quiz[
  - What can you compete on when other products can copy all of your features using swarms of LLM-powered agents?

    #linebreak()

    Example:

    #show quote: set block(spacing: 1.5em)

    #quote(block: true)[
      #link("https://github.com/storytold/photocraft")[PhotoCraft] - Image editing; an open-source, clean-room reimplementation of Adobe   Photoshop, rebuilt in pure Rust.

      Layers, masks, adjustment layers, layer styles, type, vectors, brushes and real PSD files, in a native app written entirely in Rust. Open source, offline, and yours.
    ]
]

#slide("Quality management - definition")[
  From #link("https://en.wikipedia.org/wiki/Quality_management")[Quality management], #link("https://www.iso.org/standard/9000")[ISO 9000:2026]:

  #show quote: set block(spacing: 1.5em)

  #quote(block: true)[
    *Quality management (QM)* ensures that an organization, product, or service consistently performs as intended.

    It has four main components:
    - *quality planning* - setting quality objectives and specifying processes necessary for providing products and services, and related sources to achieve quality objectives.
    - *quality assurance* - providing confidence that quality requirements will be fulfilled
    - *quality control* - fulfilling quality requirements
    - *quality improvement* - increasing the ability to fulfill quality requirements

    Customers recognize that quality is an important attribute when choosing and purchasing products and services. Suppliers can recognize that quality is an important differentiator of their offerings, and endeavor to *compete on the quality* of their products and the service they offer.
  ]
]

#slide("Quality management in Industrial Project and ITPD")[
  From #link("https://github.com/inno-se/the-guide#practice-areas")[Practice areas]:

  #show quote: set block(spacing: 1.5em)

  #quote(block: true, quotes: true)[
    Teams are able to show that they have established quality mechanisms consistent with the needs of their client. Quality mechanisms may include prevention mechanisms as well as detection mechanisms. Teams will collect and have available basic quality plans and metrics consistent with the phase of the project.
  ]
]

#slide("Key takeaways")[
  - Products can compete on quality
  - Quality activities should be planned
]

#section("Quality assurance")

#quiz[
  - When is the software ready for a release?
  - When is the quality good enough?
]

#slide("Verification and validation")[
  #show quote: set block(spacing: 1em)

  From #link("https://www.iso.org/standard/9000")[ISO 9000:2026]:


  #quote(block: true)[
    *Verification* - confirmation, through the provision of objective evidence, that specified requirements have been fulfilled.

    *Validation* - confirmation, through the provision of objective evidence, that the requirements for a specific intended use or application have been fulfilled.
  ]

  #linebreak()

  From #link("https://greg4cr.github.io/courses/spring26dit636/index.html")[Software Quality and Testing], #link("https://docs.google.com/presentation/d/e/2PACX-1vQzeOWER_ZN7qJu6akQ3RK793RDj4nYqVFRQKP9H-iXQSUH75X7MmFjsFAcj6rLPNHSkt4ubgg4pIp4/pub?start=false&loop=false&delayms=3000#slide=id.g6d84a29a70_0_139")[Lecture 1]:


  #quote(block: true)[
    *Verification* - Proving that software conforms to its functional and non-functional requirements. Shows that software is "high quality".

    *Validation* - Proving that software meets customer's true requirements, needs, and expectations. Shows that software is actually useful (harder!).
  ]
]

#slide("Verification examples")[
  - Design can be verified against requirements
  - Code can be verified against the design and requirements
  - Processes can be verified against compliance requirements
  - Agent behavior can be verified against the guardrails
  - The system behavior can be verified against a formal model (#link("https://github.com/welltyped-systems/verified-ledger#differential-testing-for-correctness-and-security")[example])
]

#slide("Quality gates")[
  From #link("https://www.sonarsource.com/resources/library/quality-gate/")[Quality gate]

  #quote(
    block: true,
  )[A quality gate is a configurable checkpoint in the software development lifecycle that enforces predefined standards before code can advance to the next stage.
  ]

  V in ETVX (Entry, Task, Validation/Verification, Exit)

  Example of quality gates for a PR (current stage: submitted; next stage: merged):
  - All links resolved
  - No Markdown linter warnings or errors
  - All unit tests passed
  - All acceptance criteria satisfied
]

#slide("Key takeaways")[
  ITPD focus:
  - Manual verification of changes against acceptance criteria
  - Automated verification of code via tests
  - Validation through regular meetings with the customer
]


#section("Quality requirement tests")

#quiz[
  - How to prove that the system satisfies a quality requirement?
  - Which quality checks to implement first - the easiest ones or the most important ones?
]

#slide("The ISO 25010 Quality Model")[
  #cite("Iso25010"):

  Quality → Characteristics → Sub-characteristics

  #image("images/lecture-4/iso-25010-model.jpg", width: 100%)
]

#slide("Example: A QR for Moodle's Availability")[
  - Business importance: High
  - Technical risk: High

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

#slide("Key takeaways")[
  - Quality requirements should be testable
  - Prove their testability by implementing QRTs
  - Implementing QRTs requires effort which should be justified
  - Implement QRTs for the most important quality requirements first
  - Negotiate the priorities with the customer
]


#section("Deployment, environments, automation")

#quiz[
  - How to reduce effort required for quality assurance?
]


#slide("Environments")[
  #cite("SoftArchPrac"):

  #quote(block: true)[
    *Deployment* is a process that starts with coding and ends with real users  interacting with the system in a *production environment*.
    
    *Development environment* - Where code for your service is developed and submitted to a version control system. Code is usually tested locally (e.g. via unit tests).

    *Integration environment* - Where an executable version of the service is built from the existing, changed, and new code. Unit and integration tests can be run against the built version.

    *Staging environment* - Where other quality requirements are tested. This environment should represent the production environment well enough so that if quality requirement tests pass in this environment, the confidence is high that they would pass in the production environment.

    *Production environment* - Where the service is monitored closely until all parties have some level of confidence in its quality.
  ]
]

// #slide("Reproducibility")[
//   To ensure that testing results are reproducible, environments should be 
// ]

#slide("Automation")[
  #cite("SoftArchPrac"):

  #quote(block: true)[
    *Continuous integration* - automated running of tests in the integration environment.
    
    *Continuous deployment* - fully automated deployment (without human intervention).

    *Continuous delivery* - automated deployment with deliberate gates requiring human intervention (perhaps due to regulations or policies or constraints).
  ]
]

#slide("Key takeaways")[
  - Quality management lets you build systems that behave as intended in production
  - Automating quality activities helps you reduce effort to achieve desired quality requirements
]


// --- References (source slide 34) -------------------------------------------

// TODO revise

#slide("References")[
  #set text(size: 12.5pt)

  + [Iso25010]<Iso25010>: #link("https://iso25000.com/index.php/en/iso-25000-standards/iso-25010")[https://iso25000.com/index.php/en/iso-25000-standards/iso-25010]
  + [SoftArchPrac]<SoftArchPrac>: L. Bass, P. Clements, and R. Kazman, Software Architecture in Practice, 4th ed.
]
