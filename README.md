# Bro Again?!

A Cursor plugin for brainstorming, writing a plan, and turning a request you keep making in one project into a slash command.

Install it once. It then works in any project.

## Assets

- `/brainstorm` — finds out what they want and why, compares ways to build it, and writes a design they approve before anything is built. Then it hands off to `/make-plan`. Skill: `skills/brainstorm/SKILL.md`
- `/make-plan` — a task-by-task implementation plan from an approved design, with exact files, checks, and no placeholders. Waits for approval before any build. Skill: `skills/make-plan/SKILL.md`
- `/create-command` — drafts a slash command from a repeated request and, after you approve, saves it in that project at `.cursor/commands/`. It is not added to this plugin and does not need to be installed by anyone else. Skill: `skills/create-command/SKILL.md`
- Request patterns — an always-on rule in `rules/request-patterns.mdc`

You can also describe the job in chat. The skill descriptions tell the agent when to use each workflow.

## Pattern log

Each project has its own log:

`.cursor/bro-again/request-patterns.md`

The rule creates that file on the first repeatable request. It stores a one-line summary and a count. It does not store the prompt text. A similar request in the same project increases the count. The same request in another repo starts a new log.

After the same intent is used 3 times, the reply offers `/create-command` once.

The first time the log is created, `.cursor/bro-again/` is added to the project's `.gitignore` so the counts are not committed.

## Install on Windows

1. Clone this repo.
2. Link or copy it to `%USERPROFILE%\.cursor\plugins\local\bro-again`.
3. Reload Cursor.
4. In any other project, confirm `/brainstorm`, `/make-plan`, and `/create-command` appear.
5. Send a repeatable request and confirm `.cursor/bro-again/request-patterns.md` in that project gains a summary, not the raw prompt.

The plugin id is `bro-again`. The display name is Bro Again?!.
