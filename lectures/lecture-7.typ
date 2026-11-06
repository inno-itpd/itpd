// Usability testing, lecture 7 of the IT Product Development course.
//
// Converted by hand from tmp/itpd-2025/lectures/lecture-7.pdf (21 slides).
// The deck follows the export slide for slide, in the same order, with these
// deviations recorded on purpose:
//   - The title slide follows the pattern of the other decks: the export's
//     "Product Development" subtitle becomes "Lecture 7, IT Product
//     Development", and Innopolis University, 2026 is added.
//   - An Agenda slide and four section dividers are new. The export has no
//     agenda and no section breaks; every source slide still has its own page.
//   - The source's opening and closing Review slides keep the title "Review"
//     rather than becoming Quiz slides, because the source uses them to recap.
//   - The table on source slide 14 is redrawn as a Typst table.
//   - The cycle diagram on slide 4, the SEQ and ASQ scales on slides 10 and
//     11, the SUS response format on slide 12, and the SUS percentile chart on
//     slide 18 are the JPEGs extracted with pdfimages -j, committed under
//     images/lecture-7/.
//   - The wording is copy-edited lightly: "background" becomes "backgrounds",
//     "Ctrl-F key" becomes "the Ctrl-F key", "Match user" becomes "Match each
//     user", and the below-average sentence becomes "A score below 68 is
//     considered ...". The questions, survey items, scales, and numbers are
//     unchanged.

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
    #text(size: 34pt, weight: "bold", fill: accent)[Usability testing]
    #v(0.16in)
    #text(size: 20pt, fill: muted)[Lecture 7, IT Product Development]
  ]
  v(1.42in)
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
  - Usability testing
  - Running the test
  - Post-test surveys
  - Analyzing the results
]

// --- Usability testing ------------------------------------------------------

#section("Usability testing")

#slide("Review")[
  What is usability?

  Why do you think you need to test it?
]

#slide("Usability testing")[
  Adapted from #link("https://www.usertesting.com/blog/common-usability-testing-questions")[Usability testing]:

  - *Goal:* Identify problems end-users can have before releasing the product, understand user behavior, get feedback to improve the product.

  - *How:* Evaluate the product by testing it with representative users and observing their behavior.

  - *What:*
    - Collect qualitative and quantitative data.
    - Determine the participant's satisfaction with the product.

  Can be used to evaluate #link("https://iso25000.com/en/iso-25000-standards/iso-25010")[Interaction Capability (ISO/IEC 25010)] of your product.
]

#slide("Usability testing: focus")[
  #grid(
    columns: (0.45fr, 1fr),
    column-gutter: 18pt,
    [
      *Focus on:*
      - Measure
      - Data
      - Learn
    ],
    [#figure(
      image("images/lecture-6/lean-startup-circle.png", height: 265pt),
      caption: "Ries' Lean startup, "
        + link("https://blog.babak.no/2016/11/07/six-management-ideas-applied-to-research-leadership/")[source],
    )],
  )
]

#slide("Usability test process outline")[
  Adapted from #link("https://www.usertesting.com/resources/guides/usability-testing")[Usability testing] and #link("https://www.usertesting.com/resources/guides/usability-testing")[How to run a usability test]:

  + Select the testing goal and audience
  + Decide on the scope, budget, time
  + Establish evaluation criteria (metrics)
  + Decide on tasks for the test
  + Instrument your system with relevant metrics
  + Prepare scripts (instructions, tasks, questions, etc.)
  + Screen participants (filter out irrelevant participants)
  + Run pre-test survey
  + Run test
  + Run post-test survey
  + Organize data
  + Interpret and analyze
  + Learn
]

#slide("Usability testing vs User acceptance testing")[
  Adapted from #link("https://testsigma.com/blog/user-acceptance-testing-vs-usability-testing/")[User Acceptance Testing vs Usability Testing]:

  - *Usability testing* - Used to uncover usability problems. Performed during the design and development.
  - *User acceptance testing* - Used to uncover mismatches with requirements and expectations of stakeholders. Usually happens close to the final release of the product.
]

#key-takeaways("Usability testing")[
  - Usability testing is used to uncover potential end-users' problems before releasing the product to end-users.
  - Usability testing requires finding real participants representing the end-users.
  - Usability testing relies on qualitative and quantitative data, and you should plan in advance how you collect and evaluate it.
]

// --- Running the test -------------------------------------------------------

#section("Running the usability test")

#quiz[
  - What should you have scripted for a usability test?
]

#slide("Run the pre-test survey")[
  Adapted from #link("https://www.usertesting.com/blog/common-usability-testing-questions")[Common usability testing questions]:

  - *Goal:* Learn more about your participant before the test influences how they might answer.

  ---

  Examples of questions:
  - What could you tell about your current role?
  - What work-related mobile apps do you use?
  - How familiar are you with ...?
]

#slide("Run the test")[
  Adapted from #link("https://www.usertesting.com/blog/how-usability-testing-works")[How user testing works]:

  - Give users tasks where they use the software without your assistance and think out loud.

  - Ask (open-ended) questions, starting with more general ones and getting to more specific ones.

  - For every task, ask for feedback after they complete that task.

  - Observe what the user does and take notes.

  - Record the user's device screen to later be able to match user's comments and visible interactions.
]

#slide("Run the post-test survey")[
  Adapted from #link("https://www.usertesting.com/blog/common-usability-testing-questions")[Follow-up usability test questions]:

  - Get feedback on the experience overall
  - See if there’s something participants want to talk about that you didn’t ask

  ---

  Examples of questions:
  - What was your overall impression of the experience?
  - If you could change anything about it, what would you change?
  - Is there anything we didn’t ask you about this experience that we should have?
]

#key-takeaways("Run the usability test")[
  - Let participants complete specific tasks without your guidance, like real end-users would do.
  - Ask questions before, during, and after the test.
]

// --- Post-test surveys ------------------------------------------------------

#section("Usability test surveys")

#slide("Survey frameworks")[

  Adapted from #link("https://www.uxtesttools.com/?tab=standard-interfaces")[UX testing tools]:

  - Post-task (after a single task is completed):
    - Single Ease Question (SEQ)
    - After-Scenario Questionnaire (ASQ)

  - Post-test (during the post-test survey)
    - System Usability Scale (SUS)

  - Any stage:
    - Open-ended questions
]

#slide("Single Ease Question (SEQ) [post-task]")[
  #v(0.25in)
  #align(center)[
    #text(size: 18pt)[Overall, how difficult or easy was the task to complete?]
  ]
  #v(0.35in)
  #align(center, image("images/lecture-7/seq-scale.jpg", width: 92%))
]

#slide("After-Scenario Questionnaire (ASQ) [post-task]")[
  + Overall, I am satisfied with the ease of completing the task in this scenario.
  + Overall, I am satisfied with the amount of time it took to complete the task in this scenario.
  + Overall, I am satisfied with the support information (online help, messages, documentation) when completing the task.

  #v(0.15in)
  #align(center, image("images/lecture-7/asq-scale.jpg", width: 92%))
]

#slide("System Usability Scale (SUS) [post-test]")[
  *Standard 10 questions in order:*
  + I think that I would like to use this system frequently.
  + I found the system unnecessarily complex.
  + I thought the system was easy to use.

  #note[…]

  With the following response format:

  #align(center, image("images/lecture-7/sus-response-format.jpg", width: 55%))

  Source and details: #link("https://measuringu.com/sus/")[https://measuringu.com/sus/]
]

#slide("Open-ended questions")[
  *Goal:* fill in missing context.

  Ask more specific questions about new pieces of information that the user mentions.

  ---

  Possible approaches for designing questions:
  - #link("https://www.betterevaluation.org/methods-approaches/methods/orid")[ORID]
  - #link("https://inkubator.si/wp-content/uploads/2020/05/The-Mom-Test-by-@robfitz.pdf")[The Mom Test]
]

// --- Analyzing the results --------------------------------------------------

#section("Analyzing the results")

#slide("Organize: observation")[
  #table(
    columns: (1fr, 1fr),
    inset: (x: 8pt, y: 6pt),
    stroke: 0.5pt + luma(70%),
    fill: (x, y) => if y == 0 { luma(95%) } else { none },
    [*Correct usability (Gibson affordances)*], [*Exploratory actions (Norman affordances)*],
    [The user saw the search bar on the interface and used it],
    [The user was using the Ctrl-F key to get to the "search" feature],

    [#text(fill: muted)[…]], [#text(fill: muted)[…]],
  )

  ---

  Adapted from #link("https://www.linkinglearning.com.au/understanding-affordances-part-one/")[Understanding affordances]:

  - *Gibson*: affordances exist whether or not they are perceived by the user – they exist independently, and therefore don’t change as the needs and goals of the user changes.

  - *Norman*: affordances may exist in actuality, but they may also exist only in the perception of the user – based on previous experience or knowledge.

  - Therefore, while one person may see an iPad as a useful device for checking email and watching YouTube, another might see it as a stylish cutting board.
]

#slide("Organize: match user")[
  Match each user to the corresponding:
  - pre-test survey
  - specific task
  - observations
  - post-test survey
]

#slide("Recap: System Usability Scale (SUS)")[
  *Standard 10 questions in order:*
  + I think that I would like to use this system frequently.
  + I found the system unnecessarily complex.
  + I thought the system was easy to use.

  #note[…]

  With the following response format:

  #align(center, image("images/lecture-7/sus-response-format.jpg", width: 55%))

  Source and details: #link("https://measuringu.com/sus/")[https://measuringu.com/sus/]
]


#slide("Interpret and analyze: example")[
  *Interpreting SUS results:*

  By adding the scores together you get a 0-50 scale.

  To convert it to 0-100, multiply by 2.

  The result *is not a percentage!*
  
  ---
  
  The median score, based on 500+ surveys, is

  #align(center)[*68 points = 50th percentile*]
  
  A score below 68 is considered below median, or in lower 50% of observations, and vice versa.
]

#slide("Interpret and analyze: example")[
  #align(center, image("images/lecture-7/sus-percentile.jpg", width: 72%))
]

#slide("Learn")[
  - Write down what you have learned after interpreting and analyzing the results.
  
  - Decide what to change in your approach to designing user tests and to building the product.
]

// --- Review and close -------------------------------------------------------

#quiz[
  What is usability?

  Why do you think you need to test it?

  What do we focus on in usability testing?

  Describe the usability testing process.

  Describe the surveys that we can use.

  What is SUS?

  How do we interpret SUS results?
]