---
name: commit-itpd
description: Create a git commit: use when the user explicitly asks to commit changes.
---

# Commit

- Write conventional commit messages.
- Use a scope that names the area changed, matching the repository map in `AGENTS.md`: `rules`, `requirements`, `guides`, `assignments`, `syllabus`, `lectures`, `readme`, `lint`, `agents`, `scripts`. A change confined to one week's assignment uses that week's scope (`a1`).
  Scopes name the subject area, not the directory, so they survive a file moving; `rules` and `syllabus` still apply now that both live in `course/`.
- Use this required format:

  ```text
  <type>(<optional scope>): <imperative summary>

  <Body explaining what changed and why.>

  Harness: <active harness>
  Model: <current LLM model>
  ```

- The body and both metadata lines are required.
- Fill in `Model:` with the exact `<provider>/<model>` identifier, such as `openrouter/z-ai/glm-5.3-flash`; do not use a bare model name.
- Determine the value first from your own harness identity context:
  under opencode your system prompt states "You are powered by the model named ... The exact model ID is `<provider>/<model>`"; quote that exact string.
- When the identity line is absent or you are uncertain, cross-check with `scripts/opencode/current-model.sh` from the repository root,
  which resolves the active opencode session's provider/model from the local session store.
- Never derive `Model:` from `opencode.json`, `opencode debug config`, or environment variables;
  the resolved config often has no `model` set because selection is per-session, and nothing environment-visible exposes the live choice.
- On harnesses without self-identity context and without an equivalent helper, stop and ask the user for the model name instead of guessing.
- Commit only changes that are already staged. If no changes are staged, stop and ask the user to stage the intended files before continuing.
- **Never include literal `\n` character sequences anywhere in a commit message.** Use actual newline characters for every line break.
- Do not mention unrelated changes.
- Do not include `Co-authored-by` trailers.
