# AGENTS.md

Operating instructions for coding agents maintaining the student-facing course materials in `itpd/`.
They apply only in the course repository itself.
When this directory is installed as a skill inside a team's repository, ignore this file and follow `SKILL.md`.

## Repository Map

### Maintained Here

Every maintained file in this directory, and what it owns.
Each `requirements/` file owns one artifact's paths, sections, fields, and full example, and the entry names its subject.
Every `guides/` file is explanatory, not normative.
The `course/decisions/` and `course/plans/` files are maintainer-facing.

- `README.md` — the student entry point and routing, and nothing else.
- `SKILL.md` — the entry point for a student's coding agent when this repository is installed as a skill; a router like `README.md`, and kept in step with it.
- `course/syllabus.md` — the single source of truth for the schedule: weekly focus, dates, deadlines, and course policies.
- `course/rules.md` — the course contract and the router into `requirements/`, not a second rulebook.
- `course/teams-and-projects.md` — which team number works on which project, regenerated each term.
- `course/tooling.md` — suggested tools for transcripts, prototyping, and coding agents.
- `course/decisions/a3.md` — the design decisions behind Assignment 3 (`A3-DEC`).
- `course/decisions/a4.md` — Assignment 4 (`A4-DEC`), and the two `A3-DEC` entries it reverses.
- `course/decisions/a5.md` — Assignment 5 (`A5-DEC`), and the `A3-DEC` and `A4-DEC` entries it reverses.
- `course/decisions/a6.md` — Assignment 6 (`A6-DEC`), and the `A5-DEC` entries it reverses.
- `course/decisions/a7.md` — Assignment 7 (`A7-DEC`), and the earlier `A6-DEC` and `A7-DEC` clauses it reverses.
- `course/decisions/a8.md` — Assignment 8 (`A8-DEC`), and the `A7-DEC-022` it reverses.
- `course/decisions/a9.md` — Assignments 9 and 10 (`A9-DEC`), including the final sprints, UATs, handoff and assessment.
- `course/plans/` — the design plan behind each assignment: scope, decisions, requirement changes, parts, and audits.

- `requirements/general-requirements.md` — artifact and measurement terms, the `reports/week-NN/` vs `docs/` split, identifier families, and traceability.
- `requirements/visibility-requirements.md` — who may see an artifact, where each sensitive item goes, and screenshot evidence.
- `requirements/research-requirements.md` — the Week 1 research: alternatives, properties and comparison, gaps, value propositions, and research honesty.
- `requirements/assumptions-requirements.md` — `docs/assumptions.md`: the assumption, what rests on it, and how it is checked and settled.
- `requirements/decisions-requirements.md` — `docs/decisions.md`: a decision's entry and fields, what cites it, and how it is reversed.
- `requirements/product-vision-requirements.md` — `docs/product-vision.md`: goal, stakeholders, constraints, boundary, and system context.
- `requirements/architecture-requirements.md` — `docs/architecture/README.md`: the container view and its responsibilities, the diagram conventions, the drivers, and the ADR index.
- `requirements/adr-requirements.md` — `docs/architecture/adr/`: the record, its fields and four body sections, and the ASRs it addresses.
- `requirements/functional-requirements-requirements.md` — `docs/functional-requirements/`: the requirement, its behaviour, its criteria, and the index.
- `requirements/quality-requirements-requirements.md` — `docs/quality-requirements/`: the ISO/IEC 25010:2023 pair, the six-part scenario, the tests, and the priority matrix.
- `requirements/user-stories-requirements.md` — story issues: the story, its acceptance criteria, MoSCoW priorities, and the issue type.
- `requirements/task-issues-requirements.md` — task issues: the issue form, its `### Requirements` section, and the pull request that closes one.
- `requirements/issue-tracking-requirements.md` — the rules every issue shares, sprint milestones, the five fields, assignees, and the GitHub project.
- `requirements/local-task-tracking-requirements.md` — the in-repository tracker, its Definition of Done, a `TODO.md` checklist, and moving Done tasks out.
- `requirements/minimum-usable-product-requirements.md` — the minimum usable product candidate, and how it is built, delivered, and released.
- `requirements/prototypes-requirements.md` — where a prototype is recorded, and the validation rules for showing one.
- `requirements/planning-requirements.md` — `docs/project-plan.md` and `docs/threshold-of-success.md`: sprints, releases, milestones, the `REL-nn` block, the QRT plan, and velocity.
- `requirements/sprint-ceremonies-requirements.md` — sprint planning, product backlog refinement, estimation, the Sprint Review, and the retrospective.
- `requirements/risks-requirements.md` — `docs/risks.md`: what a risk states, how it is rated, and how it is answered.
- `requirements/definition-of-done-requirements.md` — `docs/definition-of-done.md`: what done means for a story, a task, and a pull request.
- `requirements/customer-meetings-requirements.md` — every customer meeting, its script, report, and transcript.
- `requirements/weekly-report-requirements.md` — what is handed in each week: the weekly public report, the AI usage report, deviations, and the Moodle PDF.
- `requirements/releases-requirements.md` — `CHANGELOG.md`, Semantic Versioning, tags, the release body, release titles, and cutting a release.
- `requirements/pull-requests-requirements.md` — the pull request lifecycle: branch naming, the template, review and approval, evidence, and bot pull requests.
- `requirements/repository-requirements.md` — GitHub, branch protection, link checking, permalinks, CI, and the environments and deployment.
- `requirements/agent-instructions-requirements.md` — the team's own `AGENTS.md`: where it lives, and what it states to a coding agent.
- `requirements/glossary-requirements.md` — `docs/glossary.md`: where it lives, and what each term carries.
- `requirements/features-requirements.md` — `docs/features.md`: the flat capability entries, and the links that own each fact.
- `requirements/analytics-requirements.md` — `docs/analytics.md`: the focus metric and metric tree, events, the analytics pipeline, and dashboards.
- `requirements/observability-requirements.md` — `docs/observability.md`: the signals, the `SLI-nn` sections and their fields, the observability pipeline, and dashboards.
- `requirements/usability-testing-requirements.md` — `docs/usability-tests/`: the `UT-nn` record, participants, tasks, instruments, consent, results, and triage.
- `requirements/user-acceptance-tests-requirements.md` — `docs/user-acceptance-tests.md`: the journeys, their run history and the two reviews.
- `requirements/configuration-management-requirements.md` — `docs/configuration-plan.md` and the review: the `CFG-nn` groups, fields, connections, evaluation, and recommendation.

- `guides/alternatives-research.md` — finding and evaluating alternatives.
- `guides/comparison-and-synthesis.md` — building the comparison, finding gaps, and writing the value proposition.
- `guides/customer-kickoff-meeting.md` — the kickoff: the five areas and the Mom Test pass.
- `guides/user-stories-and-prototyping.md` — turning a gap into stories, writing acceptance criteria, and testing an idea cheaply.
- `guides/validating-with-the-customer.md` — meetings after the kickoff, and recording what they changed.
- `guides/planning-and-tracking.md` — the threshold of success, the plan, releases, milestones, risks, progress, and the ceremonies.
- `guides/quality-and-architecture.md` — the quality expectations, the container view, requirements, drivers, ADRs, indexes, and features.
- `guides/quality-requirement-tests.md` — writing a runnable quality requirement test and recording its result.
- `guides/deployment-and-environments.md` — the four environments, the university VM, the deployments, and the runbook.
- `guides/analytics-and-observability.md` — the metric tree, events, the two pipelines, the dashboards, the SLIs, and the threshold review.
- `guides/usability-testing.md` — the test record, participants, instruments, sessions, results, triage, and retention.
- `guides/configuration-management.md` — the review baseline, inventory, connections, goals, judgement, tradeoffs, publication, and handoff.

- `guides/final-sprints.md` — the method for the final reviews, releases, handoff and submissions.

- `exam/README.md` — the final exam format, pitch and submission requirements, worked example, and grading rubric.
- `assignments/assignment-N.md` — learner-facing requirements for one week: deltas, paths, and evidence only.
- `lectures/AGENTS.md` — the lecture decks, their build, the layout contract, and the conversion method; not student-facing.

`SKILL.md` makes a checkout of this repository a skill named `itpd`, which a team installs as a Git submodule per `requirements/repository-requirements.md`.
When a requirements file, guide, or assignment is added, renamed, or removed, update the routing in `SKILL.md` in the same change, as in `README.md`.

### Tooling

Markdown here is formatted and linted from Node, and the toolchain is pinned in `flake.nix`.
A human maintainer starts at `CONTRIBUTING.md`, which owns the prerequisites, the setup, the gates to run before a pull request, and the repository settings the workflows need.

Run `pnpm run format:markdown` before committing, and `pnpm run format:markdown:check` and `pnpm run lint:markdown` are the gates.
`pnpm run check:lectures` checks the decks, and `lectures/AGENTS.md` owns it.
`pnpm run check:links` runs `lychee` from the shell with `--include-fragments`, skips gitignored paths such as `tmp/`, and fetches external links, so it needs network.
`pnpm run lint:actions` runs `actionlint` with `shellcheck` over `.github/workflows/` after any edit there, and it does not read the composite action under `.github/actions/`.
The maintainers' harness reaches the Backlog CLI over MCP through `.dsh/cordis.patch.yml`, which `dsh` applies only with `--patch`.

- `CONTRIBUTING.md` — the prerequisites, setup, checks, and repository settings.
- `flake.nix` — the pinned shell: Node 26, pnpm, typst, the `backlog` CLI, ripgrep, lychee, actionlint, shellcheck, and the deck font.
- `.envrc` — `use flake`, plus the cache locations under `.local/`, because DSH's workspace-write sandbox mounts `$HOME` read-only.
- `.dsh/cordis.patch.yml` — the Backlog MCP overlay.
- `.dsh/README.md` — the `--patch` launch command, its flag ordering, and the restart-after-edit rule.
- `scripts/markdown.mjs` — formats, checks, and lints every tracked `.md` file except `.opencode/`, `.agents/`, and `backlog/`.
- `scripts/lectures.mjs` — builds and checks each `lectures/lecture-N.typ` against its committed PDF, with the Typst version and build epoch pinned.
- `prettier/markdown/sentences-per-line.js` — the formatter plugin for one sentence per line, with table rows on one line.
- `eslint/markdown/no-split-sentence.js` — the rule for a sentence split across two lines, registered but off.
- `eslint.config.ts` — the Markdown lint rules, with a comment on each deviation from the defaults.
- `.vscode/tasks.json` — editor tasks for the same commands.
- `.github/actions/prepare/action.yml` — the shared CI setup for the Markdown jobs, which each job checks out before; the lectures job does not use it.
- `.github/workflows/markdown.yml` — CI: the format check, the lint, and the plugin tests.
- `.github/workflows/lectures.yml` — CI: Nix, the cache action, then the deck check through `nix develop`.
- `.github/workflows/lychee.yml` — CI: the link check on pull requests and `main`, without `--include-fragments`, so anchors are checked only by `pnpm run check:links`.
- `.github/workflows/backlog-cleanup.yml` — CI: weekly and on demand, moves Done tasks to `backlog/completed/` and opens or refreshes one pull request from `chore/backlog-weekly-completed`.
- `lychee.toml` — the link check settings shared with CI, each with a comment saying why.

The fixtures run with `pnpm run test:markdown-format` and `pnpm run test:markdown-rules`, and the format check, the lint, and both runs are CI jobs on every pull request.
`requirements/repository-requirements.md` links `.github/workflows/lychee.yml` and `lychee.toml` as the students' link-check example, and `requirements/local-task-tracking-requirements.md` links `.github/workflows/backlog-cleanup.yml` as the Done-task workflow example, so a change to either workflow is a change to student-facing material.
`.vscode/settings.json` lints and formats Markdown as you write, but editor diagnostics are advisory; the commands above are the gates.
`backlog/` is excluded from both gates because the `backlog` CLI owns those files, and formatting them would fight the next `backlog task edit`.

### Work Tracking

The open work is Backlog tasks, not a file in this directory.
`backlog/config.yml` is the project, the tasks are in `backlog/tasks/`, and IDs are `TASK-001`, zero-padded to three digits.
An ID is allocated across branches rather than per checkout, because `filesystem_only` is off and `check_active_branches`, `remote_operations`, and `active_branch_days` are set, so a new ID lands above every ID committed on a local or `origin` branch inside that window and above every ID in another worktree of the same repository.
Only the current branch bypasses the window, and an ID created in another clone stays invisible until the task file is pushed, because the remote refs the CLI reads are the ones its own fetch has seen.
Use the `backlog` CLI for every lifecycle action, and do not hand-edit a task file: the CLI keeps the metadata, the relationships, and the history consistent.
The CLI has `archive` but no `delete`, so removing a task that was never committed means rebuilding the project rather than leaving an archived file behind.
`BACKLOG_CWD` is set by the shell hook, so the CLI finds the project from the repository root.

| Command                                 | Use it for                                                                              |
| --------------------------------------- | --------------------------------------------------------------------------------------- |
| `backlog task list`                     | What is open, and what is in progress                                                   |
| `backlog task create "<title>"`         | New work, with `--ac` for the acceptance criteria and `--parent` when it needs a stream |
| `backlog task view <id>`                | The full task, its criteria, and its notes                                              |
| `backlog task edit <id> --check-ac <n>` | Satisfying a criterion, adding a plan, and recording what the change was                |
| `backlog doctor`                        | Duplicate IDs, self-referential dependencies, and cycles                                |
| `backlog instructions overview`         | The CLI's own workflow, before any task lifecycle action                                |

Run `backlog <command> --help` before an unfamiliar command.
The `Done` criteria come from `definition_of_done` in `backlog/config.yml`, which is this repository's four Markdown gates, the deck check, the link check, and implementation notes that record the decisions made and the validation results.

The user may stage the changes made for the current task, so a non-empty index is expected and the staged changes are the user's own work, not a script's or a configuration's.
Leave the staged changes in place.

### Maintained Elsewhere

- The `docs/` destination map below describes artifacts in **student** repositories.
  Those files do not exist here and must not be created here.

## Layering

Four layers, strictly ordered.
Each layer links down; none of them restates what is below.

```text
assignments/    what this week requires        (deltas only)
guides/         how to do the work              (explanatory)
requirements/   the rules                       (normative, authoritative)
course/rules.md the contract and the router     (short, links into requirements/)
```

The other three files in `course/` are reference material and are deliberately not layers: `course/syllabus.md` is the single source of truth for the schedule and the course policies, `course/teams-and-projects.md` is regenerated each term, `course/tooling.md` suggests tools rather than stating rules, and `course/rules.md` links to the syllabus rather than copying it.

`lectures/` is also not a layer.
It keeps its own rules, its build, and its gate in `lectures/AGENTS.md`; this file names the command and the workflow and leaves the rest there.

1. When a rule already exists in `requirements/`, an assignment points at it and states only the week-specific addition or a stricter minimum.
2. A guide shows the method.
   It does not define requirements, and it links to the requirement rather than repeating it.
3. `course/rules.md` states the student-facing contract and links into `requirements/`.
   If `course/rules.md` and a requirements file disagree, fix `course/rules.md`.
4. Normative text uses `Required` / `Recommended` / `Example` labels so an example is never mistaken for a rule.

Inside `requirements/`, every rule has one owner, and every other mention is a link without the rule's numbers or lists.
One file per artifact group — `research-`, `assumptions-`, `decisions-`, `product-vision-`, `architecture-`, `adr-`, `functional-requirements-`, `quality-requirements-`, `user-stories-`, `task-issues-`, `minimum-usable-product-`, `prototypes-`, `customer-meetings-`, `agent-instructions-`, `glossary-`, `features-`, `analytics-`, `observability-`, `usability-testing-`, and `weekly-report-requirements.md` — owns its artifacts' paths, sections, fields, labels, close states, change records, quality bars, and one full example, and links to the identifier, visibility, and platform rules.

| File                                       | Owns                                                                                                                 | Links, rather than restates                                                         |
| ------------------------------------------ | -------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- |
| `general-requirements.md`                  | Artifact and measurement terms, the `docs/` vs `reports/` split, identifier families, traceability                   | Any one artifact's paths, fields, or content                                        |
| `visibility-requirements.md`               | Who may see each item, and how a screenshot is published                                                             | Where an artifact lives                                                             |
| `planning-requirements.md`                 | The plan and the threshold of success: sprints, releases, milestones, the `REL-nn` block, the QRT plan, and velocity | Identifiers, visibility, issue fields, the changelog, and risks                     |
| `sprint-ceremonies-requirements.md`        | Sprint planning, refinement, estimation, the Sprint Review, and the retrospective                                    | The plan's sprints, issue fields, the customer meeting, and the weekly report       |
| `risks-requirements.md`                    | The register, a risk's fields, rating, and response                                                                  | Identifiers, the plan's review, and decisions                                       |
| `definition-of-done-requirements.md`       | Done for a story, a task, and a pull request                                                                         | Issues, the pull request, CI, and the changelog                                     |
| `releases-requirements.md`                 | The changelog, Semantic Versioning, tags, the release body, titles, and cutting a release                            | Identifiers, the sprint-release link, and pull requests                             |
| `pull-requests-requirements.md`            | The pull request lifecycle: branches, template, review, evidence, and bot pull requests                              | Branch protection, closing a task, the Definition of Done, and the cleanup workflow |
| `repository-requirements.md`               | GitHub, branch protection, links, permalinks, CI, environments, and deployment                                       | What an artifact must say                                                           |
| `issue-tracking-requirements.md`           | Shared issue rules, sprint milestones, fields, assignees, and the GitHub project                                     | The issue forms, branch mechanics, and deviations                                   |
| `local-task-tracking-requirements.md`      | The tracker, its Definition of Done, a `TODO.md`, and moving Done tasks out                                          | Task issues, the Markdown and link checks, and pull requests                        |
| `usability-testing-requirements.md`        | `docs/usability-tests/`: the record, participants, instruments, consent, evidence, findings, and triage              | Identifiers, visibility, platforms, and the quality tests                           |
| `configuration-management-requirements.md` | The plan and the review: `CFG-nn` groups, fields, connections, evaluation, and recommendation                        | Identifiers, visibility, the configuration rules, and the guide                     |
| `course/rules.md`                          | The contract summary and the router                                                                                  | Any number or list that a requirement owns                                          |

Each artifact file reads in one order: where the artifact lives, then one section per part, then the full example.
A part may keep a small example beside the rule it illustrates, such as the boundary table, even when the full example contains it.

## Conventions

- **Filenames** are kebab-case: `assignment-1.md`, `user-stories-requirements.md`.
- **Weeks** are zero-padded: `reports/week-01/`, through `reports/week-10/`.
- **Identifiers** are zero-padded and stable; [Identifier Rules](requirements/general-requirements.md#identifier-rules) owns every family, its digits, scope, headings, dropped form, and the never-renumber rule.
- **Headings** are Title Case in requirements files, guides, and assignments.
- **Applicability markers**: every requirements file carries inline `**Since: WN**` markers, so a section can hold requirements that begin in different weeks.
  To move a requirement to another week, change its own marker and leave the section where it is.
- **Links** between files in this directory are relative Markdown links, and point at a heading anchor when they refer to a specific rule.
- Prose is plain and specific.
  No filler, no hedging, no restating a rule that already lives in a linked file.
- **Prose** puts one sentence on each line.
  The formatter splits two sentences that share a line, and `sentences-per-line/one` rejects the same case.
  A sentence is not hand-wrapped across lines.
  `proseWrap` is `preserve`, so a soft wrap is left as written and is not currently a lint error, and the rule that would catch it, `no-split-sentence`, is registered but off.

## The Two-Location Rule

1. `reports/week-NN/` holds the evidence for that week.
   It is a historical record and is not rewritten later.
2. `docs/` holds maintained project documentation.
   Anything a later week will reference goes here, in its final location, from the week it is created.
3. **There is no promotion convention and no migration step.**
   The `swp_26/` materials have a `reports/` → `docs/` promotion rule in `Assignment_Design.md` because they were authored incrementally and the destination structure was not known when the early assignments were written.
   Do not port that rule.
   When a maintained artifact's destination is already known, it starts in `docs/`.
4. Never keep the same content in both locations.
   The weekly report links the maintained file; it does not copy it.

## `docs/` Destination Map

Each row is added when its assignment is written, so a week's path is decided in the same place as the work that uses it.
A later assignment may extend this map, but should not silently move an entry.

| Week | Maintained artifacts                                                                                                                                                                                                                                                     |
| ---- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| W1   | `docs/research/` — `alternatives.md`, `comparison.md`, `gap-analysis.md`, `value-proposition.md`; `docs/assumptions.md`; and `docs/decisions.md`                                                                                                                         |
| W2   | `docs/product-vision.md`, and the context diagram it embeds, `docs/architecture/context.<ext>` with its source (the stories are GitHub issues)                                                                                                                           |
| W3   | `docs/project-plan.md`, `docs/threshold-of-success.md`, `docs/risks.md`, `docs/definition-of-done.md`, and `docs/setup.md`                                                                                                                                               |
| W4   | `docs/functional-requirements/` with `fr/`, `docs/quality-requirements/` with `qr/` and its `QRT-nn` sections, `docs/architecture/README.md` with `adr/`, its container view and responsibilities, and `docs/glossary.md`                                                |
| W5   | `docs/deployment.md` and `docs/features.md`                                                                                                                                                                                                                              |
| W6   | `docs/analytics.md` and `docs/observability.md`                                                                                                                                                                                                                          |
| W7   | `docs/usability-tests/` with its `README.md` index and its `ut-01/` record — `README.md`, `surveys.md`, `consent.md`, `sessions/`, `results.md`, and `images/` — plus the private `<organization>/<repo>-usability-data` repository and the recordings folder outside it |
| W8   | `docs/configuration-plan.md`, the maintained inventory of the configuration and its `CFG-nn` items, with the review's evidence at `reports/week-08/cm-evaluation.md`                                                                                                     |
| W9   | `docs/user-acceptance-tests.md`, the maintained `UAT-nn` journeys and their run history                                                                                                                                                                                  |

Weekly reports live at `reports/week-NN/README.md` in every week, and the Moodle PDF is the private wrapper in every week.
Meeting artifacts live at `reports/week-NN/meeting-report.md`, plus a `meeting-transcript.md` beside it when the meeting was recorded or held in writing.
That shape is fixed; do not redesign it per week.
The Week 9 report records the Sprint 9 UAT session, quality plan results, threshold review and handoff preparation.
The Week 10 report is the final project report and links the project reflection at `reports/week-10/reflection.md`.
The package `handoff.md` at the product repository root is an explicit exception to the artifact locations.
The Sprint 10 review and handoff share one meeting script and report under `reports/week-10/`.

Week 1 adds two more files beside them, both evidence rather than maintained documentation: `meeting-script.md` and `candidate-list.md`.
They exist only because Week 1 is the week where the customer meeting and the alternatives search happen.
Every later week writes the script again for that week's meeting, because the customer is met every week, and later weeks that need another alternative add to the comparison rather than reopening the search.

## Assignment Authoring Checklist

Before writing or editing an assignment:

1. Read `course/rules.md`, `requirements/general-requirements.md`, `requirements/repository-requirements.md`, `requirements/pull-requests-requirements.md`, and the requirements file of every artifact the week touches.
   Check whether the rule you are about to write already exists there.
2. Write the delta, not the rule. "Complete every requirement marked `**Since: WN**` for the current week in `requirements/repository-requirements.md`", plus what this week specifically adds.
3. Give the concrete paths and the week-specific minima: how many items, which IDs, which fields.
4. Give the week report contents as a list of links, not as prose describing what is in each linked file.
5. Give the Moodle wrapper contents as a list, including the private-only items for that week.
6. State the deviations requirement and the privacy confirmation line once, and only where the assignment first needs them.
7. Add a short "what good looks like" section.
   It is the only place an assignment gives quality guidance; the detail belongs in a guide.
8. End with a checklist that a student can tick.
9. Check the links, including heading anchors, and check the paths against the destination map above.

## Terminology

Use these words and do not invent local synonyms:

`weekly report`, `weekly public report`, `supporting artifact`, `private-only artifact`, `external-but-indexed artifact`, `repository-resident artifact`, `deviation`, `customer`, `stakeholder`, `kickoff meeting`, `meeting report`, `meeting transcript`, `meeting script`, `decision`, `action point`, `open question`, `alternative`, `property`, `gap`, `value proposition`, `assumption`, `story issue`, `task issue`, `traces to`, `rests on`, `project plan`, `GitHub project`, `plan milestone`, `milestone`, `threshold of success`, `failure statement`, `success statement`, `risk register`, `proof of concept` (PoC), `minimum usable product` (MUP), `minimum viable product` (MVP), `product backlog`, `sprint`, `sprint backlog`, `release`, `PBI`, `SBI`, `story points`, `sprint retrospective`, `team number`, `functional requirement`, `functional requirements index`, `quality requirement`, `quality requirements index`, `quality requirement test`, `quality requirement testing plan`, `evidence`, `development environment`, `integration environment`, `staging environment`, `production environment`, `university VM`, `university network`, `deployed test`, `deployment runbook`, `architectural decision record`, `ADR index`, `architecturally significant requirement`, `quality attribute scenario`, `architectural driver`, `option`, `container`, `container view`, `container diagram`, `container responsibilities`, `issue type`, `one-time catch-up`, `sprint planning`, `product backlog refinement`, `sprint review`, `retrospective`, `velocity`, `glossary`, `feature`, `feature documentation`, `provenance`, `conformance`, `product analytics`, `observability`, `signal`, `measure`, `metric`, `statistic`, `instrument`, `counter-metric`, `focus metric`, `input metric`, `metric tree`, `event`, `instrumentation`, `SLI`, `service level indicator`, `analytics backend`, `observability backend`, `dashboard`, `telemetry`, `usability test`, `usability test task`, `usability test record`, `participant`, `participant profile`, `usability session`, `usability finding`, `consent`, `recording`, `SUS`, `SEQ`, `private usability-data repository`, `recordings folder`, `configuration`, `configuration management`, `configuration review`, `configuration plan`, `configuration evaluation`, `configuration item`, `baseline`, `upkeep`, `user acceptance test`, `UAT record`, `handoff`, `handoff preparation`, `code freeze`, `final report`, `project reflection`, `individual reflection and peer evaluation`, `final repository state`, `final release`, `pitch deck`.

For `measure`, `metric`, `statistic`, and `instrument`, [Measurement Terminology](requirements/general-requirements.md#measurement-terminology) is the definition.

"Customer" is the term for the person your team answers to, who is your instructor.
Never "client" for them.
The customer is one of the stakeholders, so "stakeholder" is not wrong, but when a sentence means the customer specifically, write "customer" rather than the generic "stakeholder".
In artifacts, the label is `Customer`, not a real name.
The word "instructor" is allowed in prose explaining who the customer is, and nowhere else.

A decision that needs an entry, per `requirements/decisions-requirements.md`, is a `DEC-nnn` entry in `docs/decisions.md`, and a later artifact cites the decision by its `DEC-nnn`.
An architectural, technology, or functional-behaviour choice is an `ADR-nnn` architectural decision record in `docs/architecture/adr/`, per `requirements/adr-requirements.md`, not a `DEC-nnn`.
Any other decision is a team decision recorded with its reason in the one artifact it changes.
The entry does not list what it changed; the artifact it changed cites it, so there is no `Changes` list, `TBD`, or `None`.
A meeting report lists its meeting's `DEC-nnn` under `## Decisions`, and the weekly report has no decisions section.
Action points are **not** an identifier family: there is no `ACT-nn`, a later week cites one by its report's path and `#action-points` anchor with the action quoted, and when it changes the repository, it is carried out by a task issue.

ITPD uses elements of Scrum from Week 3 on.
The sprint structure lands in Week 3: one course week is a sprint, with a goal, a release, and a GitHub milestone of its own, and a plan milestone (`MLS-nn`) is the plan's increment, which is not on GitHub.
The ceremonies arrive in Week 4: each sprint opens with planning and the backlog's refinement, estimation is an activity inside them and is carried by the `MoSCoW`, `Story Points`, and `Priority` issue fields, and every sprint from `SPRINT-04` ends with a retrospective at `reports/week-NN/sprint-retrospective.md`.
Velocity is computed by hand from the stories' `Story Points`, because a single-select field holds one option and cannot be added up.
The weekly customer meeting is the Sprint Review, and it is not a second meeting.
There is no daily standup.
`product backlog`, `sprint backlog`, PBI, SBI, and `story points` are terms introduced and used later in the course, not banned.
This paragraph records the vocabulary; the requirements of the week that introduces each term define what it obliges a team to do.

## Do Not

- Do not restate a rule from `requirements/` inside an assignment.
- Do not make a requirement file into a guide or a guide into a requirement.
- Do not add a rule to `course/rules.md` that is not stated in `requirements/`.
- Do not create files under `docs/` or `reports/` in this directory.
  Those paths belong to student repositories.
- Do not commit raw participant data or a recording anywhere in the public repository, and do not restate the visibility rule here: [The Usability Data Repository](requirements/visibility-requirements.md#the-usability-data-repository) owns it.
- Do not copy the `swp_26/` promotion convention, its artifact-type vocabulary, or its GitLab support into these materials.
- Do not restate the syllabus's late-submission, attendance, or weighting policy in an assignment, a guide, or `course/rules.md`.
  Link `course/syllabus.md`.
  The one exception is the deadline, which `course/rules.md` states once, including that the group submissions from Week 4 to Week 9 are due on Saturday at 23:59 with no soft deadline, so that no assignment has to invent its own date.
- Do not hand-edit `lectures/*.pdf` or put a deck rule in this file.
  Those PDFs are build output from `pnpm run build:lectures`, and `lectures/AGENTS.md` owns the decks.
