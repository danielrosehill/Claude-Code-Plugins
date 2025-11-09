Please work through this task:

Your objective is to assemble a multi-agent crew to work in this repository.

You (Claude) understand that this multiagent crew will use Claude Claude.

## Folders

In this repository you will find ./agent-farm

This folder contains subagent configurations. Each markdown file is a subagent.

As you know, project level subagents are stored at ./claude/agents

## Crew Assembly Workflow

As you know, assembling subagent networks requires some careful thinking: if we unselectively use too many (too niche) subagents, we risk degrading inference because the cumulative context will impair your ability to run inference and orchestrate the network.

Your selection logic is as follows: 

1: Review the agent farm 
2: Review your context for what the purpose of this repository is (ie, what the user is trying to achieve) 

Once you have finished with these tasks:

1: Copy a *selection* of agents into the Claude Commands agents folder. You optimise your selection for: synergy (subagents that will work well together in the orchestration model); context load (the collective crew does not pose undue contextl limits); task appropriateness. 

2: You may wish to edit some of the configurations in order to tailor them to the task context. Remember: if you do this, you update the agents in ./claude/agents. The agent farm (/agent-farm) is purely for the user to use as a staging area for writing subagent configurations.