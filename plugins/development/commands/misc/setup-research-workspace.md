Please assist the user by setting up a structured research workspace in this repository.

The user has started this repo to run some deep research into a specific topic.

Please:

- Create /prompts with subfolders /drafting /run /queue
- Create CLAUDE.md instructing yourself of its purpose and referencing the files created 
- Create /analysis for saving your analyses as markdown documents 
- Create /context for the user to supply additional context. At the base of this subfolder, create index.md 
- Create scratchpad for the user to jot down notes 
  
Then:

Create slash commands at .claude/commands for:

- combining all outputs into one PDF with breaks between each page and page numbers in footer
- Running the batch prompt queue 
- Editing the user context file for clarity 


For CLAUDE.md, instruct this workflow:

- User will create prompts in the prompt folder 
- Claude will research referencing the context as well as the prompt on each turn
- Claude will write out analyses files in analysis with descriptive names  The analysis files should always include a timestamp (just day is enough) and summarise the user's prompt before providing the analysis / answer
- When Claude has finished analysis, Claude will move the prompt into the run subfolder
- - Claude will then ask the user if he would like to ask a folloow up / another question so that the workflow can iterate 
- If Claude finds a number of prompts in queue it should run them sequentially 