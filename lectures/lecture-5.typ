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
  - Quality attributes (revised)
  - Quality requirement tests
  - Deployment environments
  - Quality planning in ITPD
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
  From #link("https://en.wikipedia.org/wiki/Quality_management")[Quality management]:
  
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


#section("Product Quality (revised)")

#section("Quality Assurance")

#slide("Verification and Validation")[
  verification - inspection, demonstration, testing, analysis
  testing - dynamic, analysis - linters
]


// --- References (source slide 34) -------------------------------------------

// TODO revise

#slide("References")[
  #set text(size: 12.5pt)
  
  + [Iso25010]<Iso25010>: #link("https://iso25000.com/index.php/en/iso-25000-standards/iso-25010")[https://iso25000.com/index.php/en/iso-25000-standards/iso-25010]
  + [QasArch]<QasArch>: Quality attributes of software architectures #link("https://www.cs.unibo.it/cianca/wwwpages/as/5.pdf#page=26")[https://www.cs.unibo.it/cianca/wwwpages/as/5.pdf#page=26]
  + [Bck]<Bck>: L. Bass, P. Clements, and R. Kazman, Software Architecture in Practice, 4th ed.
]
