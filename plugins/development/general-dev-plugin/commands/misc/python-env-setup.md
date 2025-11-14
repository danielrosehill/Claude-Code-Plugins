Set up and manage Python virtual environments.

Your task:
1. Determine best approach for the project:
   - **venv** (built-in, lightweight)
   - **virtualenv** (more features)
   - **conda** (data science, complex dependencies)
   - **poetry** (modern dependency management)
   - **pipenv** (Pipfile-based)

2. Create virtual environment:
   ```bash
   # Using venv
   python3 -m venv venv
   source venv/bin/activate  # Linux/Mac
   venv\Scripts\activate     # Windows

   # Using conda
   conda create -n myenv python=3.11
   conda activate myenv
   ```

3. Manage dependencies:
   ```bash
   # Install packages
   pip install -r requirements.txt

   # Generate requirements
   pip freeze > requirements.txt

   # For conda
   conda env export > environment.yml
   ```

4. Best practices:
   - Never install packages globally
   - Use requirements.txt or environment.yml
   - Pin versions for reproducibility
   - Separate dev and production dependencies
   - Add venv/ to .gitignore

5. Project setup guidance:
   - Create virtual environment
   - Install dependencies
   - Configure IDE to use environment
   - Document setup process in README

Help users establish proper Python environment isolation and dependency management.
