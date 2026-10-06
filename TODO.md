## TODO.md

## Inbox

- [ ] add decision-log.md - which important decisions we made?
- [ ] assignment-plan.md (partly covered by the `docs/` destination map in `itpd/AGENTS.md`)
- [ ] move Markdown formatters to external repo to just reuse them here (e.g. in time-tools)

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
  - Markdown check moved into W2, product code CI into W3
- [x] context diagram - https://c4model.com/diagrams/system-context
  - required in W2, format deliberately not mandated
  - C4 continues in W4 with containers and components
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
- [ ] add actionlint
- [ ] lecture 2:
  - [ ] Remind what a gap and a value proposition are (bridge-in)
  - [ ] Provide summary at the end
- [ ] recommend to fork and edit if want to preserve some connections?

## A3

Next: Week 3 is planning and the minimum usable product, and it has no assignment yet.

- [ ] traceability
- [ ] `tmp/itpd-2025/lectures/lecture-2.1.pdf` is the only planning source, and it is thin.
      Its agenda promises `Expectations` and never delivers it.
- [ ] **Estimation has no source material anywhere in the 2025 decks.**
      It has to be written from scratch, and it is the part students will push back on hardest.
- [ ] Borrowables worth reusing: strategic versus tactical planning, `Define success` as step one of
      strategic planning, the `zoom level` framing for a roadmap, `point of no return` for contingency
      plans, and the `Warning!` that 80% of the pain comes from skipping `Define success`.
- [ ] New for W3 that no source has: the tactical questions belong in `CONTRIBUTING.md`, the changelog is
      compiled from pull requests rather than from commits, and SemVer tags begin.
- [ ] `docs/threshold-of-success.md` and `docs/work-plan.md` have no artifact structure yet.
      `## Later Weeks` in `requirements/artifact-requirements.md` says so, and that is where they go.
- [ ] Functional requirements - specify sources (user stories, constraints, architecture, etc.)
- [ ] Scope, out of scope
- [ ] root README

## A4

- quality requirements, no quality goals
- Week 4 is quality and architecture, and it continues C4 from the W2 context diagram:
  containers, then components.
  The W2 deck says so on the vocabulary slide.
- Source: `tmp/itpd-2025/lectures/lecture-2.2.pdf` carries ISO 25010, the Q42 model, and the six-part
  quality attribute scenario, plus the three ways to measure quality and the pass/fail argument for
  agreeing testable quality requirements with stakeholders.
- arc42 framing: quality goals belong in framing, testable quality scenarios late.
- `Q-nn` and the `docs/quality-requirements.md` structure are new; 2025 had quality attribute
  scenarios but no quality goals, and no `Q-nn` family.
- [ ] Still keep user story issues to track added value?
      Or, fully switch to architecture and functional requirements issues?
- [ ] "main actor flows" (sequence diagrams)?

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
