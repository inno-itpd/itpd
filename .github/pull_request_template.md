<!-- PR title: use conventional commit style, e.g. "feat(assignments): ..." or "fix(rules): ...". -->

## Summary

<!-- What changed and why? Name the layer the change belongs to and, if it adds or changes a rule, the requirement file it changes or the week-specific delta it adds. -->

## Changes

<!-- Key changes as concise bullets, grouped per file. -->

## Definition of Done

<!-- CI is the backstop for Markdown formatting, Markdown lint, and the plugin test suites.
     Anything you could not run locally goes in Reviewer notes with the reason. -->

- [ ] The layering rule in `AGENTS.md` holds: no restated rules, and each layer links down.
- [ ] Links and heading anchors in the changed files resolve.
- [ ] `npm run format:markdown:check` and `npm run lint:markdown` pass.
- [ ] CI is green.

## Reviewer notes

<!-- What to look at first, what you want challenged, any check you could not run, and any follow-up you deliberately deferred. -->
