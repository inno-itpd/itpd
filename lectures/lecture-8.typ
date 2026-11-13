// Usability testing, lecture 7 of the IT Product Development course.

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
    #text(size: 34pt, weight: "bold", fill: accent)[Configuration management #linebreak() for agentic development]
    #v(0.16in)
    #text(size: 20pt, fill: muted)[Lecture 8, IT Product Development]
  ]
  v(1.2in)
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
  - Agentic development
  - Configuration management for agentic development
  - (Quiz) ITPD artifacts and their purpose
]

// --- Usability testing ------------------------------------------------------

#section("Agentic development")

#quiz[
  What are the benefits of using an AI agent to develop a product?

  What are the costs of using an AI agent to develop a product?
]

#slide("Agentic development")[
  Adapted from #link("https://www.sonarsource.com/resources/library/what-is-agentic-development/")[What is agentic development?]:

  #show quote: set block(spacing: 1em)

  #quote(block: true)[
    Agentic development:
    - the developer sets the goal and reviews the outcome but does not approve each intermediate step
    - AI agents autonomously carry out multi-step coding tasks such as planning, writing, testing, and fixing code

    The agent analyzes the information it has, decides the sequence of actions, calls tools, observes results, and iterates toward a working solution.
  ]
]

#slide("ReAct agent loop")[
  Agent decides the sequence of actions, calls tools, observes and analyzes results, and iterates toward a working solution.

  #figure(
    image("images/lecture-8/react-agent-loop.png", height: 60%),
    caption: "ReAct agent loop - " + link("https://www.ibm.com/think/topics/react-agent")[source],
  )
]

#slide("ReAct agent and environment")[
  Agent uses tools to interact with its environment, e.g. query or modify it.

  #figure(
    image("images/lecture-8/agent-and-environment.png", height: 60%),
    caption: "ReAct agent example - "
      + link(
        "https://medium.com/google-cloud/building-react-agents-from-scratch-a-hands-on-guide-using-gemini-ffe4621d90ae",
      )[source],
  )
]

#slide("Agentic development challenges")[
  Adapted from #link("https://www.sonarsource.com/resources/library/what-is-agentic-development/")[What is agentic development?]:

  - *Reliability* - Agents' hallucinations accumulate. If an agent completes a task with 95% accuracy, the agent's accuracy for a chain of 10 tasks can be around 60%.
  #v(0.05in)
  - *Review at scale* - Agents write the code more quickly than humans can review it. The review stage becomes a bottleneck in the development process.
  #v(0.05in)
  - *Accountability* - The developer is accountable for the the code they ship, even if the code was authored by the agent. It's usually hard to prove that the implementation covers all corner cases.
]

#slide("Debt")[
  From #link("https://martinfowler.com/fragments/2026-04-02.html")[Fragments]:

  - *Technical debt* lives in code. It accumulates when implementation decisions compromise future changeability. It limits how systems can change.
  #v(0.05in)
  - *Cognitive debt* lives in people. It accumulates when shared understanding of the system erodes faster than it is replenished. It limits how teams can reason about change.
  #v(0.05in)
  - *Intent debt* lives in artifacts. It accumulates when the goals and constraints that should guide the system are poorly captured or maintained. It limits whether the system continues to reflect what we meant to build and it limits how humans and AI agents can continue to evolve the system effectively.
]

#slide("Costs")[
  As a developer, what do you pay for when using an agent?
  - money (sometimes compensated by the company): buying tokens
  - time: waiting for a result
  - time + effort:
    - formulating a task
    - identifying relevant artifacts
    - steering an agent
      - composing a prompt
      - answering questions
      - reading agent thoughts to understand its reasoning
    - reviewing results
    - identifying requirements that were violated in the code
    - identifying and repaying cognitive and technical debt
    - handling incidents connected with agent-generated code
]

#key-takeaways("Agentic development")[
  - Agents speed up writing code and creating artifacts
  - Agents' hallucinations can accumulate
  - Reviews are necessary to reduce hallucinations
  - Reviews become a bottleneck between implementation and product delivery
  - Sacrificing reviews for velocity leads to technical and cognitive debt
  - Reviews become harder when there's technical or cognitive debt
]

// --- Review and close -------------------------------------------------------

#section("CM for agentic development")

#quiz[
  - Which artifacts do you want an agent to trust in the repository?
  - Which artifacts does it actually trust most of the time?
]

#slide("Configuration management (CM)")[
  From #link("https://www.ibm.com/think/topics/configuration-management")[What is configuration management]:

  - *Configuration management* ensures that IT assets (product, system, docs, etc.) remain in their desired state, regardless of how they evolve over time.
  - *Configuration identification* - process of determining the attributes that define every aspect of a configuration item (CI) at any point in time. It also includes pivotal decisions about configuration items, identifiers, and baselines.
  - *Configuration change control* - strategy for handling changes systematically so that asset integrity remains consistent across its lifespan.

  CM is a way to ensure that artifacts surrounding the code are trustworthy.
]

#slide("Configuration management in Industrial Project")[
  From Industrial project:

  - *Configuration Management*: Teams can show that they have policies, processes, and tools for managing the configuration of the project artifacts to include at a minimum: requirements, design, meeting minutes, code, test plans, project plans, and other similar artifacts (teams will provide an archive or access to their archive of all project artifacts).

  Configuration management in ITPD:
  - Significant artifacts have identifiers
  - Artifacts are connected using unidirectional links
  - Agent can search places that mention the artifact
  - There are authoring and lifecycle rules for artifacts
]

#slide("Context management (goal)")[
  - An LLM-based agent has a context window - the maximum amount of tokens an agent can process and remember in one interaction. Usually, it's around 1 million tokens for frontier models.
  - When an agent reads files, it's context window gets filled with facts.
  - LLMs start dramatically confusing or forgetting facts after a specific threshold (e.g. 256K tokens).

  Goal: keep the total amount of tokens in the context window to complete a task below the threshold.
]

#slide("Context management (in a repository)")[
  "Q: Assuming that the agent trusts everything it reads in the repository,
  how to reduce the cost of the task in tokens while preserving the accuracy and using the same agent?""

  "A: Reduce the effort to gather a trustworthy and sufficient context to complete the task"

  Tips:
  - Ensure all artifacts are up to date and consistent with each other (no contradicting facts)
  - Create and name artifacts so that they're quickly searchable (e.g. by identifier or description)
  - Provide a map of the repository so that the agent can quickly locate artifacts
  - Explain each artifact so that the agent can select relevant artifacts based on their purpose
  - Link artifacts so that the agent can avoid reading unrelated artifacts in search of relevant information
  - Specify relevant artifacts in the task that you give the agent if they're not quickly discoverable from existing repository maps
]

#slide("Context management (main files)")[
  "What does an agent read first when it starts working in a project directory?"

  Depends on the agent harness. Usually:
  - System prompt; #linebreak() A prompt that defines how the agent should behave.
  - `AGENTS.md` file; #linebreak() `AGENTS.md` is a README for agents: a dedicated, predictable place to provide the context and instructions to help AI coding agents work on your project (#link("https://agents.md/")[source])
  - descriptions of `SKILL.md` files; #linebreak() Agent Skills are a standardized way to give AI agents new capabilities and expertise (#link("https://skill.md/")[source])
  - MCP server responses. #linebreak() Model Context Protocol is an open-source standard for connecting AI applications to external systems (#link("https://modelcontextprotocol.io/docs/2026-07-28/getting-started/intro")[source])
]

#key-takeaways("Configuration management for agentic development")[
  - Agents trust almost everything they see
  - Configuration management helps create a trustworthy context for your agents
  - Use standard tools to ensure your agent read relevant context before working on a task
]

#quiz[
  What is the purpose of these ITPD artifacts?
  - TOS
  - VP
  - ADR
  - FR
  - RISK
  - US
  - DEC
]
