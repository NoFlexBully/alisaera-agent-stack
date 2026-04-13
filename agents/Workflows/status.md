# /status — View current state of all agent partitions

## Trigger: `/status`

Read `.state/checkpoint.json`, scan `.state/tasks/` and `.state/handoff/`.
Output (< 200 tokens):
ALISAERA AGENT STATUS
=====================
ARCHITECT:  [idle|working|done|blocked] — last: [task]
BUILDER:    [idle|working|done|blocked] — last: [task]
REVIEWER:   [idle|working|done|blocked] — last: [task]
RESEARCHER: [idle|working|done|blocked] — last: [task]
OPS:        [idle|working|done|blocked] — last: [task]

QUEUED TASKS: [count]
PENDING HANDOFFS: [count]
BLOCKERS: [list or "none"]
