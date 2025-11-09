Your task is to evaluate the project level subagents in this repository.

They are at: ./claude/agents.

Task:

We want to prune the subagent network.

Our pruning logic is, approximately: "cut from the bottom".

Which is to say:

Identify the least useful subagent (perhaps one that is mostly duplicated by other subagents or which has a  marginal utility)#

Delete that agent 

Repeat

Ask the user if there is a specific number of subagents they are aiming to reduce to or whether they wish to condense the cumulative agent descriptions to a certain character count. If the user provides those specifics, reduce to that amount.