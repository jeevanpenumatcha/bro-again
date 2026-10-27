---
name: make-plan
description: >-
  Writes a task-by-task implementation plan from an approved design or a
  clear request, with exact files, checks, and no placeholders. Use when
  the user wants a plan, an implementation approach, or runs /make-plan,
  and after they approve a design from the brainstorm skill. Do not use
  it to discover what they want.
---

# Make a plan

The plan is the deliverable. Write it so a skilled developer who has not seen this conversation can build the thing without guessing. They know how to program. They know almost nothing about this codebase or this problem.

Do not quote this skill. Do not start building while you write the plan.

<HARD-GATE>
Do not write product code, scaffold a project, install dependencies, or run the implementation until they approve the plan. Saving the plan file is allowed. Reading the project is allowed.

If they only wanted the document, stop after it is saved. If they approve it and ask you to build, do the tasks in order in this session. After each task, say what changed and how you checked it, then continue unless they stop you. Do not push. Commit only when a task says to commit and they have asked you to implement the plan.
</HARD-GATE>

## Read first

Read, in this order, and do not ask what they already answer:

1. The approved design, usually `docs/bro-again/specs/YYYY-MM-DD-<topic>-design.md`. If they just approved one, that doc is the spec. Use the approach they picked. Do not re-ask settled questions.
2. The open project: the files the design names, plus the surrounding code those files call. Follow patterns already in the repo.
3. How this project is tested and run. Use that. Do not introduce a new test framework.

No design doc, and the purpose or what done looks like is missing: ask one question and wait. No design doc, and they have not picked an approach: show two or three, recommend one, and wait. If the work is still a fuzzy idea, say so and point them at `/brainstorm`. Do not invent a design inside the plan.

## Scope

If the spec is several independent pieces, say so. Each piece gets its own plan and should be testable on its own. Agree on an order. Write the first plan only.

## File map

Before tasks, list every file to create or modify and the one job each file has. Lock the decomposition here.

- One responsibility per file. Prefer a focused file over one that does several jobs.
- Files that change together live together. Split by responsibility, not by technical layer.
- In an existing codebase, follow its patterns. Do not restructure a large file unless the design asks for that. If a file you must touch has grown unwieldy, a split can be its own task.
- Each task should leave the project in a state a reviewer could accept or reject on its own.

## How big a task is

A task is the smallest unit with its own check, worth a reviewer accepting or rejecting on its own. Fold setup, config, and docs into the task whose result needs them. Split only where one task could fail while its neighbor is fine.

Inside a task, each step is one action:

- Write the failing check
- Run it and see it fail
- Write the smallest code that makes it pass
- Run it and see it pass
- Commit, only as a step in the plan, not something you do while writing the plan

If the project has no tests, the check is the exact command or observation that proves the task. Say that. Do not add a test runner for the plan's sake.

## Where the plan goes

Save it at `docs/bro-again/plans/YYYY-MM-DD-<feature>.md`. Their preference for the path wins. Commit the plan only when they ask.

## Plan shape

```markdown
# [Feature] implementation plan

**Goal:** One sentence.

**Architecture:** Two or three sentences on the chosen approach.

**Tech stack:** Libraries and tools this plan actually uses.

**Design:** Path to the approved design, or "none".

## Constraints

[Project-wide rules from the design: versions, naming, platforms, things that must not change. One line each. Copy exact values. Every task includes this section.]

## File map

- Create: `exact/path` — one job
- Modify: `exact/path` — one job

## Tasks

### Task 1: [Name]

**Files:**
- Create: `exact/path`
- Modify: `exact/path` (the lines this task touches, when you know them)
- Check: `exact/test/path` or the command that proves it

**Interfaces:**
- Consumes: what earlier tasks provide, with exact names and types
- Produces: what later tasks rely on, with exact names, parameters, and return types

- [ ] **Step 1: Write the failing check**

[The actual test or the actual command. Not a description of a test.]

- [ ] **Step 2: Run it and see it fail**

Run: `exact command`
Expected: the failure you expect before the code exists

- [ ] **Step 3: Write the smallest implementation**

[The actual code this step adds or changes.]

- [ ] **Step 4: Run it and see it pass**

Run: `exact command`
Expected: pass, and what you should see

- [ ] **Step 5: Commit**

Commit only while implementing an approved plan, and only the files this task touched.
Message: `feat: what this task adds`
```

A task's implementer may see only that task. The Interfaces block is how they learn the names neighboring tasks use. Repeat code that another task also needs. Do not write "same as Task N".

## No placeholders

These are plan failures. Fix them before you show the plan:

- "TBD", "TODO", "implement later", "fill in details"
- "Add appropriate error handling", "add validation", "handle edge cases"
- "Write tests for the above" with no actual check
- "Similar to Task N"
- A step that says what to do and does not show the code, the command, or the expected result
- A type, function, or method used in a later task and defined in none

Every code step shows the code for this project. Every command is the command this repo actually runs, with the output you expect.

## Review the plan before you hand it over

Read the design again and check the plan yourself.

1. **Coverage.** For each requirement in the design, point at the task that does it. Add a task for any gap.
2. **Placeholders.** Search for the failures above. Replace them.
3. **Names.** Signatures and property names in later tasks match what earlier tasks defined. `clearLayers` in one task and `clearFullLayers` in another is a bug. Fix it inline.

Then hand over the plan. Say the path. Wait for approval. Do not offer a second planning process.
