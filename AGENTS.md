# AGENTS.md

Operating instructions for coding agents maintaining the student-facing course materials in `itpd/`.

## Repository Map

### Maintained Here

| File                                             | Owns                                                                                                                                                      |
| ------------------------------------------------ | --------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `README.md`                                      | Student entry point and routing. Nothing else.                                                                                                            |
| `course/syllabus.md`                             | The single source of truth for the schedule: week-by-week focus, dates, submission deadlines, and course policies. Edited here.                           |
| `course/rules.md`                                | The course contract: public vs private, hygiene, AI policy, deadlines, submission channel. Short, and a router rather than a second rulebook.             |
| `course/teams-and-projects.md`                   | Which team number works on which project. Regenerated each term, and a repeated project name is not an error because two teams may share a project name.  |
| `requirements/general-requirements.md`           | The rules no single artifact owns: artifact terms, the `reports/week-NN/` vs `docs/` split, identifier rules, traceability into later weeks.              |
| `requirements/visibility-requirements.md`        | Who may see an artifact: the visibility model, where each sensitive item goes, screenshot evidence.                                                       |
| `requirements/research-requirements.md`          | The Week 1 research: where it lives, alternatives, properties and comparison, gaps, value propositions, research honesty.                                 |
| `requirements/assumptions-requirements.md`       | `docs/assumptions.md`: where it lives, what an assumption is, what rests on it, how it is checked and settled, and the full example.                      |
| `requirements/decisions-requirements.md`         | `docs/decisions.md`: where it lives, a decision's entry and fields, what cites it, how it is reversed, and the full example.                              |
| `requirements/product-vision-requirements.md`    | `docs/product-vision.md`: where it lives, the goal, stakeholders, constraints, boundary, system context, and the full example.                            |
| `requirements/user-stories-requirements.md`      | Story issues: where they live, the story, acceptance criteria, MoSCoW priorities, the minimum usable product candidate, and the full example.             |
| `requirements/prototypes-requirements.md`        | Prototypes: where they are recorded, and the validation rules for showing one.                                                                            |
| `requirements/customer-meetings-requirements.md` | Meetings with the customer: every meeting, the kickoff, showing working software, permission, and the script, report, and transcript with their examples. |
| `requirements/weekly-report-requirements.md`     | What is handed in each week: the weekly public report, the AI usage report, deviations, the Moodle PDF.                                                   |
| `requirements/repository-requirements.md`        | Repository and platform mechanics: GitHub, pull requests, branch protection, link checking, permalinks, snapshots, changelog, CI.                         |
| `guides/alternatives-research.md`                | Method for finding and evaluating alternatives. Explanatory, not normative.                                                                               |
| `guides/comparison-and-synthesis.md`             | Method for building the comparison, finding gaps, writing the value proposition. Explanatory, not normative.                                              |
| `guides/customer-kickoff-meeting.md`             | Method for the kickoff: the five areas and the Mom Test pass. Explanatory, not normative.                                                                 |
| `guides/user-stories-and-prototyping.md`         | Method for turning a gap into stories, writing acceptance criteria, and testing an idea cheaply. Explanatory, not normative.                              |
| `guides/validating-with-the-customer.md`         | Method for meetings after the kickoff and for recording what they changed. Explanatory, not normative.                                                    |
| `assignments/assignment-N.md`                    | Learner-facing requirements for one week. Deltas, paths, and evidence only.                                                                               |
| `lectures/AGENTS.md`                             | The lecture decks: `lecture-N.typ` sources, their generated PDFs, the build, the layout contract, and the conversion method. Not student-facing.          |

### Tooling

Markdown in this directory is formatted and linted from Node.
The toolchain is pinned: Node 26 and pnpm, both from `flake.nix`.
Run `pnpm run format:markdown` before committing.
`pnpm run format:markdown:check` and `pnpm run lint:markdown` are the gates.
The decks have their own gate, `pnpm run check:lectures`, and `lectures/AGENTS.md` owns it.

| File                                      | Owns                                                                                                                                                                                                     |
| ----------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `flake.nix`                               | The pinned development shell: Node 26, pnpm, typst, the `backlog` CLI, ripgrep, and the deck font, with a `FONTCONFIG_FILE` of its own.                                                                  |
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

Their fixtures run with `pnpm run test:markdown-format` and `pnpm run test:markdown-rules`, and all four gates run in CI on every pull request.
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
The `Done` criteria come from `definition_of_done` in `backlog/config.yml`, which is this repository's four Markdown gates and the deck check.

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

The other two files in `course/` are reference material and are deliberately not layers: `course/syllabus.md` is the single source of truth for the schedule and the course policies, `course/teams-and-projects.md` is regenerated each term, and `course/rules.md` links to the syllabus rather than copying it.

`lectures/` is also not a layer.
It keeps its own rules, its build, and its gate in `lectures/AGENTS.md`; this file names the command and the workflow and leaves the rest there.

1. When a rule already exists in `requirements/`, an assignment points at it and states only the week-specific addition or a stricter minimum.
2. A guide shows the method.
   It does not define requirements, and it links to the requirement rather than repeating it.
3. `course/rules.md` states the student-facing contract and links into `requirements/`.
   If `course/rules.md` and a requirements file disagree, fix `course/rules.md`.
4. Normative text uses `Required` / `Recommended` / `Example` labels so an example is never mistaken for a rule.

Inside `requirements/`, every rule has one owner, and every other mention is a link without the rule's numbers or lists.

| File                                                                                                                                                                                 | Owns                                                                                                                                                                                                      | Links, rather than restates                                              |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------ |
| `general-requirements.md`                                                                                                                                                            | Artifact terms, the `docs/` vs `reports/` split, identifier families and how they are cited, traceability into later weeks                                                                                | Any one artifact's paths, fields, or content                             |
| `visibility-requirements.md`                                                                                                                                                         | Who may see each item: public, Moodle only, or never committed, and how screenshots are published                                                                                                         | Where an artifact lives in the repository                                |
| One file per artifact group: `research-`, `assumptions-`, `decisions-`, `product-vision-`, `user-stories-`, `prototypes-`, `customer-meetings-`, and `weekly-report-requirements.md` | For its artifacts: where each lives, its sections, fields, labels, and close states, how it records a change, what each part must say (counts, quality bars, priority meanings), and the one full example | Identifier, visibility, and platform rules, and another artifact's rules |
| `repository-requirements.md`                                                                                                                                                         | Platform configuration and workflow: the files under `.github/`, labels, branches, pull requests, link checking, and CI                                                                                   | What a story or an artifact must say                                     |
| `course/rules.md`                                                                                                                                                                    | The contract summary and the router                                                                                                                                                                       | Any number or list that a requirement owns                               |

Each artifact file reads in one order: where the artifact lives, then one section per part, then the full example.
A part may keep a small example beside the rule it illustrates, such as the boundary table, even when the full example contains it.

## Conventions

- **Filenames** are kebab-case: `assignment-1.md`, `user-stories-requirements.md`.
- **Weeks** are zero-padded: `reports/week-01/`, through `reports/week-09/`.
- **Identifiers** are zero-padded and stable: `ALT-01`, `GAP-01`, `VP-01`, `ASM-01`, and `DEC-01` are the Week 1 families.
  `US-01` for user stories and `AC-01` for the acceptance criteria of one story are introduced in W2.
  A later identifiers family arrives with the requirement that first uses it, not before.
  An `AC-nn` is scoped to its story issue and is cited together with it; the other families are repository-wide.
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

| Week | Maintained artifacts                                                                                                                             |
| ---- | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| W1   | `docs/research/` — `alternatives.md`, `comparison.md`, `gap-analysis.md`, `value-proposition.md`; `docs/assumptions.md`; and `docs/decisions.md` |
| W2   | `docs/product-vision.md`, and `docs/architecture/context.<ext>` when the context diagram is committed (the stories are GitHub issues)            |

Weekly reports live at `reports/week-NN/README.md` in every week, and the Moodle PDF is the private wrapper in every week.
Meeting artifacts live at `reports/week-NN/meeting-report.md`, plus a `meeting-transcript.md` beside it when the meeting was recorded or held in writing.
That shape is fixed; do not redesign it per week.

Week 1 adds two more files beside them, both evidence rather than maintained documentation: `meeting-script.md` and `candidate-list.md`.
They exist only because Week 1 is the week where the customer meeting and the alternatives search happen.
Every later week writes the script again for that week's meeting, because the customer is met every week, and later weeks that need another alternative add to the comparison rather than reopening the search.

## Assignment Authoring Checklist

Before writing or editing an assignment:

1. Read `course/rules.md`, `requirements/general-requirements.md`, `requirements/repository-requirements.md`, and the requirements file of every artifact the week touches.
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

`weekly report`, `weekly public report`, `supporting artifact`, `private-only artifact`, `external-but-indexed artifact`, `repository-resident artifact`, `deviation`, `customer`, `kickoff meeting`, `meeting report`, `meeting transcript`, `meeting script`, `decision`, `action point`, `open question`, `alternative`, `property`, `gap`, `value proposition`, `assumption`, `story issue`, `traces to`, `rests on`, `threshold of success`, `proof of concept` (PoC), `minimum usable product` (MUP), `minimum viable product` (MVP), `product backlog`, `sprint backlog`, `PBI`, `SBI`, `story points`, `sprint retrospective`, `team number`.

<!-- TODO "user story issue"? -->

"Customer" is the term for the person your team answers to, who is your instructor.
Never "client" or "stakeholder" for them.
In artifacts, the label is `Customer`, not a real name.
The word "instructor" is allowed in prose explaining who the customer is, and nowhere else.

Every decision, the customer's or the team's, is a `DEC-nn` entry in `docs/decisions.md`, and a later artifact cites the decision by its `DEC-nn`.
The entry does not list what it changed; the artifact it changed cites it, so there is no `Changes` list, `TBD`, or `None`.
A meeting report lists its meeting's `DEC-nn` under `## Decisions`, and the weekly report has no decisions section.
Action points are **not** an identifier family: there is no `ACT-nn`, a later week cites one by its report's path and `#action-points` anchor with the action quoted, and it is carried out by a tracked issue.

ITPD uses elements of Scrum later in the course.
One course week is then a sprint, sprints start with planning and grooming, estimation is required with no unit prescribed, and each sprint ends with a retrospective at `reports/week-NN/sprint-retrospective.md`.
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
  The one exception is the soft/hard deadline pair, which `course/rules.md` states once so that no assignment has to invent its own dates.
- Do not hand-edit `lectures/*.pdf` or put a deck rule in this file.
  Those PDFs are build output from `pnpm run build:lectures`, and `lectures/AGENTS.md` owns the decks.
