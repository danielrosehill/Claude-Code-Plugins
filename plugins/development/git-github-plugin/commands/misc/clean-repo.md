Clean up the repository.

To achieve this:

- Evaluate whether any files or folders are no longer needed / leftover code. If so, remove them.

- Evaluate whether any files/folders were one time / diagnostic scripts with no future utility. If so, remove them. 

- Evaluate whether the folder has a clear separation of concerns: parent folders for code and docs, for example; or within a project, separate parent folders for scripts and source code. If not, implement this by creating the missing folders and moving the files.

After doing this, you should evaluate whether the refactoring may have broken any paths used in the codebase. If so, remediate by updating the paths.

