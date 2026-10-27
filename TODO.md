## TODO.md

## Inbox

- [ ] add decision-log.md - which important decisions we made?
- [ ] assignment-plan.md (partly covered by the `docs/` destination map in `itpd/AGENTS.md`)
- [ ] move Markdown formatters to external repo to just reuse them here (e.g. in time-tools)
- [ ] Design rules for assignments
  - One clear option to do things.
  - Issue field >> issue label
- [x] Identifier format?
  - A scoped identifier is cited as a space-separated pair: `QR-01 QRT-02` for a quality requirement test, and `FR-012 AC-02` for a criterion; the hyphenated `QR-01-QRT-01` is not adopted, per `A5-DEC-030`.
- [ ] Traceability - only from line of code to ToS
- [x] Should ADR cite a QRT?
      No: an ADR's `**Addresses:**` list names the `FR-nnn` and `QR-nn` the decision accounts for, and it reaches the test through its `QR-nn`, per `A5-DEC-018`.

## A1

- [x] course/rules.md
  - [x] password for accessing the deployed version goes where?
  - [x] "Your public repository identifies people by GitHub username and the customer as Instructor". "Instructor" -> "Customer"
  - [x] "If generated text is submitted unchecked, or filler is passed off as analysis, the week does notpass" - grade is reduced, not "week does not pass"
  - [x] "due **Thursday at 23:59**, the night before the class"
    - Soft deadline - 23:59, Thursday.
      Hard deadline - Friday, 23:59
  - [x] pitch decks (W5, W9) are Moodle attachments; submission channel marked for revision in the course/syllabus
  - [x] Submission 10 is Moodle only, so it needs no repo path
- [x] "See the course/syllabus" - course/syllabus added to this repo
- [x] Repo structure differs from what's required in the assignment - justify in the report
  - We call this "deviations"
- [x] repository-requirements
  - actions/checkout and lychee might be too old - updated
- [x] run linter tests in CI
- [x] "meeting transcript" - also need meeting summary - action points, decisions, etc.
- [x] remove permalink duplication
  - Assignment doesn't mention permalink to the repo root
- [x] add A1
- [x] add requirements.md - covers:
  - [x] artifact-requirements.md
  - [x] process-requirements.md
  - [x] repository-requirements.md
- [x] add assignment-design.md (folded into `itpd/AGENTS.md`)
- [x] lychee
- [x] CI job for lectures - check pdfs correspond the typst
- [ ] "Run Mom test before the interview", no need to discuss with the customer how you improved the questions
- [ ] value proposition - move to vision?

## A2

- [x] pin node_26
- [x] use pnpm
- [x] user stories
  - [x] acceptance criteria
- [x] issue templates
- [x] suggest backlog.md
  - [x] enable network
  - [x] only pushed branches
  - named as `Recommended` in `## Tracking Tasks Inside The Repository`, not required
  - its files are declared repository content, not artifacts
- [x] Linter in CI (students)
  - Markdown check moved into W2, product code CI into W5
- [x] context diagram - https://c4model.com/diagrams/system-context
  - required in W2, format deliberately not mandated
  - C4 continues in W4 with the container view, and the course stops there: no component or sequence view
- [x] Use sentence case in titles
  - not done, and should not be: every H2 in `guides/` and `assignments/` is Title Case
  - `AGENTS.md` said sentence case and was wrong; corrected to Title Case
- [x] TODO frontmatter in user stories
- [x] Issue tracks everything about a user story
- [x] Get rid of `docs/user-stories/README.md` (index)
- [x] Don't mention milestone
- [x] Postpone MUP to week 3 and don't mention it
- [x] docs/user-stories/README - why need it?
  - Removed
- [x] Each AC has a stable identifier so that it's possible to refer to it
- [x] Address comment in the PR#1
- [x] Use study group planner app example in docs, not modular gateway
- [x] Strip info about future weeks.
- [x] use docs/requirements/user-stories instead of docs/user-stories
  - No user story index in the repo at all
- [x] Separate kickoff meeting from ordinary meeting in requirements
- [x] How do we treat assumptions?
  - Do we need a separate doc for them?
  - Do we assign some identifiers to them?
- [x] make decisions more flexible
- [x] How to make all decisions discoverable and traceable?
  - week-nn/decisions.md?
  - A single section in the week-nn/README.md?
  - Source?
- [x] Why should user stories be linked to VP?
- [x] Decision - traces to
- [x] Sometimes need parity with existing products ("reverse-engineering" user stories for existing products).
      VP may cover gaps that exist in some products, not necessarily all of them
- [x] user stories - specify sources

      e.g., customer meeting (link to report)

      always need vp and gap?

- [x] Better explain the concept of a user story
  - Constrains problem space
  - a story states the problem and leaves the solution open; who settled a detail decides whether it may be named, and a settled detail goes in an AC
- [x] Why not restate the VP in the product-vision?
- [x] Superseding a parent
- [x] Ensure minimum usable product is well-pronounced and instructions about it don't contradict each other
- [x] decisions - only about user stories?
- [x] move `working-plan.md` to A3
- [x] MUP in syllabus - write separately about it
- [x] "Decisions" section - review the required content, make more flexible
- [x] Assignment report must be on the default branch
- [x] generic meetings process - align questions with. the goal of the meeting
- [x] stakeholders, boundary (what we do and what we don't do), main actor flows (?), assumptions about actors
  - landed in W2 as `## Stakeholders, Boundary, And Context` in `requirements/process-requirements.md`
- [x] What is the purpose of validating-with-the-customer?
  - A generic guide for each week?
  - Or, a generic guide for validating using a prototype?
- [x] active/inactive = open/closed
- [x] boundary - what is?
- [x] syllabus in this repo is the single source of truth, can be edited
- [x] de-duplicate info across requirement files

      "There are @requirements/process-requirements.md and @requirements/artifact-requirements.md and @requirements/repository-requirements.md and @course/rules.md

      How big are overlaps between these docs? Does the redundancy harm readability for students, maintainability for course creators?

      Should we separate concerns in a better way?"

- [x] Normalize assignment-2
- [x] License link not necessary
- [x] allow deviations from the assignment
- [x] branch from the issue - remove
- [x] why need notes if there's a meeting report?
- [x] why should an assumption support a VP?
  - now vice-versa VP rests on an assumption
- [x] C & D
- [x] Change order of work
- [x] stable identifiers without slugs for assumption and decision sections
- [x] Can link only files on main in issues
- [x] How to track user story ids?
- [x] todos
- [x] Embed the image version of "docs/architecture/context-diagram"
  - an embedded image that renders on GitHub in both themes is required, format still not mandated
- [x] DEC-nnn
- [x] user stories aren't implemented in branches.
- [x] CON-nn
- [x] Make "user-stories-requirements" own everything about user stories (issue too)
- [x] Introduce "task-issues-requirements"
- [x] Move "Minimum Usable Product Candidate" to another doc from user-stories-requirements
- [x] lychee
- [x] using this repo as an agent skill
- [ ] provide checkboxes for acceptance criteria in user stories
- [x] require actionlint on their side
  - The `**Since: W5**` block in `requirements/repository-requirements.md` requires it over `.github/workflows/`, on pull requests and `main`, pinned like any other tool, per `A5-DEC-024`.
- [ ] avoid migrations in the assignment ("one-time catch-up")
  - Annotated rather than ticked: the Week 4 catch-up is the deliberate exception, recorded once in `course/decisions/a4.md`, so no issue carries a change comment for it.
  - Example:
- [ ] Improve lecture 2:
  - [ ] Remind what a gap and a value proposition are (bridge-in)
  - [ ] Prototype is needed to show early what you're working on
  - [ ] Terms about scope: in-scope, out-of-scope
  - [ ] Talk about traceability
  - [ ] Provide summary at the end
- [ ] Next iteration:
  - [ ] Introduce separate issue types for US and Tasks
  - [ ] MoSCoW must be issue fields on US
  - [ ] Tasks must have priority
- [ ] Replace the acceptance criteria slide
  - See Lab 3 from SWP-26
  - Improve wording
  - Add AC examples
- [ ] Store user stories in a file and provide a table as an index.
  - So that later, only tasks are in a backlog?

## A3

Next: Week 3 is planning and the minimum usable product, and it has no assignment yet.

- [x] wdyt about using SPRINT-?? instead of Later?
  - Don't use it because it's redundant.
    Can just keep issues not belonging to a sprint.
- [x] Root README
  - [x] Shows where to find the setup instructions
- [x] Add info about tools
  - course/tooling.md
    - AssemblyAI - for transcripts
    - Google AI Studio - for initial prototyping
    - OpenCode - free agent with free /models
  - mention in the README
- [x] set up actionlint
- [x] changelog is compiled from pull requests rather than from commits
- [x] Add public issue fields:
  - Responsible
  - Accountable
- [x] GitHub Pages for docs
- [x] release
- [x] should reports be a part of the site?
  - No, they're not something users would need to read
- [x] risk format: condition, consequence (why we care)
- [x] Sprint releases:
  - SPRINT-nn has a sub-section REL-nn
- [x] Specify that the candidate should move to a milestone
- [x] release title: always SemVer
- [x] GitHub Project
  - A table
- [x] Require responsible and accountable are always different people
- [x] ### TOS- instead of ## TOS-p
  - Leave as is
- [x] Require assignees?
  - Yes: the issue's assignees are the same two members as `Responsible` and `Accountable`, exactly those two, because a GitHub assignee carries no role of its own.
- [x] "closed issue" "keeps none" - it means already closed issues don't need these labels etc
  - Fixed: the rule reads "an already closed issue needs none", and the values and the assignees stay on the issue after it closes.
- [x] Move issues to a separate doc
  - `requirements/issue-tracking-requirements.md` holds the rules every issue shares, the fields, the assignees, and the project.
- [x] Save A3 decisions in `course/decisions/a3.md`
  - The key design decisions are recorded there as `A3-DEC-nnn` entries with their reasons, alternatives, and landing points; the full planning log stays in the untracked `handoff.md` until Assignment 3 is published.
- [x] Milestones
  - [x] Pre-defined: only for MUP
  - [x] Above sprints, no table
- [ ] Introduce an explicit policy about dependency bumps for the itpd repo
- [x] Require a responsible person for each risk
  - No: responsibility stays on task and story issues, and the register's checker is named in the plan's Progress Monitoring.
- [ ] Decisions
  - [ ] Responsible + accountable - make the work owner obvious to prevent free-riding
  - [ ] Unstash a3-handoff and record other relevant decisions from there
- [ ] Connect risks to goals (ToS)
  - Risks are certain events that potentially threaten success
- [ ] Improve the lecture in the next iteration.
      Include:
  - [ ] Planning
  - [ ] Estimation (story points?)
  - [ ] Risks
  - [ ] Move Scrum from week 4 to here
    - [ ] Mention PBI, sprints, SBI
    - [ ] Task priorities as issue fields

## A4

- [ ] https://github.com/inno-itpd/itpd/actions/runs/38108934047/job/114380240234
- [x] Lecture: skipped, because the Week 4 deck is compiled and already covers the quality material
  - Last week, you built something and you were not required to automatically check what you built
  - [ ] Ubiquitous language
  - [ ] Why automate quality assurance?
  - [ ] Verification and validation
    - [ ] Formal verification with Lean 4
  - [ ] Explain why they document architecture after building an MUP
    - the core scenario works so the product direction is viable
    - can work on a proper architecture to accommodate more scenarios
  - [ ] Intro to Scrum
- [x] Product-code CI (moved from Week 3 to Week 5):
  - [x] Assignment 5 cites the `Since: W5` block in `requirements/repository-requirements.md`
  - [x] The full example in `requirements/definition-of-done-requirements.md` gains the product-code CI and `actionlint` in Week 5
  - The block names the five checks and stops at the build and the tests, because the product CI cannot reach the university network, per `A5-DEC-024`.
- [ ] Architecture and Agile
- [ ] Functional requirements - specify sources (user stories, constraints, architecture, etc.)
- quality requirements, no quality goals
- Week 4 is the container view; the C4 views are the W2 context view and the W4 container view, and the component and sequence views were dropped rather than deferred.
- Source: `tmp/itpd-2025/lectures/lecture-2.2.pdf` carries ISO 25010, the Q42 model, and the six-part
  quality attribute scenario, plus the three ways to measure quality and the pass/fail argument for
  agreeing testable quality requirements with stakeholders.
- arc42 framing: quality goals belong in framing, testable quality scenarios late.
- `Q-nn` and the `docs/quality-requirements.md` structure are new; 2025 had quality attribute
  scenarios but no quality goals, and no `Q-nn` family.
- [x] Still keep user story issues to track added value?
      Or, fully switch to architecture and functional requirements issues?
      Keep them, FR and ADR can't capture the value
- [x] Assignment
  - [x] Introduce separate issue types for US and Tasks
    - The `User Story` and `Task` types replace the two labels, per `requirements/issue-tracking-requirements.md#issue-fields`.
  - [x] MoSCoW must be issue fields on US
    - The `MoSCoW` field replaces the four `moscow:*` labels.
  - [x] Tasks must have priority issue field
    - The `Priority` field orders a scheduled task.
  - [x] In the report, ask questions about the setup (?): the free-riding question is removed, because the report is public and the contribution table is the evidence; the traceability question is dropped, because the chain is the links and no document restates it
    - [x] How does your setup help prevent free riding?
      - Removed: the report does not assess an individual.
    - [x] How can you go from a line of code to a ToS goal
      - Dropped with the report question.
  - [x] Retrospective - what should be public?
    - The retrospective is `reports/week-NN/sprint-retrospective.md`, a public file with its four sections.
  - [x] Prioritize QRs by technical risk and importance
  - [ ] Feature issue type - for tracking progress of task issues?
    - Deferred: this work adds no feature issue type.
    - The codebase design exercise answers the need without one, because a feature's story, requirement, record, and glossary term already have owners, per `A5-DEC-021`.
  - [x] At least one QR about testability mentioning critical modules (files with code)
  - [x] AC in a user story - use checkboxes to track state
    - The criteria are checkboxes, and the accountable member ticks one once it is verified.
  - [x] User stories - reopen when a new related task appears
  - [x] User story requirements - explain which "traces to" origins are allowed
    - The allowed origins are the `GAP-nn` a story closes, the `DEC-nnn` of a decision, or an action point, and no other.
  - [x] "Planned Velocity" and "Actual Velocity" fields for sprints
  - [x] Explain that need to calculate manually because single-select can't be a number
    - https://github.com/orgs/community/discussions/156904
  - [x] glossary.md
  - [x] Where to track progress on qrt?
  - [x] Technical risk - hard to achieve
  - [x] How to prioritize QRT?
  - [ ] I think we should provide examples
        https://github.com/otrebmuh/HotelPricingSystem/blob/433e061f712a8748fdf04a6f767752e12be2f4b9/Design/Architecture.md

        https://github.com/otrebmuh/EventTicketSystem/blob/2a928d226d43704457ad5be46b1e6b80f5bca8cb/Design/Architecture.md#user-story-priorities

        Also need to link
        https://github.com/Alexey-Popov/awesome-ai-architect/blob/main/solution-architecture/quality-attributes.md

  - [x] Drop ideal hours
    - `course/plans/a4-plan.md`: no `Ideal Hours` field, and the sprint record carries velocity only

## A5

- [x] Story points arrived in Week 4, not Week 5: the `Story Points` field carries the estimate, and velocity is computed by hand from it.
- `course/plans/a5-plan.md` designs the QRTs, the testing plan, and the CI checks
- The component and sequence views are not required: `A5-DEC-009` records that the course requires the context and container views, and the container view is the last required view.
- [x] They should define at least two more milestones
  - The minimum is the assignment's, not a rule: at least two plan milestones due in `SPRINT-05` through `SPRINT-09` in total, with an existing one counting and only the shortfall added, per `A5-DEC-019`.
- [x] Define your integration environment
  - Integration is the product CI on GitHub Actions, and the university VM hosts staging and production; what the team defines is the four-environment map and the manual deploy in `docs/deployment.md`, per `A5-DEC-023` and `A5-DEC-026`.
- [ ] Revise explanation of features in guides/quality-and-architecture.md

## A6

- [ ] address the Week 6 `docs/analytics.md` row once the W6 assignment is written
- [ ] course/syllabus: decide the W6 maintained artifact

## A2-2025 Tech Stack TODO

`tmp/itpd-2025/assignments/assignment-2.md:34` carries an unresolved comment on the tech-stack line:

```markdown
<!-- TODO: should they do this before validating requirements and a prototype? -->
```

The W2/W3 reorder is the answer: requirements and prototyping are Week 2, and the stack decision
moved to Week 3, after validation. `requirements/repository-requirements.md` now says the stack is
picked in Week 3, and the Week 1 `.gitignore` requirement was re-marked to match.
