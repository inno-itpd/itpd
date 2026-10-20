# AGENTS.md

Operating instructions for coding agents maintaining the student-facing course materials in `itpd/`.
They apply only in the course repository itself.
When this directory is installed as a skill inside a team's repository, ignore this file and follow `SKILL.md`.

## Repository Map

### Maintained Here

| File                                                   | Owns                                                                                                                                                                                                                                  |
| ------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `README.md`                                            | Student entry point and routing. Nothing else.                                                                                                                                                                                        |
| `SKILL.md`                                             | The entry point for a student's coding agent when a team installs this repository as a skill. A router, like `README.md`, and kept in step with it.                                                                                   |
| `course/syllabus.md`                                   | The single source of truth for the schedule: week-by-week focus, dates, submission deadlines, and course policies. Edited here.                                                                                                       |
| `course/rules.md`                                      | The course contract: public vs private, hygiene, AI policy, deadlines, submission channel. Short, and a router rather than a second rulebook.                                                                                         |
| `course/teams-and-projects.md`                         | Which team number works on which project. Regenerated each term, and a repeated project name is not an error because two teams may share a project name.                                                                              |
| `course/tooling.md`                                    | Tools the course suggests for transcripts, prototyping, and coding agents. Suggestions rather than rules.                                                                                                                             |
| `course/decisions/a3.md`                               | The design decisions behind Assignment 3: the key choices, their reasons, the alternatives, and where each lands, as `A3-DEC-nnn` entries. Maintainer-facing.                                                                         |
| `course/decisions/a4.md`                               | The design decisions behind Assignment 4, as `A4-DEC-nnn` entries, and the two `A3-DEC` entries it reverses. Maintainer-facing.                                                                                                       |
| `requirements/general-requirements.md`                 | The rules no single artifact owns: artifact terms, the `reports/week-NN/` vs `docs/` split, identifier rules, traceability into later weeks.                                                                                          |
| `requirements/visibility-requirements.md`              | Who may see an artifact: the visibility model, where each sensitive item goes, screenshot evidence.                                                                                                                                   |
| `requirements/research-requirements.md`                | The Week 1 research: where it lives, alternatives, properties and comparison, gaps, value propositions, research honesty.                                                                                                             |
| `requirements/assumptions-requirements.md`             | `docs/assumptions.md`: where it lives, what an assumption is, what rests on it, how it is checked and settled, and the full example.                                                                                                  |
| `requirements/decisions-requirements.md`               | `docs/decisions.md`: where it lives, a decision's entry and fields, what cites it, how it is reversed, and the full example.                                                                                                          |
| `requirements/product-vision-requirements.md`          | `docs/product-vision.md`: where it lives, the goal, stakeholders, constraints, boundary, system context, the architecture document it links, and the full example.                                                                    |
| `requirements/architecture-requirements.md`            | `docs/architecture/README.md`: where it lives, the drivers it links, the architecturally significant requirements, the ADR index, and the full example.                                                                               |
| `requirements/adr-requirements.md`                     | `docs/architecture/adr/`: the record, its fields and four body sections, the ASRs its `**Addresses:**` list names, and the full example.                                                                                              |
| `requirements/functional-requirements-requirements.md` | `docs/functional-requirements/`: the requirement, its fields, its behavior, its criteria, the index, and the full example.                                                                                                            |
| `requirements/quality-requirements-requirements.md`    | `docs/quality-requirements/`: the requirement, its ISO/IEC 25010:2023 pair, the six-part scenario, the priority matrix, and the full example.                                                                                         |
| `requirements/user-stories-requirements.md`            | Story issues: where they live, the issue form and its type, the story, acceptance criteria, MoSCoW priorities, and the full example.                                                                                                  |
| `requirements/task-issues-requirements.md`             | Task issues: where they live, the issue form and its `### Requirements` section, how a pull request closes one, and the full example.                                                                                                 |
| `requirements/issue-tracking-requirements.md`          | Issue tracking: the rules every issue shares, the sprint milestones, the five issue fields, the two issue types, the assignees, and the GitHub project.                                                                               |
| `requirements/local-task-tracking-requirements.md`     | Tracking tasks inside the repository: a task tracker with its configuration and Definition of Done, a `TODO.md` checklist, and the workflow that moves Done tasks to completed.                                                       |
| `requirements/minimum-usable-product-requirements.md`  | The minimum usable product candidate: where it is recorded, the candidate, how it is built, delivered, and released, and the full example.                                                                                            |
| `requirements/prototypes-requirements.md`              | Prototypes: where they are recorded, and the validation rules for showing one.                                                                                                                                                        |
| `requirements/planning-requirements.md`                | `docs/project-plan.md` and `docs/threshold-of-success.md`: where they live, the sprint, release, and milestone sections, the velocity fields, progress monitoring, the goals and the statements they came from, and the full example. |
| `requirements/sprint-ceremonies-requirements.md`       | Sprint planning, product backlog refinement, estimation, the Sprint Review, the retrospective, and the full example.                                                                                                                  |
| `requirements/risks-requirements.md`                   | `docs/risks.md`: where the register lives, what a risk states, how it is rated and answered, and the full example.                                                                                                                    |
| `requirements/definition-of-done-requirements.md`      | `docs/definition-of-done.md`: what done means for a story, a task, and a pull request, and the full example.                                                                                                                          |
| `requirements/customer-meetings-requirements.md`       | Meetings with the customer: every meeting, the kickoff, showing working software, permission, and the script, report, and transcript with their examples.                                                                             |
| `requirements/weekly-report-requirements.md`           | What is handed in each week: the weekly public report, the AI usage report, deviations, the Moodle PDF.                                                                                                                               |
| `requirements/releases-requirements.md`                | The changelog, Semantic Versioning, tags, release titles, and cutting a release.                                                                                                                                                      |
| `requirements/pull-requests-requirements.md`           | The pull request lifecycle: every change through a pull request, one change per pull request, branch naming, the template and its implementation notes, review and approval, the evidence, bot and workflow pull requests.            |
| `requirements/repository-requirements.md`              | Repository and platform mechanics: GitHub, branch protection, link checking, permalinks, snapshots, CI.                                                                                                                               |
| `requirements/agent-instructions-requirements.md`      | The team's own `AGENTS.md`: where it lives, and what it states to a coding agent.                                                                                                                                                     |
| `requirements/glossary-requirements.md`                | `docs/glossary.md`: where it lives and what each term carries.                                                                                                                                                                        |
| `guides/alternatives-research.md`                      | Method for finding and evaluating alternatives. Explanatory, not normative.                                                                                                                                                           |
| `guides/comparison-and-synthesis.md`                   | Method for building the comparison, finding gaps, writing the value proposition. Explanatory, not normative.                                                                                                                          |
| `guides/customer-kickoff-meeting.md`                   | Method for the kickoff: the five areas and the Mom Test pass. Explanatory, not normative.                                                                                                                                             |
| `guides/user-stories-and-prototyping.md`               | Method for turning a gap into stories, writing acceptance criteria, and testing an idea cheaply. Explanatory, not normative.                                                                                                          |
| `guides/validating-with-the-customer.md`               | Method for meetings after the kickoff and for recording what they changed. Explanatory, not normative.                                                                                                                                |
| `guides/planning-and-tracking.md`                      | Method for the threshold of success, the plan and its releases, milestones, risks, progress monitoring, and the ceremonies. Explanatory, not normative.                                                                               |
| `guides/quality-and-architecture.md`                   | Method for the quality expectations, the requirements, the drivers, the architectural decision records, and the indexes. Explanatory, not normative.                                                                                  |
| `assignments/assignment-N.md`                          | Learner-facing requirements for one week. Deltas, paths, and evidence only.                                                                                                                                                           |
| `lectures/AGENTS.md`                                   | The lecture decks: `lecture-N.typ` sources, their generated PDFs, the build, the layout contract, and the conversion method. Not student-facing.                                                                                      |

`SKILL.md` makes a checkout of this repository a skill named `itpd`, which a team installs as a Git submodule per `requirements/repository-requirements.md`.
When a requirements file, guide, or assignment is added, renamed, or removed, update the routing in `SKILL.md` in the same change, as in `README.md`.

### Tooling

Markdown in this directory is formatted and linted from Node.
The toolchain is pinned: Node 26 and pnpm, both from `flake.nix`.
A human maintainer starts at `CONTRIBUTING.md`, which owns the prerequisites, the setup, and the repository settings the workflows need.
Run `pnpm run format:markdown` before committing.
`pnpm run format:markdown:check` and `pnpm run lint:markdown` are the gates.
The decks have their own gate, `pnpm run check:lectures`, and `lectures/AGENTS.md` owns it.
Links have theirs, `pnpm run check:links`, which runs `lychee` from the shell over the directory, so it skips gitignored paths such as `tmp/`.
It checks heading anchors with `--include-fragments` and fetches external links, so it needs network.
Workflow files are checked locally with `pnpm run lint:actions`, which runs `actionlint` from the shell over `.github/workflows/` after any edit there.
It uses `shellcheck` for `run:` scripts, and it reads workflow files only, not the composite action under `.github/actions/`.

| File                                      | Owns                                                                                                                                                                                                     |
| ----------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `CONTRIBUTING.md`                         | The maintainers' prerequisites, the setup, the checks to run before a pull request, and the repository settings the workflows need.                                                                      |
| `flake.nix`                               | The pinned development shell: Node 26, pnpm, typst, the `backlog` CLI, ripgrep, lychee, actionlint, shellcheck, and the deck font, with a `FONTCONFIG_FILE` of its own.                                  |
| `.envrc`                                  | `use flake`, so `direnv` loads the shell on entering the directory.                                                                                                                                      |
| `scripts/markdown.mjs`                    | Formats, checks, and lints every tracked `.md` file except `.opencode/`, `.agents/`, and `backlog/`.                                                                                                     |
| `scripts/lectures.mjs`                    | Builds and checks every `lectures/lecture-N.typ` against its committed PDF, with the Typst version and the build epoch pinned.                                                                           |
| `prettier/markdown/sentences-per-line.js` | Formatter plugin: one sentence per line, and table rows left on one physical line.                                                                                                                       |
| `eslint/markdown/no-split-sentence.js`    | Lint rule for a sentence split across two lines. Registered but off, so it reports nothing.                                                                                                              |
| `eslint.config.ts`                        | Lint rules for Markdown. `@eslint/markdown` for the GFM language, `eslint-markdown` for its rules, plus the two local plugins.                                                                           |
| `.vscode/tasks.json`                      | Editor tasks for the same commands.                                                                                                                                                                      |
| `.github/actions/prepare/action.yml`      | The shared CI setup for the Markdown jobs: pnpm, Node 26, and a frozen-lockfile install. A job checks out before it, because a local action has to be on disk. The lectures job does not use it.         |
| `.github/workflows/markdown.yml`          | CI: the format check, the lint, and both plugin fixtures, as three separate jobs, all through `prepare`.                                                                                                 |
| `.github/workflows/lectures.yml`          | CI: Nix installed by a SHA-pinned action, the shell closure restored by `nix-community/cache-nix-action`, then the deck check through `nix develop`. The Markdown jobs use `prepare`; this one does not. |
| `.github/workflows/lychee.yml`            | CI: the link check through `lycheeverse/lychee-action` on pull requests and `main`, without `--include-fragments`, so anchors are checked only by `pnpm run check:links`.                                |
| `.github/workflows/backlog-cleanup.yml`   | CI: every Sunday and on demand, moves the Done tasks to `backlog/completed/` with `backlog task complete` and opens or refreshes one pull request from `chore/backlog-weekly-completed`. Not a gate.     |
| `lychee.toml`                             | Link check settings that `pnpm run check:links` and CI share: the concurrency, the accepted statuses, and the excluded paths and URLs, each with a comment saying why.                                   |

Their fixtures run with `pnpm run test:markdown-format` and `pnpm run test:markdown-rules`, and all four gates run in CI on every pull request.
`requirements/repository-requirements.md` links `.github/workflows/lychee.yml` and `lychee.toml` as the students' link-check example, so a change to either is a change to student-facing material.
`requirements/local-task-tracking-requirements.md` links `.github/workflows/backlog-cleanup.yml` as the students' example of the workflow that moves Done tasks, so a change to it is a change to student-facing material.
`eslint.config.ts` enables the `eslint-markdown` `recommended` set, which lints the same GFM AST as `@eslint/markdown` and so adds rules without a second parse.
Two of its rules are off because they conflict with the house style: `md/no-irregular-dash`, because `course/syllabus.md` uses en and em dashes in its dates and titles and the guides use them deliberately, and `md/code-lang-shorthand`, because it rewrites the `markdown`, `text`, and `yaml` fence labels in `requirements/` and `guides/` to their shorthand forms.
The `markdown/*` built-in rules other than `no-html` are not enabled, because `markdown/no-missing-label-refs` reports the `> [!NOTE]` and `> [!IMPORTANT]` blockquote alerts in `course/syllabus.md` as undefined label references.
`markdown/no-html` runs with `allowed: ['h2']`, so raw HTML is rejected except for the `<h2 id="...">` anchors that carry the stable permalinks `requirements/repository-requirements.md` requires.
`.vscode/settings.json` lints Markdown in the editor, so the sentence, `no-html`, and `md/*` rules report while you write, and it enables format-on-save through `esbenp.prettier-vscode` so editor formatting picks up the local `sentences-per-line` plugin rather than a bundled one.
Editor diagnostics are advisory; the commands above are the gates.
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

| File                                                                                                                                                                                                                                                                                                                                              | Owns                                                                                                                                                                                                                  | Links, rather than restates                                                                                                |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------- |
| `general-requirements.md`                                                                                                                                                                                                                                                                                                                         | Artifact terms, the `docs/` vs `reports/` split, identifier families and how they are cited, traceability into later weeks                                                                                            | Any one artifact's paths, fields, or content                                                                               |
| `visibility-requirements.md`                                                                                                                                                                                                                                                                                                                      | Who may see each item: public, Moodle only, or never committed, and how screenshots are published                                                                                                                     | Where an artifact lives in the repository                                                                                  |
| One file per artifact group: `research-`, `assumptions-`, `decisions-`, `product-vision-`, `architecture-`, `adr-`, `functional-requirements-`, `quality-requirements-`, `user-stories-`, `task-issues-`, `minimum-usable-product-`, `prototypes-`, `customer-meetings-`, `agent-instructions-`, `glossary-`, and `weekly-report-requirements.md` | For its artifacts: where each lives, its sections, fields, labels, and close states, how it records a change, what each part must say (counts, quality bars, priority meanings), and the one full example             | Identifier, visibility, and platform rules, and another artifact's rules                                                   |
| `planning-requirements.md`                                                                                                                                                                                                                                                                                                                        | `docs/project-plan.md` and `docs/threshold-of-success.md`: the sprint, release, and milestone sections, the velocity fields, progress monitoring, and the goals with their statements and statuses                    | Identifier and visibility rules, the issue-field and changelog mechanics, and the risk register                            |
| `sprint-ceremonies-requirements.md`                                                                                                                                                                                                                                                                                                               | Sprint planning, product backlog refinement, estimation, the Sprint Review, and the retrospective                                                                                                                     | The plan's sprint section, the issue fields, the customer meeting, and the weekly report                                   |
| `risks-requirements.md`                                                                                                                                                                                                                                                                                                                           | `docs/risks.md`: the risk's statement and fields, its rating, and its response                                                                                                                                        | Identifier and visibility rules, the plan's review, and the decision log                                                   |
| `definition-of-done-requirements.md`                                                                                                                                                                                                                                                                                                              | `docs/definition-of-done.md`: what done means for a story, a task, and a pull request                                                                                                                                 | Task issues, the repository's pull request, CI, and changelog rules, and the tracker's own list                            |
| `releases-requirements.md`                                                                                                                                                                                                                                                                                                                        | `CHANGELOG.md`: where it lives, its format and groups, Semantic Versioning, tags and their protection, release titles, and what cutting a release changes                                                             | Identifier and visibility rules, the sprint-release linkage in the plan, and the pull request mechanics                    |
| `pull-requests-requirements.md`                                                                                                                                                                                                                                                                                                                   | The pull request lifecycle: every change through a pull request, one change per pull request, branch naming, the template and implementation notes, review and approval, the evidence, bot and workflow pull requests | Branch protection settings, closing a task, the Definition of Done's pull request list, and the tracker's cleanup workflow |
| `repository-requirements.md`                                                                                                                                                                                                                                                                                                                      | Platform configuration and workflow: the files under `.github/` other than the issue forms, branch protection, link checking, and CI                                                                                  | What a story or an artifact must say                                                                                       |
| `issue-tracking-requirements.md`                                                                                                                                                                                                                                                                                                                  | The rules every issue shares, the sprint milestones, the `Responsible` and `Accountable` fields, the assignees, and the GitHub project                                                                                | The issue forms, the branch and pull request mechanics, and the sprint and deviation rules                                 |
| `local-task-tracking-requirements.md`                                                                                                                                                                                                                                                                                                             | The in-repository task tracker, its configuration and Definition of Done, a `TODO.md` checklist, and the workflow that moves Done tasks out of the active list                                                        | Task issues, and the Markdown check, link check, and pull request rules                                                    |
| `course/rules.md`                                                                                                                                                                                                                                                                                                                                 | The contract summary and the router                                                                                                                                                                                   | Any number or list that a requirement owns                                                                                 |

Each artifact file reads in one order: where the artifact lives, then one section per part, then the full example.
A part may keep a small example beside the rule it illustrates, such as the boundary table, even when the full example contains it.

## Conventions

- **Filenames** are kebab-case: `assignment-1.md`, `user-stories-requirements.md`.
- **Weeks** are zero-padded: `reports/week-01/`, through `reports/week-09/`.
- **Identifiers** are zero-padded and stable: `ALT-01`, `GAP-01`, `VP-01`, `ASM-01`, and `DEC-001` are the Week 1 families.
  `US-01` for user stories, `AC-01` for the acceptance criteria of one story or task issue, `CON-01` for constraints, and `BND-01` for boundary items are introduced in W2.
  `RISK-nn` for risks, `TOS-nn` for the goals in the threshold of success, `SPRINT-nn` for sprints, `MLS-nn` for milestones, and `REL-nn` for releases are introduced in W3.
  `FR-nnn` for functional requirements, `QR-nn` for quality requirements, and `ADR-nnn` for architectural decision records are introduced in W4.
  A later identifiers family arrives with the requirement that first uses it, not before.
  `DEC-nnn`, `FR-nnn`, and `ADR-nnn` take three digits, because each grows with every record and can pass 99; every other family takes two.
  An `AC-nn` is scoped to the issue or the functional requirement that carries it and is cited together with it; the other families are repository-wide.
  IDs are never renumbered or reused, including in example text.
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

| Week | Maintained artifacts                                                                                                                                                                                                               |
| ---- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| W1   | `docs/research/` — `alternatives.md`, `comparison.md`, `gap-analysis.md`, `value-proposition.md`; `docs/assumptions.md`; and `docs/decisions.md`                                                                                   |
| W2   | `docs/product-vision.md`, and the context diagram it embeds, `docs/architecture/context.<ext>` with its source (the stories are GitHub issues)                                                                                     |
| W3   | `docs/project-plan.md`, `docs/threshold-of-success.md`, `docs/risks.md`, `docs/definition-of-done.md`, and `docs/setup.md`                                                                                                         |
| W4   | `docs/functional-requirements/` with `fr/`, `docs/quality-requirements/` with `qr/`, `docs/architecture/README.md` with `adr/`, and `docs/glossary.md`; the container, component, and sequence views and the testing plan are W5's |

Weekly reports live at `reports/week-NN/README.md` in every week, and the Moodle PDF is the private wrapper in every week.
Meeting artifacts live at `reports/week-NN/meeting-report.md`, plus a `meeting-transcript.md` beside it when the meeting was recorded or held in writing.
That shape is fixed; do not redesign it per week.

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

`weekly report`, `weekly public report`, `supporting artifact`, `private-only artifact`, `external-but-indexed artifact`, `repository-resident artifact`, `deviation`, `customer`, `stakeholder`, `kickoff meeting`, `meeting report`, `meeting transcript`, `meeting script`, `decision`, `action point`, `open question`, `alternative`, `property`, `gap`, `value proposition`, `assumption`, `story issue`, `task issue`, `traces to`, `rests on`, `project plan`, `GitHub project`, `plan milestone`, `milestone`, `threshold of success`, `failure statement`, `success statement`, `risk register`, `proof of concept` (PoC), `minimum usable product` (MUP), `minimum viable product` (MVP), `product backlog`, `sprint`, `sprint backlog`, `release`, `PBI`, `SBI`, `story points`, `sprint retrospective`, `team number`, `functional requirement`, `functional requirements index`, `quality requirement`, `quality requirements index`, `architectural decision record`, `ADR index`, `architecturally significant requirement`, `quality attribute scenario`, `architectural driver`, `option`, `container`, `issue type`, `one-time catch-up`, `sprint planning`, `product backlog refinement`, `sprint review`, `retrospective`, `velocity`, `glossary`, `provenance`, `conformance`.

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
- Do not copy the `swp_26/` promotion convention, its artifact-type vocabulary, or its GitLab support into these materials.
- Do not restate the syllabus's late-submission, attendance, or weighting policy in an assignment, a guide, or `course/rules.md`.
  Link `course/syllabus.md`.
  The one exception is the deadline, which `course/rules.md` states once, including that the group submissions from Week 4 to Week 9 are due on Saturday at 23:59 with no soft deadline, so that no assignment has to invent its own date.
- Do not hand-edit `lectures/*.pdf` or put a deck rule in this file.
  Those PDFs are build output from `pnpm run build:lectures`, and `lectures/AGENTS.md` owns the decks.
