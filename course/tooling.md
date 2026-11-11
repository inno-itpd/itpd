# Course Tooling

Tools the course suggests, with a line on what each is for.
They are suggestions rather than rules, and each section links the requirements that own the work its tool touches.

## AssemblyAI

[AssemblyAI](https://www.assemblyai.com/) turns a recorded meeting into a draft transcript.
The rules for the [meeting transcript](../requirements/customer-meetings-requirements.md#meeting-transcript) own the permissions, the cleaning, and where it goes.

## Google AI Studio

[Google AI Studio](https://aistudio.google.com/) is a browser workspace for trying prompts and assembling an early interactive prototype without product code.
[Prototype Requirements](../requirements/prototypes-requirements.md) own what a prototype must change and where it is recorded.

## OpenCode

[OpenCode](https://opencode.ai/) is a coding agent that can run on free models and read these course materials as a skill.
[The Course Materials As An Agent Skill](../requirements/repository-requirements.md#the-course-materials-as-an-agent-skill) shows how to install them.

## OpenPanel

[OpenPanel](https://openpanel.dev/) is an open-source product analytics backend that self-hosts on the team's VM, with one project per environment.
[Product Analytics Requirements](../requirements/analytics-requirements.md) own the focus metric and the metric tree, the events, and the two projects.

## OpenObserve

[OpenObserve](https://openobserve.ai/) stores and serves metrics, logs, and traces from one service, and it self-hosts on relatively low resources.
One instance carries a `staging` and a `production` organization.
[Observability Requirements](../requirements/observability-requirements.md) own the signals, the `SLI`s, and the two dashboards.
Both tools are defaults rather than rules: another documented backend is allowed for either.

## Usability Testing

A form tool such as [Google Forms](https://forms.google.com/) or [Microsoft Forms](https://forms.office.com/) carries the pre-test, the SEQ, the SUS, and the open-ended post-test, and a recorder such as [OBS Studio](https://obsproject.com/) or QuickTime records the screen and the audio.
The private text repository and the cloud folder hold what must not be public.
The Week 6 OpenPanel events give the task funnel, read with the `source=usability-test` filter, and OpenObserve is optional and useful only when the test needs error or latency evidence.
Neither backend is required for the manual measures, and the test does not need a remote-testing platform.

[Usability Testing Requirements](../requirements/usability-testing-requirements.md) own the test record, the participants, the tasks, the protocol, the instruments, the consent, the private repository, the results, and the triage, and [Guide: Usability Testing](../guides/usability-testing.md) is the method.

When a third-party form or recorder is used, the consent names it; the team exports the responses into the private repository as text, and the team deletes the third-party copy after the course is graded.
