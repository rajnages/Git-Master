#!/bin/bash

# This script automates git operations for adding, committing and pushing changes
# It first checks if the current directory is a git repository

# Test cases:
# 1. Test in non-git directory:
#    cd /tmp && ./script.sh "test commit"
#    Expected: Should show "Error: Not a git repository" and exit
#
# 2. Test with no commit message:
#    ./script.sh
#    Expected: Should use default commit message with current date
#
# 3. Test with custom commit message:
#    ./script.sh "my custom commit message"
#    Expected: Should use provided commit message
#
# 4. Test error handling:
#    chmod -x script.sh
#    ./script.sh
#    Expected: Should fail with permission denied
#
# Run tests with:
# mkdir test-repo && cd test-repo
# git init
# touch testfile
# ../script.sh "test commit"

# Function to check if we're in a git repository
# Uses git rev-parse to verify we're in a git working tree
# Exits with error if not in a git repo
check_git_repo() {
    if ! git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
        echo "Error: Not a git repository"
        exit 1
    fi
}

# Function to add and commit changes
# Takes an optional commit message as parameter
# If no message provided, uses default with current date
# Stages all changes with git add .
# Creates commit with provided/default message
git_commit() {
    local commit_message="$1"
    # This line checks if the commit_message variable is empty (zero length)
    # -z is a test operator that returns true if the string length is zero
    if [ -z "$commit_message" ]; then
        commit_message="Update $(date +%Y-%m-%d)"
    fi

    git add .
    git commit -m "$commit_message"
}

# Function to push changes to remote
# Takes optional branch name parameter
# Defaults to 'main' branch if none provided
# Pushes to origin remote
git_push() {
    local branch="$1"
    if [ -z "$branch" ]; then
        branch="main"
    fi

    git push origin "$branch"
}

# Main script execution starts here
check_git_repo

# Get commit message from first script argument
# Call git_commit with message
commit_message="$1"
git_commit "$commit_message"
git_push "main"

# Note: These lines appear redundant as they repeat operations already done above
git add .
git commit -m "First Commit"
git push origin main
