---
name: create-command
description: Drafts a slash command from a repeated request or an explicit ask, then saves it in the current project after approval. Use when the user agrees to turn a pattern into a command, asks to create a command, or runs /create-command.
---

# Create a command

1. Read `.cursor/bro-again/request-patterns.md` when it exists. Prefer the pattern the user just agreed to.
2. Propose a kebab-case name. Show this draft in chat and wait for approval:

```markdown
---
name: command-name
description: What the command does
---

# Command name

Steps for the repeated task.
```

3. After approval, write `.cursor/commands/<name>.md` in the current project. Leave the Bro Again?! plugin unchanged. The command is for this project only.
4. In the project pattern log, set that pattern's `command` field to the new name. Create the log entry if the user asked for a command that was not tracked yet.
