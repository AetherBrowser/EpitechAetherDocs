---
name: "AETHER"
title: "Measure, Test & Optimize (Objective D)"
slogan: "High-performance memory-safe web browser"
document-date: "September 16, 2026"
modify-date: "November 12, 2026"
---

**Introduction**

This document covers complementary objective D of the Technical Track (Tech4): measuring, testing and optimizing Aether\'s technical performance. It builds the indicators already outlined in the Action Plan (§3.3) and on the baseline already measured, found in the Budget/Risk Analysis. Written to be reviewed with the mentor.

Status: initial draft, covering the deliverable due end of December 2026 (axis and indicators chosen, quantified target). The full protocol, diagnosis, and optimization loops will be completed at the deadlines in the calendar (January to May 2027).

**Part 1: Priority axis**

**1.1 Axis chosen: memory consumption (RAM)**

Memory is selected as the priority axis for Objective D. It is already Aether\'s main differentiation argument against Chrome and Firefox (cf. Budget Analysis), and it is the axis most directly tied to the product promise of "running well on modest hardware" highlighted in the Action Plan and Context Audit.

Why this axis matters specifically for Aether: one of the three problems identified in the Action Plan (§1.1) is the excessive memory/CPU footprint of current browsers on modest machines. Leaving this axis untreated would mean not addressing the project\'s founding problem.

**1.2 Measurable indicators**

  ----------------------------------------------------------------------------------------------------------------------------------
  **Indicator**                 **Formula / definition**                                              **Measurement tool**
  ----------------------------- --------------------------------------------------------------------- ------------------------------
  RSS at startup                Resident memory when loading a typical page (e.g. Wikipedia)          /proc/meminfo, heaptrack

  RSS with 10 tabs open         Total resident memory, standard browsing scenario with 10 open tabs   heaptrack, valgrind (massif)

  Peak memory during browsing   Maximum value observed over a typical browsing session (10 pages)     heaptrack
  ----------------------------------------------------------------------------------------------------------------------------------

**1.3 Quantified target**

Target already set in the Action Plan (§3.3), reused here as the official target for Objective D: **memory footprint at least 30% lower than Firefox\'s**, on a standard browsing scenario with 5 open tabs.

**Part 2: Measurement protocol**

  -------------------------------------------------------------------------------------------------------------------------------------------------
  **Parameter**                       **Definition adopted**
  ----------------------------------- -------------------------------------------------------------------------------------------------------------
  Hardware / environment              To fix (exact machine model, OS, competing browser version), identical across every measurement in a series

  Page set                            10 representative pages (already referenced in the Action Plan), exact list to fix

  Scenario                            Sequential opening of 10 tabs from the page set, measurement after stabilization

  Repetitions                         To define (minimum 3 passes to tell a real gain from measurement noise)

  Measurement timing                  Cold (right after load) and warm (after 60s of idle)
  -------------------------------------------------------------------------------------------------------------------------------------------------

**Part 3: Baseline measurement**

An initial baseline has already been measured (cf. Budget Analysis / Risk Analysis):

  -----------------------------------------------------------------------
  **Indicator**           **Aether**      **Firefox**     **Chrome**
  ----------------------- --------------- --------------- ---------------
  Memory at startup       240--245 MiB    475--605 MiB    1.2--1.5 GiB

  CPU time at startup     0.90 s          3.27 s          1.15 s
  -----------------------------------------------------------------------

**Part 4: Diagnosis**

To carry out once the 5-tab baseline is confirmed (due end of February 2027): identify the bottleneck using tooling (memory profile, redundant allocations, potential leak) rather than intuition, state an explanatory hypothesis, and estimate the expected gain if the hypothesis is correct.

**Part 5: Optimization loops**

**5.1 Loop 1 (due end of March 2027)**

- One precise, isolated change (e.g. a lighter data structure, a revised cache, reduced allocations).

- Re-measurement under the exact conditions of the initial protocol.

- Observed gap (absolute value and percentage), conclusion on the hypothesis, accepted trade-off (readability, complexity, dev time).

- Non-regression check: existing tests still pass; other memory-axis indicators are not degraded.

**5.2 Loop 2 (due end of May 2027)**

- Same approach: one isolated change, re-measurement, gap, trade-off, non-regression.

**Part 6: Tracking over time**

History of measured values to maintain (simple table or chart), updated at every measurement, to tell a real gain from measurement noise between passes.

*Document Date: September 16, 2026*\
*Modify Date: October 19, 2026*
