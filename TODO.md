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
  - Markdown check moved into W2, product code CI into W4
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
- [ ] require actionlint on their side
- [ ] avoid migrations in the assignment ("one-time catch-up")
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
- [] Replace the acceptance criteria slide
  - See Lab 3 from SWP-26
  - Improve wording
  - Add AC examples

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
- [ ] Lecture:
  - Last week, you built something and you were not required to automatically check what you built
  - [ ] Ubiquitous language
  - [ ] Why automate quality assurance?
  - [ ] Verification and validation
    - [ ] Formal verification with Lean 4
  - [ ] Explain why they document architecture after building an MUP
    - the core scenario works so the product direction is viable
    - can work on a proper architecture to accommodate more scenarios
  - [ ] Intro to Scrum
- [ ] Product-code CI (moved from Week 3):
  - [ ] Assignment 4 cites the `Since: W4` block in `requirements/repository-requirements.md`
  - [ ] The full example in `requirements/definition-of-done-requirements.md` gains the product-code CI
- [ ] Architecture and Agile
- [ ] Functional requirements - specify sources (user stories, constraints, architecture, etc.)
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
- [x] Still keep user story issues to track added value?
      Or, fully switch to architecture and functional requirements issues?
      Keep them, FR and ADR can't capture the value
- [ ] Assignment
  - [ ] Introduce separate issue types for US and Tasks
  - [ ] MoSCoW must be issue fields on US
  - [ ] Tasks must have priority issue field
  - [ ] In the report, ask questions about the setup (?):
    - [ ] How does your setup help prevent free riding?
    - [ ] How can you go from a line of code to a ToS goal
  - [ ] Retrospective - what should be public?
  - [ ] Prioritize QRs by technical risk and importance
  - [ ] Feature issue type - for tracking progress of task issues?
- [ ] Sequence diagrams
  - [ ] Main actor flow

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
