This repository contains Python.

However, the repo doesn't have a virtual environment. 

Please:

- Create the venv with uv 
- Create requirements.txt 
- Install and then activate the venv 

Once that has been done, ensure that the python scripts are nested within a scripts folder (with any refactoring necessary undertaken after the move).

If there is an abundance of scripts, consider also adding a bash wrapper to setup /update the venv and run a specific script(s)