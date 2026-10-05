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

// Rebuilt from source slide 1: the title, the course name as a subtitle,
// and the institution.
#let title-slide() = {
  pagebreak(weak: true)
  v(1.3in)
  align(center)[
    #text(size: 34pt, weight: "bold", fill: accent)[Course introduction]
    #v(0.16in)
    #text(size: 20pt, fill: muted)[IT Product Development]
  ]
  v(1.42in)
  align(center)[
    #text(size: 14pt, fill: muted)[Innopolis University, 2026]
  ]
}

// --- Title and agenda (source slides 1-2) ----------------------------------

#title-slide()

#slide("Agenda")[
  - Course philosophy
  - Course structure
  - Product ideas
  - Team formation
  - Attendance
]

// --- Course philosophy -----------------------------------------------------

#section("Course philosophy")

#slide("What this course is about")[
  ITPD prepares you for the Industrial Project course (next semester)

  *Practice areas:*
  - Configuration management
  - Quality management
  - Requirements engineering
  - Planning
  - Tracking progress
  - Risk management

  #note[Not about architecture - you'll have a course next semester]
  
  // TODO consider clarifying
  // #note[Architecture as a subject is next semester. Week 4 draws a sketch, only to show which quality goals are worth reaching for.]
]

#slide("Software engineer levels")[
  A software engineer should know how to:
  + Write code.
  + Write software.
  + Write software in a team.
  + Write software in a team so that someone uses this software.
  + Write quality software in a team so that someone uses this software.
  + Write quality software in a team to satisfy customer needs. #tag[ITPD]
  + Write quality software in a team to satisfy customer business needs.

  #note[Industrial Project deals with #7 (customers come from real companies)]
]

#slide("Quality software in a team to satisfy customer needs")[
  #term[Someone needs → Customer needs]
  - Hypothesis-driven
  - Supported by data
  - Requirements engineering tools

  #term[In a team]
  - Best practices in product development relevant for the team
  - Tracking team progress based on data

  #term[Quality software]
  - Monitoring quality (GQM)
  - Automation (Git, testing, CI/CD)
]

#slide("Review questions (course philosophy)")[
  What is this course about?

  What are the software engineer levels?

  True or false?: You will be told exactly how to build software.
]

// --- Course structure ------------------------------------------------------

#section("Course structure")

#slide("Main course flow")[
  - Course instructors present product ideas.
  - Instructors are customers for these products.
  - Students select products.
  - Instructors assign products to teams.
  - Students work in teams of 3-4 people.
  - Each team works on one product.
  - Students complete weekly assignments.
  - Students defend their projects at the end of the course.

  #note[\* Product - result of a project; we assess your project activity]
]

#slide("Course grade breakdown")[
  Full grade: 100%

  Pass: ≥75%
  - 63% = 9 assignments × 7%
  - 10% = attendance
  - 20% = project defense (end of the course)
  - 7% = peer evaluation (end of the course)

  *Assignment grade:*
  - Coordination (meetings with customer)
  - Implementation (code, processes evidence, etc.)
]

#slide("Good news")[
  It is very easy to earn points if you:
  - Learn new things
  - Help other students to learn new things
  - Do the work
  - Coordinate with stakeholders
  - Build quality software that customers use or at least want to use
]

#slide("Assignments")[
  There are 9 assignments that steer project work.

  *Deadlines:*
  - Soft deadline - Thursday, 23:59
  - Hard deadline - Friday, 23:59
  - Late submissions: each day after the hard deadline -> -10% of the grade

  *Assignment submission:*
  - Work on the assignment in your repository on GitHub.
  - Merge the report and everything it links into `main` before you submit.
  - Submit a report and a snapshot of the repository on Moodle.
  - TBD: also submit all your sessions with an agent on Moodle.
]

#slide("Appeals for assignment grades")[
  Course instructors will assess your work subjectively and can make mistakes.

  If you disagree with the grade:
  + Fix identified problems that really exist
  + Ask one of the instructors to review
  + Write which problems were addressed and which weren't and why
]

#slide("Implementation")[
  Everything related to the project:
  - Code
  - Documentation
  - Configuration
  - CI/CD
  - Charts
  - Tasks
  - Issues
  - …
]

#slide("Coordination with stakeholders")[
  *Your team*
  - Know how to lead and how to follow
  - Know when to switch

  *Your customer*
  - Solve problems, don't create more problems

  *Product users*
  - Build something people want to use

  *Course instructor*
  - Participate in lectures
  - Ask questions
  - Suggest course improvements
]

#slide("Use of AI")[
  In this course the use of AI is allowed and encouraged if the following conditions are met:
  - You understand you're accountable for the artifacts that you submit.
  - You can clearly state where and how you used AI tools.
  - You are comfortable with privately submitting AI chat sessions to Moodle.
]

#slide("Review questions (course structure)")[
  What are the course grade components?

  What's the threshold for passing the course?
]

#slide("Questions?")[
  #v(1.4in)
  #align(center)[
    #text(size: 28pt, weight: "bold", fill: accent)[Questions?]
  ]
]

#slide("What's next?")[
  #v(0.4in)
  - Product ideas
  - Team formation
  - Attendance
]

// --- Product ideas ---------------------------------------------------------

#section("Product ideas")

#slide("List of available projects")[
  + Modular LLM gateway
  + Running coach app
  + Workspace for AI collaboration
  + An AI harness for elderly care
  + Sentence cards generator
  + Debugging gym
]

#slide("1. Modular LLM gateway")[
  #term[Problem]
  Existing LLM gateways don't fit the specific company use case (e.g. filtering out sensitive information in a specific way).

  #term[Solution]
  Design an LLM Gateway where everything is a plugin (or some core + set of plugins).
  As a part of the project you'll need to develop the core and a set of common plugins.
  Plugins are meant to be written by some coding agent so you need to provide enough context for people to be able to write their own plugins using coding agents.

  #term[Deployment] VPS

  #term[Target end users] Employees of a company with specific gateway policies
]

#slide("2. Running coach app")[
  #term[Problems]
  - Tracking your running goals and your progress while running is inconvenient (need to decide on the go what to do to achieve goals).
  - Paying to a running coach to encourage you while running is too costly.

  *Goal examples:* run for 15 minutes 3 days per week or run sessions with different levels of intensity (e.g. run slow for 3 minutes, run as fast as you can for 5, and do medium speed for 15 minutes)

  #term[Solution]
  The app stores the goals, collects stats (duration of the run, intensity, location, direction, bpm (from watches), etc.) from the phone and guides you via headphones ("slow down", "speed up", "your speed is X", etc.).

  #term[Deployment] On-device, to be uploaded to one of the open-source app stores

  #term[Target end users] Goal-oriented runners
]

#slide("3. Workspace for AI collaboration")[
  #term[Problem]
  When working in a team and using LLMs for brainstorming, sharing the query and the results is hard.
  Especially it is hard if you need to review the results and post it as context in another query.

  #term[Solution]
  Infinite whiteboard space with realtime update for multiple users.
  Collaborators can draw, write, and query LLMs.
  The board will have a special type of elements that can connect to LLMs and display the results.
  The simplest example is a query widget where user can write a query and it goes to ChatGPT.
  The response from the LLM is displayed in the widget.
  There might be other types of widgets like picture or chart generator.
  We could chain the results into other elements.

  #term[Deployment] Back-end: there should be an option for a dedicated server that provides an LLM backend.
  Front-end: run in a browser, all LLM connection keys stored locally.

  #term[Target end users] Teams integrating LLMs into their workflow.
]

#slide("4. An AI harness for elderly care")[
  #term[Problem]
  There is lack of study of how AI harnesses can help with caring about elderly people.

  #term[Solution]
  Think of a specific environment and the way elderly people interact with the world and help bringing AI assistance to them.
  For this project, we'll work on a Rust-based application (open to other suggestions but it has to be efficient, compilable, embeddable).
  The goal of the project is not to fiddle with LLMs but research and create a convenient/engaging interface for elderly people to interact with LLMs.

  #note[A nice 80 year old test subject who speaks Russian is also included :) If the project kindles her interest it will be quickly shared with her 92 year old friend and you will have another test user.]

  #term[Deployment] Raspberry Pi with a touch screen, camera, microphone, and a speaker.

  #term[Target end users] Elderly people, people caring about them
]

#slide("5. Sentence cards generator")[
  #term[Problem]
  It's too tedious to update an Anki collection of flashcards with sentences, translations, and pronunciations for learning a new language, e.g. re-prioritize cards to learn particular words first.

  #term[Solution]
  An app that generates flashcards with sentences in the user's known language and the target language using an LLM for words selected by the user in texts uploaded by the user.
  Support several languages for the content and for the interface (Russian, English, German).
  Support letting a teacher to connect and review cards.
  Support spaced repetition.

  #note[*Proof of concept:* #link("https://github.com/deemp/songs2anki")[https://github.com/deemp/songs2anki]]

  #term[Deployment] VPS, local host

  #term[Target end users] Russian, English, German language learners and teachers
]

#slide("6. Debugging gym")[
  #term[Problem]
  Lack of little hands-on exercises for training debugging skills on particular kinds of problems.

  #term[Solution]
  A site that generates exercises for a given kind of problems using an LLM and lets users connect via VS Code and debug.
  A public gallery with exercises.

  #term[Deployment] VPS

  #term[Target end users] Software developers, programming language learners.
]

// --- Team formation and attendance ----------------------------------------

#section("Team formation")

#slide("Team formation")[
  Record info about your team in the sheet.

  Before the first assignment submission, it's still possible to change your team if another team wants to take you.

  After that, you will not be able to switch the team till the end of the course.
]

#section("Attendance")

#slide("Attendance")[
  #v(0.5in)
  #link("https://baam.tatar/")[https://baam.tatar/]
]
