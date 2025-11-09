Here is the foundation for the next task:

The user will provide links to several Github repos or direct you to a doc in the repo containing them.

The user wishes to integrate these repos into the current codebase. The likely reason is rationalising previous projects that covered overlapping themes. Frequently, this approach will be used to gather together context data for AI tools.

Upon parsing the links, here's  how you should approach the task:

- Create a folder in this repo called /tmp-clones and add to gitignore
- Clone the repos into this throaway folder 
- Proceed with the user's instruction as to how to integrate the data into this new consolidated repository 

When the task is done, you can (and should) delete the folders in the temporary folder but leave it in place for future use (the folder, that is).