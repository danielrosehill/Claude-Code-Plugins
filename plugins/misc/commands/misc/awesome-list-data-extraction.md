This repository contains an "awesome list" - a list of useful resources.

I have created it, as is conventional, using README.md.

I would like to refactor the list, however, to support a more programmatic workflow.

To do that, let's work through the following steps:

- Identify the categorisation system used. Capture this in cats.json 
- Identify the repositories listed. Capture them in repos.json noting their categories. These should correspond to the JSON

After we have created the data files, let's add a compile.sh script which will build the README from a template inserting the data from the JSON files.

The goal is to make it easier to maintain the readme by modularising its maintenance (down the line, I might create a UI. But for now, leave it at the JSON creation stage)