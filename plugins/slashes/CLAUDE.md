The objetive of this repository is to consolidate a number of claude slash command groups and workspaces I've set up over the past month or so and identify which can be grouped into Claude Code plugins - which provide a more holistic way to group together large groups of slash commands and agents. 

The workflow is like this:

- I have gathered into temp-clones all the aforementioned repos
- docs provides Anthropic's docs as to how plugins should be created as repos. Pay attention to the requirement for the JSON file at the base.

I have decided upon an intiial group of plugins in /plugins and we are in the process of moving individual slash commands into each plugin.

THe most plentiful source of slashes will be general-slahes but there may be ones from others. 

After we have gathered the slashes into logical groups we can create the plugins.

This should be a batch operation. We can use gh to create a public repo for each plugin. And for standardistaion I think we should follow a repo naming pattern like

CC-Plugin-{X}

But that's the last step. The commands need to be consolidated first. 