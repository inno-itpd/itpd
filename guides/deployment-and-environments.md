# Guide: Deployment And Environments

How to take the product from the team's laptops to the university VM, keep staging and production apart, and write the runbook a teammate can redeploy from.

The rules are in [Environments And Deployment](../requirements/repository-requirements.md#environments-and-deployment): the four environments, the university VM and its access, the separate deployments, the manual deploy, the verification, and the rollback.
Which test level runs in which environment is in [Quality Requirement Tests](../requirements/quality-requirements-requirements.md#quality-requirement-tests), and that test's method is in [the quality requirement tests guide](quality-requirement-tests.md).
The addresses are private-only, per [Sensitive Information Reference](../requirements/visibility-requirements.md#sensitive-information-reference), and `docs/setup.md` stays the local guide, per [Setup And Run Instructions](../requirements/repository-requirements.md#setup-and-run-instructions).
This guide is the method: drawing the map, preparing the machine, configuring it, deploying twice, and writing down what works.

**Timebox:** about a day, most of it on the VM before anything is deployed.
The first deploy is the slow one, because the access, the configuration, and the ports are settled there; every later deploy is one command and one check.

<h2>Table of contents</h2>

- [What You Produce](#what-you-produce)
- [Step 1: Map The Four Environments](#step-1-map-the-four-environments)
  - [Write The Map Down Before You Deploy](#write-the-map-down-before-you-deploy)
  - [Pair Each Environment With What It Hosts](#pair-each-environment-with-what-it-hosts)
  - [Separate Staging From Production By Construction](#separate-staging-from-production-by-construction)
  - [Accept What Each Environment Cannot Do](#accept-what-each-environment-cannot-do)
- [Step 2: Prepare The VM](#step-2-prepare-the-vm)
  - [Get It From The Portal And Recreate It](#get-it-from-the-portal-and-recreate-it)
  - [Set The Password Yourself](#set-the-password-yourself)
  - [Reach It From Campus](#reach-it-from-campus)
  - [Keep The Address Out Of The Repository](#keep-the-address-out-of-the-repository)
  - [Give Staging And Production Their Own Ports](#give-staging-and-production-their-own-ports)
  - [Check The Customer Can Open It](#check-the-customer-can-open-it)
- [Step 3: Configure The Deployment](#step-3-configure-the-deployment)
  - [Keep The Shape In `.env.example`](#keep-the-shape-in-envexample)
  - [Install The Secrets Outside The Repository](#install-the-secrets-outside-the-repository)
  - [Build Once And Deploy The Same Commit Twice](#build-once-and-deploy-the-same-commit-twice)
  - [Choose A Directory Or Service You Can Restart](#choose-a-directory-or-service-you-can-restart)
- [Step 4: Deploy To Staging And Run The Deployed Test](#step-4-deploy-to-staging-and-run-the-deployed-test)
  - [Ship The Release Candidate To Staging First](#ship-the-release-candidate-to-staging-first)
  - [Run The Other Implemented Test Where It Can Run](#run-the-other-implemented-test-where-it-can-run)
  - [Capture The Evidence During The Run](#capture-the-evidence-during-the-run)
  - [Fall Back When Staging Is Not There](#fall-back-when-staging-is-not-there)
- [Step 5: Deploy To Production And Verify](#step-5-deploy-to-production-and-verify)
  - [Deploy The Commit Staging Passed](#deploy-the-commit-staging-passed)
  - [Verify The Core Task And Nothing More](#verify-the-core-task-and-nothing-more)
  - [Roll Back Before You Fix Forward](#roll-back-before-you-fix-forward)
  - [Tag After The Review And The Rework](#tag-after-the-review-and-the-rework)
- [Step 6: Document The Deployment](#step-6-document-the-deployment)
  - [Write The Runbook For The Next Person](#write-the-runbook-for-the-next-person)
  - [Keep The Real Values In Moodle](#keep-the-real-values-in-moodle)
  - [Link The Local Setup Instead Of Repeating It](#link-the-local-setup-instead-of-repeating-it)
  - [Record The Run That Failed](#record-the-run-that-failed)
- [Common Mistakes](#common-mistakes)

## What You Produce

```text
docs/deployment.md   the runbook: the four environments, the VM and its access, the configuration, the deploy, the verification, and the rollback
.env.example         the shape of the configuration, with placeholders and no real value
docs/setup.md        the clean-checkout guide, linked from the runbook and not repeated in it
Moodle               the real staging and production addresses, private-only
```

The runbook is the deliverable, and the two deployments are what it describes, so a change to the deployment lands in the file in the same week.

## Step 1: Map The Four Environments

The four environments are the lecture's, and [Environments And Deployment](../requirements/repository-requirements.md#environments-and-deployment) names what each one is.
The method is filling them in for this product before anything is deployed, because the deploy, the ports, and the checks all follow from the map.
[Quality Requirement Tests](../requirements/quality-requirements-requirements.md#quality-requirement-tests) owns which test level runs where, and this step is how the map gets written down.

### Write The Map Down Before You Deploy

For each environment, answer three questions: what runs there, who can reach it, and what configuration and secrets it has.
The answers are the runbook's first table, and they are cheap to write now and expensive to discover later: "who reaches staging" is the port that stays unopened until the day the test is due.

### Pair Each Environment With What It Hosts

One line places each check: a developer's local run in development, the product CI and its suite in integration, the staging deployment in staging, and the customer in production.
A `manual` inspection has no environment of its own, so it happens wherever the product already is, and it is the only level whose map entry is empty.

Production hosts no automated check of its own.
A test that can only pass against production is measuring a state the team has already released, so its level is wrong rather than its environment.

### Separate Staging From Production By Construction

Staging and production are two deployments on one machine, so the separation has to be built rather than remembered: a different port, a different configuration file, a different database name or directory.
Then a command aimed at the wrong one fails loudly instead of writing the customer's data.
Representing production is something the team builds: the same runtime version, the same database engine, and the same configuration shape, with staging's own data, so a passing check there is the confidence the deployment was for.

### Accept What Each Environment Cannot Do

Four limits keep the map honest, and each one is a sentence in the runbook:

- Integration runs outside the university network, so the product CI cannot deploy and cannot reach the VM.
- Development has the team's own state, so a local run proves the code rather than the deployment.
- Staging is not the customer's, so a passing test there is confidence rather than acceptance.
- Production is not a test bed, so it is where the core task is verified and not where a quality requirement is checked.

A team that has not written these down plans a deployment job in CI, or waits for staging to accept the product.

## Step 2: Prepare The VM

The university provides one VM per team, and it hosts both deployments.
This step is what the team does once, before the first deploy, and what the runbook assumes has been done.

### Get It From The Portal And Recreate It

The VM comes from the university portal.
Recreate it from the image the portal offers rather than editing a machine left over from a previous attempt: a machine built from a known image is one the runbook can describe and the next person can rebuild.
Record the image and the shape in the runbook, because "the VM from the portal" is not a rebuild instruction.

### Set The Password Yourself

Set the machine's password to a team secret and keep it out of the repository, per [Configuration And Sensitive Information](../requirements/repository-requirements.md#configuration-and-sensitive-information).
The password goes in the team's password manager and in the Moodle submission when the week needs it, and it is never a value the runbook carries.

### Reach It From Campus

The VM is reachable from the university network, so the SSH session starts from a machine on that network: a lab machine, or the campus connection the university provides.
Every team has at least one member on campus, and that member tests the access before the deployment day rather than on it.
Write the connection command into the runbook with a placeholder for the address, and say which network it needs.

### Keep The Address Out Of The Repository

The VM's IPv4 address is private-only, per [Sensitive Information Reference](../requirements/visibility-requirements.md#sensitive-information-reference).
It lives in the Moodle submission, and the repository and the runbook use `<university-vm-ipv4>`, `$VM_HOST`, or `$STAGING_URL`.
Every command that needs it reads it from an environment variable, so a teammate can copy the command without the value and the public files stay publishable.

### Give Staging And Production Their Own Ports

Choose the two ports before the first deploy, and write them in the runbook beside the command that opens each one.
The customer's address then ends in production's port and the deployed test's address ends in staging's, and neither is a guess made under time pressure.
A port clash is the most common way two deployments on one machine become one deployment.

### Check The Customer Can Open It

Before the Sprint Review, open production from a machine on the university network and give the customer the address through the private channel.
Access nobody has tried is access the meeting discovers, and the fix for a blocked port is not one that fits in a review.

## Step 3: Configure The Deployment

The deployment is a build, a configuration, and a process that stays up.
The method is to make the configuration reproducible, so the second deploy is the same deploy as the first.

### Keep The Shape In `.env.example`

`.env.example` carries every variable the deployment needs, with a placeholder and no real value, per [Configuration And Sensitive Information](../requirements/repository-requirements.md#configuration-and-sensitive-information).
It is the checklist a teammate compares their machine against: a variable missing from the example is a variable the deployment will discover at the first restart.

### Install The Secrets Outside The Repository

The staging and production values live on the VM: an environment file under the service's directory or the file the service's unit loads, whichever the team's setup uses.
The repository holds the shape and the runbook says where the values live on the machine; no secret is committed, and the two deployments do not share one.
A deployment is not a user-visible change, so the changelog does not record it: the runbook describes it, and the week's report records the production verification, per [The Changelog](../requirements/releases-requirements.md#the-changelog) and [Environments And Deployment](../requirements/repository-requirements.md#environments-and-deployment).

### Build Once And Deploy The Same Commit Twice

The commit is the unit that moves, so staging runs it, the deployed test passes against it, and production runs the same commit.
Build the commit on the machine that runs it, or build one artifact and copy it; what must not happen is staging deploying one state and production another, because then the test proved a version nobody released.
Write the commit into the evidence of the run, and cut the tag on that commit: the tag names the commit the deployment ran, so neither the body nor the plan repeats the hash.

### Choose A Directory Or Service You Can Restart

Pick how the product stays up on the VM, such as a process manager, a service unit, or a container runtime, and write down the command that restarts it and the directory it runs from.
The restart is the part a teammate needs at 23:00, and a product started from somebody's shell history is a product only that person can redeploy.

## Step 4: Deploy To Staging And Run The Deployed Test

Staging exists so the release candidate meets the production-like machine before the customer does.
This step ends with the other implemented test's result and the evidence that goes with it.

### Ship The Release Candidate To Staging First

From a campus machine, deploy the candidate to staging and stop there.
A broken configuration is cheap at this point: the customer's instance has not changed, and rolling back means starting the previous staging release rather than repairing production.

### Run The Other Implemented Test Where It Can Run

The test's level in its `QRT-nn` section decides what runs: a `deployed` check against staging when staging is available, and a `scripted` or `CI` check when it is not.
Run the procedure as the section writes it, read the output, and compare it against the `**Pass when:**` criterion.
When the check is deployed, the runner is the member on campus and the command reads the address from an environment variable, per [Run The Deployed Test From Campus](quality-requirement-tests.md#run-the-deployed-test-from-campus).

### Capture The Evidence During The Run

Record the command or tool, the staging environment, the output, the measured value, and the commit it ran against, and add a screenshot when the result is visual, per [Quality Requirement Tests](../requirements/quality-requirements-requirements.md#quality-requirement-tests).
Write it into a dated section of the week's report or a week-local file the report links, so the plan's `Evidence` cell can point at one place.
The address is a placeholder or an environment variable in that record too, because the evidence is published.

### Fall Back When Staging Is Not There

When the VM or its staging deployment is unavailable, postpone the deployment to the date the group chat announces, and declare the deviation, per [Declaring Deviations](../requirements/weekly-report-requirements.md#declaring-deviations).
The other implemented test then takes one of the two forms [Fall Back When Staging Is Missing](quality-requirement-tests.md#fall-back-when-staging-is-missing) sets out: written at the `CI` or `scripted` level it can run, with that run's evidence, or left at `deployed` with its row `Not verified` and the sprint the VM is now expected in.
The Sprint Review shows the local product and the deployment plan in the meantime, per [Showing Working Software](../requirements/customer-meetings-requirements.md#showing-working-software), and the deployed check is added when the machine arrives.

## Step 5: Deploy To Production And Verify

Production is the state the customer uses, so this step is about the same commit, one check, and a way back.

### Deploy The Commit Staging Passed

Deploy the candidate that staging ran, from a campus machine, and do not rebuild it on the way.
When staging has not run, or its result is `Fails`, production waits: a deploy that skips the check is a deploy nobody has tested.

### Verify The Core Task And Nothing More

Do the product's core task on the deployed instance, as a user would, and record what was checked in the week's report, per [Environments And Deployment](../requirements/repository-requirements.md#environments-and-deployment).
[The Candidate](../requirements/minimum-usable-product-requirements.md#the-candidate) names the core task, and it is the one thing the deployment must do; a walk through every screen is a test that is never finished and never repeated.

### Roll Back Before You Fix Forward

A deploy that fails its verification is rolled back to the previous release, and the runbook says how, per [Environments And Deployment](../requirements/repository-requirements.md#environments-and-deployment).
Then fix on `main`, let the CI run, and deploy again from staging: a forward fix under pressure on the live instance is how a bad deploy becomes an outage.
Write the rollback command before the deploy that needs it, because it is the one command nobody has time to invent.

### Tag After The Review And The Rework

The release is cut after the Sprint Review and any same-week rework, on the state the sprint leaves behind, per [Releases](../requirements/planning-requirements.md#releases) and [Cutting A Release](../requirements/releases-requirements.md#cutting-a-release).
When the review's rework changes the commit, redeploy it to staging, rerun the other implemented test, redeploy the same final commit to production, verify it, and only then tag it.
The tag then names the commit the deployment verified, and the version is the team's choice under [Versioning And Tags](../requirements/releases-requirements.md#versioning-and-tags).

## Step 6: Document The Deployment

`docs/deployment.md` is the runbook, and it is written for the teammate who has to redeploy without the member who did it first.
[Environments And Deployment](../requirements/repository-requirements.md#environments-and-deployment) fixes what it carries; this step is how to write it so it is used.

### Write The Runbook For The Next Person

Open with the environment map, then the VM and its campus-network access, then the configuration, the deploy, the verification, and the rollback, in the order the work happens.
Every command is copy-pasteable and every value it needs is a placeholder or a variable, so a reader substitutes one value from the Moodle submission and runs the page top to bottom.

### Keep The Real Values In Moodle

The IPv4 address, the host name, the password, the token, and the secret are Moodle-only, per [Sensitive Information Reference](../requirements/visibility-requirements.md#sensitive-information-reference).
The runbook names where to get each one, such as "the address in the Moodle submission", rather than what it is, and the public report says the product is reached from the university network and points at the submission for the address.

### Link The Local Setup Instead Of Repeating It

`docs/setup.md` is the clean-checkout guide: install, configure, run, and test the product locally, per [Setup And Run Instructions](../requirements/repository-requirements.md#setup-and-run-instructions).
The runbook links it for the build and the run and repeats none of it, because a second copy of the install steps is the copy that goes stale while the first one is fixed.
The deployment adds what the local guide cannot know: the machine, the two deployments, the ports, the secrets, and the rollback.

### Record The Run That Failed

The runbook is also the record of the deploy that went wrong: the check that showed it, the rollback that recovered it, and what the next person should try first.
A document that stops at the first successful run is a happy path, and the reader who needs it most is the one meeting the failure it never describes.

## Common Mistakes

- **A committed secret.**
  An `.env`, a key, or a password in the repository is public from the moment it is pushed, and deleting the file does not remove it from the history; the shape goes in `.env.example` and the value stays on the VM.
- **A real IPv4 address in a public file.**
  The runbook, the week's report, and a test's `**Runs at:**` all publish what they name; the address is Moodle-only, and every command reads a placeholder or `$STAGING_URL`.
- **Staging that does not represent production.**
  A different stack, a different database engine, or a different configuration makes a passing staging test prove nothing; the two deployments differ in their port, their configuration, and their data, and not in what runs.
- **A test run against production.**
  The measurement happens on a state the team can no longer change, so a failure is a released failure; staging is where a requirement is checked and production is where the core task is verified.
- **A deployment nobody else can repeat.**
  A command from one member's shell history, a directory only they know, and a secret only they hold is a deployment the team loses when they are busy; the runbook carries the command, the directory, and the restart.
- **An assumed domain name.**
  The course gives an IPv4 address and no domain, so a runbook or a report that invents a name gives the customer a link that does not resolve; the address comes from the Moodle submission and the network is the university's.
- **A link check pointed at the private address.**
  Excluding the VM's address from the link check publishes it in the configuration, and there is no public link to exclude in the first place: a private value is absent from the checked files, not excused in the checker.
- **A deployment document that stops at the first successful run.**
  It describes the happy path and leaves the rollback, the failed verification, and the missing VM to be discovered in the week they matter; the runbook carries all three.
- **A deployment document that copies `docs/setup.md`.**
  The second copy of the install steps drifts from the first, and a reader cannot tell which page is current; link the local guide and write only what the deployment adds.
