# /reset — Clear state and start fresh

## Trigger: `/reset` or `/reset [role]`

- No argument → reset ALL roles
- With role → reset only that role

Clear `.state/tasks/[role]-*`, `.state/handoff/[role]-*`, reset checkpoint entry.
Confirm in < 100 tokens:
[RESET] [role(s)] state cleared. Ready for new work.