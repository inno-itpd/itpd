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
#set list(indent: 1.2em, body-indent: 0.45em, spacing: 1em)
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

#let title-slide() = {
  pagebreak(weak: true)
  v(1in)
  align(center)[
    #text(size: 34pt, weight: "bold", fill: accent)[Hypothesis-driven #linebreak() product development]
    #v(0.16in)
    #text(size: 20pt, fill: muted)[Lecture 6, IT Product Development]
  ]
  v(1.42in)
  align(center)[
    #text(size: 14pt, fill: muted)[Innopolis University, 2026]
  ]
}

// Every section opens with a quiz and closes with its Key Takeaways slide.
#let quiz(body) = slide("Quiz")[#body]

#let key-takeaways(body) = slide("Key takeaways")[#body]

#title-slide()

#slide("Agenda")[
  - Hypothesis-driven entrepreneurship
  - Metrics
  - Product analytics
  - Observability
]

#section("Hypothesis-driven entrepreneurship")

#quiz[
  - Which problem are you solving for yourself by building a product in the ITPD course?
  - Which problem do entrepreneurs solve for themselves by building products?
  - Why can you afford yourself not to try other product ideas in the ITPD course?
]

#slide("Hypothesis-driven entrepreneurship")[
  The goal is to fail fast and to not waste resources on the wrong direction.

  ---

  From #link("https://www.hbs.edu/faculty/Pages/item.aspx?num=41302")[Hypothesis-Driven Entrepreneurship]:

  #show quote: set block(spacing: 1em)

  #quote(block: true)[
    "Lean startups" use hypothesis-driven approach to evaluate entreprenerial opportunities.

    They state falsifiable hypotheses about their business model and test them using MVPs.

    Based on test feedback (quantitative and qualitative data), they decide whether to *keep* the business model, to *pivot* by updating the model, or to *abandon* the model.
  ]
]

#slide("Example: hypothesis about the business model")[
  #show quote: set block(spacing: 1em)

  #quote(block: true)[
    *Willingness to pay (viability)*:

    - *Belief*: We believe coaches will pay 500 RUB a month to stop scheduling meetings by hand.
    - *Test*: paid online meeting booking service pilot offered to the 20 coaches who finish onboarding.
    - *Falsified if*: fewer than 3 accept the pilot, or more than half cancel within four weeks.
  ]
]

#slide("Lean startup cycle")[
  #figure(
    image("images/lecture-6/lean-startup-circle.png", height: 70%),
    caption: "Ries' Lean startup, "
      + link("https://blog.babak.no/2016/11/07/six-management-ideas-applied-to-research-leadership/")[source],
  )
]

#key-takeaways[
  - Make testable hypotheses so that you can set up experiments.
  - Plan experiments and learn from them, don't just try things.
]

#section("Metrics")

#quiz[
  - Which metrics should you care about in your app?
]

#slide("Metric tree")[
  #grid(
    columns: (1fr, auto, auto),
    column-gutter: 14pt,
    [From #link("https://mixpanel.com/blog/metric-tree/")[What is a metric tree]:

      "Focus Metric" - key actionable metric, a.k.a. "North Star metric"

      L1 input metrics feed into the focus metric.

      L2 input metrics feed into the L1 metrics.

      Metrics can be selected via #link("https://en.wikipedia.org/wiki/GQM")[GQM].
    ],
    image("images/lecture-6/metrics-tree.png", height: 70%),
  )
]

#slide("Some types of metrics")[
  From #link("https://en.wikipedia.org/wiki/Lean_startup#Actionable_metrics_vs_vanity_metrics")[Lean startup]:

  - *Actionable metrics* - can lean to informed business decisions and subsequent actions.
  - *Vanity metrics* - give "the rosiest picture possible" but don't reflect key business drivers. Opposite of actionable metrics.

  From #link("https://producthq.org/product-analytics/counter-metrics/")[Counter metrics]:

  - A *counter metric* is what you watch to ensure gains on the north star didn't come at the expense of customers or the business.

    Example:

    - North star: completed paid bookings per active coach per week.
    - Counter-metric: cancellation and no-show rate within 7 days of booking.
]

#key-takeaways[
  - Focus on one key actionable metric and connect other metrics to it.
  - Introduce counter-metrics to avoid gaming the key metric.
]

#section("Product analytics")

#quiz[
  - How to find out which features are unnecessary in your app?
  - How to discover where users behave differently from what you expected?
  - How to identify which of your expectations about the user experience are wrong?
]

#slide("Product analytics")[
  From #link("https://www.atlassian.com/agile/product-management/product-analytics")[What every product manager needs to know about product analytics]:

  - Product analytics tracks and analyzes user engagement and behavior (e.g. clicks) to inform product decisions and improvements.

  - Data-driven insights help teams understand feature usage, prioritize changes, and pay off "empathy debt." (show users that "we hear you")

  - Combining analytics with qualitative feedback provides a complete picture of user needs.

  - Instrument your product with analytics and use findings to guide feature development and optimization.
]

#slide("Testing a hypothesis about a product change")[
  Possible process for testing hypotheses - from #link("https://www.atlassian.com/agile/product-management/product-analytics")[What every product manager needs to know about product analytics]:

  - Define a clear hypothesis for a product change.

  - Build the cheapest possible implementation of this change, loaded with any analytics events you need, that will allow you to test the hypothesis.

  - Deploy the change to a subset of customers in an A/B test.

  - Wait for results.

  - Do a breakdown of the results, with the help of an analyst in the case of more complex changes, and decide whether the change was successful.
]

#slide("Example: hypothesis about a product change")[
  *Willingness to book (engagement)*:

  - *Belief*: We believe that making the "Book a meeting" button larger on a coach's availability page will raise completed bookings by 5% relative, because visitors currently miss the small link among the profile text.

  - *Test*: A/B test for two weeks: half the visitors to coach pages see the current link, half see the larger button; compare completed bookings per visitor, with analytics events on page view, slot selected, and booking confirmed.

  - *Falsified if*: the 95% confidence interval for the lift lies entirely below +5% relative; if it includes zero, the test is inconclusive and needs more traffic, not a verdict.
]

#slide("Key takeaways")[
  From #link("https://www.atlassian.com/agile/product-management/product-analytics")[What every product manager needs to know about product analytics]:

  #quote(block: true)[
    - Think in advance about all events in your system that you need to capture before running experiments.

    - Instrument your system to capture as many such events as possible automatically.

    - Make dry runs with dummy data to identify gaps.

    - Check that your hypothesis is testable given your data and tooling.

    - Make sure you're testing on enough users and for a long enough period of time. You want to make sure your results are statistically significant.

    - Be prepared to discard bad ideas quickly.
  ]

]

#section("Observability")

#quiz[
  - Which data can help understand why the system malfunctions since the start of this week?
]

#slide("Observability pillars")[
  From #link("https://www.ibm.com/think/insights/observability-pillars")[Observability pillars]:
  - *Metrics* - provide quantitative insights into system performance by measuring various parameters (e.g. memory usage, response times, availability). Help *identify that an issue happened* (monitoring).
  - *Logs* - immutable, exhaustive records of discrete events that occur within a system (e.g. errors). Provide *details to understand the root cause of an issue*.
  - *Traces* - capture end-to-end journey of a request through the system, capturing the path and lifespan of each component involved in processing the request. Help *identify sources of issues*.
]

#slide("Example: metrics in OpenObserve")[
  #align(horizon + center, image("images/lecture-6/metrics.png", height: 80%))
]

#slide("Example: logs in OpenObserve")[
  #align(horizon + center, image("images/lecture-6/logs.png", height: 80%))
]

#slide("Example: traces in OpenObserve")[
  #align(horizon + center, image("images/lecture-6/traces.png", height: 80%))
]

#key-takeaways[
  - Observability focuses on system health and incident resolution
  - Product analytics focuses on product success
  - Both observability and analytics require product instrumentation to collect data about events
  - Both rely on hypothesis testing to resolve issues and make decisions (debugging is hypothesis testing)
]


// #slide("References")[
//   #set text(size: 12.5pt)


// ]
