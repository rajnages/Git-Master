#!/bin/bash

# Function to check if we're in a git repository
check_git_repo() {
    if ! git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
        echo "Error: Not a git repository"
        exit 1
    fi
}

# Function to add and commit changes
git_commit() {
    local commit_message="$1"
    if [ -z "$commit_message" ]; then
        commit_message="Update $(date +%Y-%m-%d)"
    fi

    git add .
    git commit -m "$commit_message"
}

# Function to push changes
git_push() {
    local branch="$1"
    if [ -z "$branch" ]; then
        branch="main"
    fi

    git push origin "$branch"
}

# Main script
check_git_repo

# Get commit message from argument or use default
commit_message="$1"
git_commit "$commit_message"
git_push "main"
git add .
git commit -m "First Commit"
git push origin main
