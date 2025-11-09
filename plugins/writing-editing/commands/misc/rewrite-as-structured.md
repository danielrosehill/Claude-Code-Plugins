Your task is to take this system prompt and rewrite it for implementation in a structured AI system. 

In order to do so, adhere to the following instructions:

- Create a folder called prompt at the level of the filesystem where the system prompt currently exists. 
- Move the prompt into it as prompt.md (or systemprompt.md or whatever the prompt file was originally named)

Next:

- Edit the prompt text to incorporate the JSON output definition that the AI should be constrained to giving. Add an instruction that the AI tool that it is working in a structured workflow and must only return valid JSON. 
- Create, in the prompt folder, schema.json. This file should contain only the OpenAPI compliant JSON object schema which the prompt requires 
- Create, in the prompt folder, example.json. This file should contain only a JSON example showing a correct output for the AI to emulate when outputting in accordance with the defined JSON schema