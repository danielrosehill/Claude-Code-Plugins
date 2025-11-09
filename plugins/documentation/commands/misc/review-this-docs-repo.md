This level of the filesystem, or repository, consists primarily of documentation - tech documentation, specifically.

I would like you to review the folder for the following:

1) Organisation: the repository should be well structured. This means that similar topics should be grouped in subfolders. 
2) Index: A basic index should be integrated into readme providing relative links to the subfolders to facilitate navigation.
3) Disclaimer: This repository should make clear that its purpose is primarily to outline an idea/model (as appropriate). Code samples may be provided but as supplementary resources.

Additionally:

- Separation of concerns: code and docs should always be separated at a folder level. Refactor to acheive this. 
- Many projects which present experiments will have a data folder and folders for scripts and graphics generated (like charts). These folders are "special cases" and can be maintained at root, given their significance. 
 
Additionally:

- Documentation should be reviewed for typos. Where found, they should be fixed.

Additionally:

- To enable the reproduction of this experiment (where applicable) the following should be provided, as foundational best practices: requirements.txt, .env.example. 

Additionally:

- You (CLAUDE) have a tendency to create files with UPPER_CASE titles. This is not desired. Use regular case: change ANALYSIS_GUIDE.md to analysis_guide.md, for example. 
- If this repository is being reviewed and is public you can infer that it is intended to be seen by the internet at large. Therefore, we don't need docs that are intended just for the user's own reference. If you can idetify docs that were created for that purpose, you may remove them. Exceptions to this rule: CLAUDE.md which needs to remain upper case, README.md which is upper-cased by convention (do not change these). 

Additionally:

- Finally, add links. In the header, add a shields.io badge to my docs index https://github.com/danielrosehill/My-Docs-Index. I also maintain a website with my docs here: https://docs.byexample.com. Link to both.

Before finishing the task:

Consider whether the repository is now a clear collection of knowledge, information, and/or docs that somebody vistiing this repository could quickly understand and find useful.