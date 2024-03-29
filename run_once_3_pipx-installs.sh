#!/bin/sh

# Poetry
pipx install poetry
mkdir ~/.oh-my-zsh/custom/plugins/poetry
poetry completions zsh > ~/.oh-my-zsh/custom/plugins/poetry/_poetry

# pre-commit
pipx install pre-commit

pipx install python-lsp-server

# databricks
pipx install databricks-cli
pipx install dbx
