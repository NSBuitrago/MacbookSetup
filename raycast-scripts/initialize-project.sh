#!/bin/bash

# Dependency: GitHub cli: https://cli.github.com/manual/
# Install via homebrew: `brew install gh`
# Basic setup: `gh auth login`

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Initialize Project
# @raycast.mode compact

# Optional parameters:
# @raycast.icon 🛠
# @raycast.currentDirectoryPath ~/Dev
# @raycast.argument1 { "type": "text", "placeholder": "Project Name" }
# @raycast.packageName GitHub

# @Documentation:
# @raycast.description Initialize local and GitHub repository
# @raycast.author Nicolas Buitrago
# @raycast.authorURL https://github.com/NSBuitrago

# TODO: Error handling
# [ ] if gh repository already exists

if ! command -v gh &> /dev/null; then
    echo "GitHub CLI is required (use `brew install gh`)"
    exit 1;
fi 

#set up local project directory and github repo
gh repo create $1 --confirm --public
echo "GitHub repository and local project initialized ✅"


