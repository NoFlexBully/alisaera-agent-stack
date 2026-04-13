# /recover — Resume after Agent Exhausted or session loss

## Trigger: `/recover`

1. Read `.state/checkpoint.json` FIRST (< 50 tokens)
2. Read only your role's handoff file (< 200 tokens)
3. Resume work — NO workspace re-scan
4. Output (< 150 tokens):
[RECOVERED]
Role: [role]
Last task: [summary]
Next action: [what to do]

NEVER: `find . -type f`, `ls -R`, or "what were we working on?"