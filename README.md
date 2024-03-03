# Python Base Project
A base Python project setup through poetry with pytest script and pre-commit hooks.

### VSCode Extensions:
- **Required:**
    - Python
    - Python Indent
- **Recommended:**
    - Black Formatter
    - Error Lens
    - Indent Rainbow
    - IntelliCode
    - Markdown Preview

### Getting Started With An Existing Poetry Project
- **Rename Project:**
    - This step isn't crucial but if you want to change the name of `python_base_project` then as well as renaming the folder, make sure to give the same name to line 2 of `pyproject.toml`.
    - If the names differ in the two places then the install command will give an error, should still work, but if you want to avoid the error then match up the names.
- **Install Dependencies:**
    - `cd` into the top level of the project.
    - Run `poetry install` - This will create a .venv and poetry.lock file.
- **Running:** `poetry shell` - Opens a shell using the created .venv which allows everything in the project to be run.
- **Project Info:** `poetry env info`


### Dependencies
- `python` - 3.12
- `requests` - 2.31.0

### Dev Dependencies
- `pytest` - 8.0.2 - For running tests.
- `black` - 24.2.0 - For .py file formatting.
    - Set `--line-length xx` in vscode black extension settings to change default line length setting.
- `flake8` - 7.0.0 - For .py file linting.
- `isort` - 5.13.2 - For sorting import order consistently.
- `pre-commit` - 3.6.2 - For managing multi-langauge pre-commit hooks.

### Custom Test Runner Script
- Runs `pytest` to run all detectable test files.
- Checks outcome of pytest
- Clears up created cache folders.

### Pre-Commit Hooks
Custom hooks setup in `.pre-commit-config.yaml`.

**Do Once:** Upon running `poetry install` inside a `poetry shell`, you'll need to setup pre-commit. To do this, run `poetry install`.

Rejects a commit if any of the following fail:
- **Downloaded Pre-Commit Hooks:**
    - `merge-conflicts`
    - `trailing-whitespace`
    - `end-of-file-fixer`
    - `check-yaml`
    - `check-json`
    - `pretty-format-json --autofix`
    - `mixed-line-ending`
- **Custom Hooks**
    - `isort` - Re-orders imports
    - `flake8` - Checks linting for .py files (need to manually fix)
    - `black` - Formats .py files correctly (will need to re-add-commit if changes are made)
    - `run tests` - Runs the custom test script that cleans up resulting cache files and asses pass/fail.

### Poetry How To Setup
- **cd Into Directory:**
    - Add Poetry To A Project: `poetry init`
    - Create New Poetry Project: `poetry new <project name>`
- **Add New Dependencies:**
    - Requires poetry shell to be running.
    - Main Dependencies: `poetry add <package name>`
    - Dev Dependencies: `poetry add --dev <package name>`
- **Remove Dependencies:**
    - `poetry remove <package name>`
