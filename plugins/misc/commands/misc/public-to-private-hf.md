This repository contains a private Hugging Face space which I duplicated from a public space (it may have been one that I created/shared).

Please apply the following changes:

- Replace the BYOK mechanism with using API keys(s) as secrets which I will add to the Space config  

You can also remove the BYOK artifacts - specifically the box asking the user to provide their key 

I will provide the name of the secret, but generally it will be in this format:

- OPENAI_API_KEY
- GEMINI_API_KEY 

Etc