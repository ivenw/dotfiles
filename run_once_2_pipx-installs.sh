#!/bin/sh

# Poetry
pipx install poetry
mkdir $ZSH_CUSTOM/plugins/poetry
poetry completions zsh > $ZSH_CUSTOM/plugins/poetry/_poetry

pipx install pre-commit
pipx install python-lsp-server
