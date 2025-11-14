Please review this repository and reformat it to add a folder structure that the user likes

Add the base of the repo, create these two folders:

/for-ai
/-from-ai

Within /for-ai create

/context
/tasks
/logs

Within /from-ai create
/progress-logs
/docs-for-user

You have some creative leeway; if upon examining the codebase, you can infer that some additional folders would be useful in facilitating an organised human to AI information exchange process, add them.

After creating the basic skeleton, see if there are any existing folders that you may wish to integrate. For example, if there is already a /context folder, move it within the newly created folder under /for-ai

Then:

Add a short about.md to the base of for-ai and from-ai instructing an AI agent with the purpose of those folders. The fist folder is a nested hierarchy for the user to provide instructions to AI (including reference notes, docs, etc). The latter fulfills the reverse purpose and provides a space for the AI agent to write docs and other materials for the user.

After creating these folders and the base markdown documents, update CLAUDE.md, if it exists, with this context information. For example: "please use the from-ai folder to create documentation for the user." If CLAUDE.md does not yet exist, however, do not create it solely for the purpose of noting this information.

