---
name: brainstorm
description: >-
  Finds out what the user wants and why before anything is built. Use when
  they brainstorm, explore an idea, design a feature, or start work whose
  purpose is still open, or when they run /brainstorm. A clear one-step
  change that already says exactly what to do does not need this skill.
---

# Brainstorm

You build what you believe they want. That belief is usually thinner than it feels. This skill finds out what they actually want, and why, before anything gets built.

People often have not finished working out what they want. Good questions help them think it through. Once you understand the why, you can make the decisions they never mention the way they would have made them.

Do not quote this skill. Use their words. One question per message, a single sentence, with no menu of example answers hanging off it. Ask them to describe the thing first. Offer a short menu only when they are stuck. When they say "just guess" or "what do you think?", propose something concrete and say it is your proposal.

## What you already know

Before you reply, ask yourself what you know about what they want and why.

- The request already contains everything that matters ("make the icon cornflower blue"). Do that small change and say what you did. This skill is finished.
- Something that would change the result is missing. Start the conversation. Do not implement yet.

## Before anything is built

Do these in order:

1. Look at the project and anything they pointed at.
2. Talk until you can say what they want, who it is for, and why.
3. In a message of its own, lay out the ways to build it and let them pick one.
4. Write the design doc, short or full.
5. Review it as a builder, then hand it over.
6. Wait until they approve that doc.
7. Follow `skills/make-plan/SKILL.md` and no other planning skill. Pass the approved doc. Do not reopen questions the doc already settled.

Two things are not "building": a spike they said yes to, and doing the task once they have opted out of the questions.

<HARD-GATE>
Nothing gets built until they approve the design doc: the short one for a small change, the full one for a project. Building includes product code, scaffolding, installing dependencies, creating a project, and starting implementation. Reading and exploring are fine. Writing the design doc is fine.

If they opt out of the questions, this skill is done and the gate goes with it. State any significant how-it-gets-made choice in one plain line, then do what they asked. A spike they approved may be built. Label it throwaway. Keeping what it produced is a new request and comes back through this gate.
</HARD-GATE>

## Look before you ask

In an existing project, or when they gave you a spec, a plan, files, or earlier conversation, read that material and the code it connects to before your first message. Keep reading until you can explain how the relevant parts work today and what a change would touch. Never ask what the project or their context already answers.

## First message

Move the work forward with one of these. That is the whole message.

**They already said what they want** (a spec, a plan, a detailed request). Aim for about 200 words. Echo the request in your own words: what they want, who it is for, and why, as far as they have said. Add what you found: how the relevant parts work today, and what the change would touch. If you found a constraint, a conflict, or a cheaper path that would change the ask, say so plainly. How to build it comes later. End with one line inviting corrections, then one question about what they want: the open point whose answer would most change what gets built.

**They have not.** Ask one open question, in their terms, about the biggest thing the request leaves unsettled. Say what the answer would change. For "a website for my bakery": "If it is mostly for people deciding whether to stop by, I would lead with hours and what is in the case today. Taking orders is a different site. What do you want someone to do when they land on it?"

How the message ends depends on whether they asked for this conversation.

- They asked for brainstorming, invoked this skill, or asked for a design discussion. End with your question.
- They did not. They may not want a conversation. After the question, add one light line, like "Or if you'd rather I just dive in, say so." If they take it, this skill is done.

## The conversation

Each later message ends with one question. Build it on their last answer or on something you found, so it surfaces a consequence they may have missed. When the reason is not already plain, say what the answer would change. A proposal they can correct, plus your reason, often beats a bare question.

Lead with what matters. When you report what you found, give the important findings and offer the rest.

Find out early which choices about medium, tools, and materials they want to make, which they are handing to you, and what they already have. In software that means platform, language, and libraries. When there is existing work, build on what it already uses. Any choice you make goes in the design as your call, never as something they agreed to. Say defaults out loud.

This is territory, not a script. Do not read these out as questions. Make every question specific to their project:

- what kind of thing this is, and what makes it special
- why now, and what success looks like to them
- goals, non-goals, and what would make this a failure even if it technically works
- what they have seen elsewhere, loved or hated
- what exists now, and what they have tried
- the details they care about

Once you have a little grounding and looking further would help, offer to go look: deeper in the project, their files, or the web. Say what you would look for. They decide whether you go.

## Lay out the approaches

Once you understand what they want, and before you write anything up, put the ways of building it in a message of its own. Drop weak options, including any that fight the reason they want it and any the existing work rules out. Present the two or three that remain. Ground each in what the project actually does, and say what it trades off. Recommend one and say why, then ask which way they want. When there is genuinely one sensible way, say so and explain why the others do not fit.

This message is about how it gets built. For what they want, get them describing first.

## Show, don't tell

Offer a visual when seeing would help more than reading: a screen, a page, a layout, a flow, options that would look different, or a structure that is easier to see than read. Requirements, scope, and tradeoffs stay in text. A question about a UI topic is not automatically a visual question.

The first time that moment comes up, and not before, send only this:

"This might be easier if I show you. Want me to open a simple mockup you can look at?"

If they decline, stay in text and do not offer again unless they raise it. If they accept, write one HTML file next to the design doc and tell them how to open it. Use it for mockups, side-by-side options, and throwaway prototypes. Do not start a server.

## Spike

A short throwaway build is sometimes the cheapest way to learn what they want or whether something works. Offer one when it would help. If they only want the spike, get out of the way. A spike gets no tests, or the smallest check that answers the question. It skips the design doc and the plan. Bring what it taught back into the conversation. Do not keep building on it unless they make a new request.

## Play it back

As soon as you understand one part well enough to describe it, say that part back in about 200 to 300 words, then ask about the next part. Playback and questions alternate. The last chunk covers whatever is left.

Only what they said goes in as theirs. Anything you filled in is your proposal, with your reason. End each chunk by asking what is wrong or missing.

If a chunk describes something they would look at, and they have not heard the mockup offer yet, send the offer alone and hold the chunk for the next message.

## Size the work

Once they have picked an approach, say how big the work is in plain words. They can override it.

- A small change gets a short design: what you already covered, a line or two on each point below.
- A project gets the full design.
- If it grows mid-task, stop, say so, and step up a size.
- If this is several independent projects, say so, agree on an order, and brainstorm them one at a time.

## The design doc

Write it so a talented builder in the domain could plan from it without coming back to them. Cover:

- intent and the why
- goals, non-goals, and what failure looks like even if it technically works
- constraints
- approaches: the two or three you considered, what each trades off, which they picked, and why
- the parts of the how they decided
- what is left to the builder, including calls you made and why

In a software repo, save it at `docs/bro-again/specs/YYYY-MM-DD-<topic>-design.md`. Otherwise, ask where it should go. Their preference wins. Commit only when they ask.

A short design for a small change goes straight to them. A full design gets a builder review first.

When you tell them you are writing it up, say you will read it once as the builder and may come back with a few questions. Do not hand it over until that read is done. Sort what a builder would still ask into three piles:

- Already answered by the conversation or the project. Put the answer in the doc.
- Minor: a sensible builder could settle it without changing what gets built. Settle it and mark it as your call.
- Theirs: only they can answer it, and the answer changes what gets built.

Bring the "theirs" pile in one message, most important first. Update the doc with their answers. Hand it over with a short list of the calls you made. That is the only round of questions from the review.

## After they approve

Follow `skills/make-plan/SKILL.md`. The approved design is the input. Do not start another design conversation.

## Red flags

- Offering a menu of what they might want. Ask them to describe it first.
- Filling in a default they never heard. Say it out loud.
- Writing the doc because they answered questions. Lay out the approaches first, in their own message.
- Explaining this process. Ask the question.
- Treating "sounds good" to an idea as approval of a doc you have not written.
- Keeping a spike because it works. Keeping it is a new request.
