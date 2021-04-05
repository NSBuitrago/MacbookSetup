#!/bin/bash

# Dependency
# GitHub CLI (gh)
# Install via homebrew
# i.e. `brew install gh`
# Basic setup: `gh auth login`

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Initialize Project
# @raycast.mode compact

# Optional parameters:
# @raycast.icon 🤖
# @raycast.currentDirectoryPath ~/Dev
# @raycast.argument1 { "type": "text", "placeholder": "Project Name" }
# @raycast.argument2 { "type": "text", "placeholder": "Project Directory", "optional": true }
# @raycast.packageName GitHub

# @Documentation:
# @raycast.description Create local and GitHub project repository
# @raycast.author Nicolas Buitrago
# @raycast.authorURL https://github.com/NSBuitrago

# TODO: Error handling
# [x] if directory is not a directory
# [ ] if gh repository already exists

if [ ! -z "$2" ]; then
    projectDir=$2
    if [ -d "$2" ]; then
        cd $2
    else
        echo "$2 is not a valid directory"
        exit 1
    fi
fi

# set up local project directory and GitHub repository
mkdir $1
cd $1
git init
gh repo create $1 --confirm --public


