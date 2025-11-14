Please add a build script to this repository.

The build script should be optimised to work on Ubuntu Linux, which is the target OS for this application.

In the first instance: the build script should generate a debian package (.deb). 

If this can be reliably generated from the codebase, then do *not* write the build script to create any other packages (such as App Image).

However, if there are issues compiling to debian, then consider and use these other options instead. 

Create, as well, an update script. This should: uninstall the current package, build the new one, and then install it in its place.