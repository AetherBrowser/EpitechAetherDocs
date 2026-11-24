---
name: "AETHER"
title: "Open Source"
slogan: "High-performance memory-safe web browser"
document-date: "September 29, 2026"
modify-date: "November 24, 2026"
---

# **Introduction**

This document covers Complementary Objective A of the Technical Track (Tech4): Opening the Aether project to external contributions. It defines the strategy, governance guidelines, tools, and community engagement timeline for making the Aether browser accessible and usable by external developers. In accordance with the Student Guide, this objective complements the existing community contribution mechanisms of Objective 1, focusing on creating an open and sustainable ecosystem around the official Aether repository. Status: Initial version. The licensing strategy, onboarding documentation, and issue breakdown are established for completion by the end of October 2026. Calls for contributions and proposal processing will continue until May 2027 at least.

# **Part 1: Legal framework and preparation for the opening**

## **1.1 Choice and justification of the license (LICENSE)**

The choice of software license governs the rights granted to contributors and reusers of Aether\'s code.

Selected license: Mozilla Public License 2.0 (MPL 2.0).

Impact analysis and permissions:

- What it allows: Anyone can freely copy, distribute, modify, and integrate Aether\'s code into open-source or proprietary projects.

- What it requires: Any existing source file (or direct modification of an existing file under MPL) must remain open and redistributed under the same MPL 2.0 license. New, separate proprietary files or modules, however, can be distributed under other licenses (low-reciprocity license / file-level copyleft).

- Strategic justification: This choice guarantees perfect alignment and direct compatibility with the Servo rendering engine (itself under MPL 2.0), which forms the foundation of Aether. It protects contributions made to Aether\'s core components while offering optimal flexibility for integrating external dependencies from the Rust ecosystem.

## **1.2 Axis chosen: memory consumption (RAM)**

To preserve the browser\'s architectural consistency while encouraging external participation, the scope is strictly defined: ┌───────────────────────────────────────────────────────┐

│ OPEN PERIMETER (Open) │

├───────────────────────────────────────────────────────┤

│ • UI/egui Integration (Panels, shortcuts, themes) │

│ • Adblock filtering engine (Rule updates, parsing) │

│ • Integration testing & Web Platform Testing (WPT) compliance │

│ • Technical documentation, guides, and translations │

└───────────────────────────────────────────────────────┘

│

> ▼

┌───────────────────────────────────────────────────────┐

│ RESTRICTED PERIMETER (Core) │

├───────────────────────────────────────────────────────┤

│ • Orchestration Core (components/constellation) │

│ • IPC Pipeline & Inter-Process Security Model │

│ • Critical Servo/SpiderMonkey Bindings │

└───────────────────────────────────────────────────────┘

Open to contributions: Interface modules (aether/ports), Adblock engine (components/net/adblock), WPT tests (tests/wpt) and documentation. Under strict team control: The overall orchestration architecture (components/constellation) and the inter-process memory model.

## **1.3 Onboarding and reception documentation**

Three major files are maintained in the repository root:

1.  README.md (Contributor): Project overview, system requirements, local build instructions (mach build), and test execution instructions (mach test).

2.  CONTRIBUTING.md:

    - Rust coding conventions (mach fmt).

    - Commit message format (standard Conventional Commits).

    - Pull Request (PR) submission procedure and acceptance criteria defined in the task in the Github Project.

3.  CODE_OF_CONDUCT.md: Rules of conduct within the Aether community.

## **1.4 Public repository and fallback mirror**

The official repository stays on GitHub. Issues, pull requests, Discussions, the GitHub Project, and releases are handled only there.

A read-only mirror on GitLab is the fallback if GitHub is unavailable. It is updated from the default branch of the official repository. It is not a second place to contribute: merge requests opened on the mirror are not reviewed. The README names both addresses and states that GitHub is the place to contribute.

# **Part 2: Breakdown and structuring of the initial issues**

## **2.1 Idk**

TODO!

## **2.2 Idk**

TODO!

# **Part 3: Sourcing and calls for contribution\'s campaigns**

## **3.1 Targeted channels and communities**

TODO!

## **3.2 Outreach Register**

TODO!

# **Part 4: Management, review and processing of contributions**

## **4.1 Monitoring procedure and SLA**

All contributions received are rigorously monitored to ensure a seamless experience:

- Time to First Response (TFR): Measured and recorded in each PR.

- Strict review policy: No PR is merged blindly. At least one reasoned code review exchange is required.

- Justified rejections or modifications: In case of non-compliance with performance or security requirements, a refactoring is requested or a reasoned rejection is publicly and respectfully provided.

## **4.2 Accessibility metrics and testing**

To measure the effectiveness of the approach, two main indicators are tracked:

1.  Repository metrics: Number of views, clones, stars, and unique contributors.

2.  External accessibility test: Protocol:

    - A person outside the team attempts to install the project and resolve an issue using only the documentation (README.md and CONTRIBUTING.md).

    - Test deliverables: A dated report specifying the installation time, identified roadblocks, and documentation fixes.

## **4.3 GitHub Discussions: releases, bugs, and mutual help**

GitHub Discussions is enabled on the official Aether repository as the public space for conversation that does not belong in a pull request. Issues stay the tracker for confirmed, actionable defects. Discussions stay the place to announce, explain, and help.

Categories:

- **Announcements** (maintainers only): each release is published here on the same day as the GitHub Release. The post links the tag, the changelog, known limitations, and the upgrade notes. Comments stay open so users can report regressions against that version.
- **Q&A**: installation, build (`mach build`), and usage questions. Anyone may answer. A maintainer marks the accepted answer when the thread is resolved.
- **Bugs and regressions**: a first exchange before an issue is opened. The reporter describes the version, the platform, and the steps. If the behavior is reproduced or clearly specified, a maintainer (or the reporter) opens a linked issue and closes the discussion with that link. Duplicate reports stay in the thread so the same bug is not filed twice.
- **Ideas**: feature proposals that are not yet scoped. Accepted ideas become issues in the GitHub Project with the acceptance criteria from CONTRIBUTING.md.

Operating rules:

- Release posts are written by a maintainer and pinned until the next release.
- A question or bug thread without a maintainer reply within the same response window as pull requests (see 4.1) is picked up at the next triage.
- Off-topic or hostile messages are handled under CODE_OF_CONDUCT.md.
- Security reports are not posted in Discussions. They follow the private channel named in the repository security policy.

## **4.4 Recognition of contributors**

People who have commits on the default branch are publicly credited:

- The GitHub Contributors graph.
- An explicit mention in the release notes of the version that includes their change.
- A summary table kept in `CONTRIBUTORS.md` at the repository root, updated at each release.

The table counts commits on the project only. Reviews and messages on Discussions are not rows and do not change the rank.

| id | name | commits |
| --- | --- | --- |
| 1 | *(name)* | xx |
| 2 | *(name)* | xx |

Columns:

- **id**: rank, starting at 1. Rank 1 is the person with the most commits. Ties keep the earlier name first.
- **name**: the name shown on the GitHub profile.
- **commits**: number of commits on the default branch.

The table is regenerated each 1 and 15 of eaxh month from the commit history and sorted by `commits` descending. A person with no commit does not appear.

# **Part 5: Schedule and deliverables (Planning)**

Work is planned on one GitHub Project linked to the official repository. Each card is an issue or a pull request. Columns follow the flow used for contributions: Backlog, Ready, In progress, In review, Done. The open perimeter from section 1.2 is the default scope of cards offered to external contributors. Core work stays on cards assigned to the team.

A release is cut every two months. The tag, the GitHub Release (changelog, known limitations, upgrade notes) and the Announcements post on Discussions happen on the same day.




Dates inside the contribution window of this objective:

| Release | Date | What is expected |
| --- | --- | --- |
| Opening | End of October 2026 | MPL 2.0 in the repository, README, CONTRIBUTING, CODE_OF_CONDUCT, Discussions enabled, GitHub Project created with the first open-perimeter issues, GitLab read-only mirror in place |
| v0.2 | December 2026 | First tagged release on the two-month cadence, announcement post, contributor table generated from the default branch |
| v0.4 | February 2027 | Second release, open issues triaged on the Project, external accessibility test from section 4.2 logged if not already done |
| v0.6 | April 2027 | Third release, contributor table and release notes up to date |
| Close of the tracked window | May 2027 | Contribution calls and proposal processing stop being a graded deliverable. The Project, Discussions, and the two-month release rhythm continue after that date |

Between releases, the Project is the only planning surface: new bugs confirmed from Discussions become issues on the board, and a card with no movement is reviewed at the next triage (section 4.1). The following release is always the next even month. A fix is not held only to match that date when it is already merged. It is listed in the changelog of the release that follows the merge.
