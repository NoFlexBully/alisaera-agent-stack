# /sprint — Plan and execute a multi-role development sprint

## Trigger
User invokes `/sprint` followed by a feature/goal description.

## Steps

### Step 1: Decompose
SPRINT: [goal name]

[RESEARCHER] [task] — est. 1 prompt

[ARCHITECT] [task] — est. 1 prompt

[BUILDER] [task] — est. 2 prompts

[REVIEWER] [task] — est. 1 prompt

[OPS] [task] — est. 1 prompt

TOTAL ESTIMATED PROMPTS: N
PARALLEL OPPORTUNITIES: [list]

### Step 2: Identify Parallelism
GROUP A (parallel): Task 1 + Task 5
GROUP B (sequential after A): Task 2
GROUP C (sequential after B): Task 3
GROUP D (sequential after C): Task 4

### Step 3: Write task files to `.state/tasks/[role]-sprint-[n].md`

### Step 4: Respond (< 500 tokens)
[SPRINT PLANNED] — [N] tasks across [M] roles
Token estimate: ~[N] prompts at ~2000 tokens each = ~[total] tokens
