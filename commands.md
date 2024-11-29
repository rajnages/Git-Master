# initial setup
git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"
git init                    # Initialize a new repository
git clone <repository-url>  # Clone existing repository

# Basic operations
git status                  # Check repository status
git add <file>             # Stage specific file
git add .                  # Stage all changes
git commit -m "message"    # Commit with message
git push origin <branch>   # Push to remote
git pull origin <branch>   # Pull from remote

# Branch Management
git branch                  # List branches
git branch <branch-name>   # Create new branch
git checkout <branch-name> # Switch to branch
git checkout -b <branch-name> # Create and switch to new branch
git merge <branch-name>    # Merge branch into current branch
git branch -d <branch-name> # Delete branch

# History and Difference
git log                    # View commit history
git log --oneline         # Compact history view
git diff                  # Show unstaged changes
git diff --staged         # Show staged changes
git blame <file>          # Show who changed what and when

# Stashing
git stash                  # Temporarily store changes
git stash list            # List stashed changes
git stash pop             # Apply and remove stash
git stash apply           # Apply but keep stash
git stash drop            # Remove stash

# ReWriting History
git commit --amend        # Modify last commit
git rebase -i HEAD~n      # Interactive rebase for last n commits
git reset --soft HEAD~1   # Undo last commit, keep changes staged
git reset --hard HEAD~1   # Undo last commit and discard changes

# Remote Operations
git remote -v             # List remote repositories
git remote add <name> <url> # Add remote repository
git fetch <remote>        # Download from remote
git push -u origin <branch> # Set upstream branch
git remote prune origin   # Remove deleted remote branches

# Tags
git tag                   # List tags
git tag -a v1.0 -m "Version 1.0" # Create annotated tag
git push origin --tags    # Push all tags
git tag -d <tag-name>     # Delete local tag

# Advanced Troubleshooting
git reflog                # View reference logs
git fsck                  # Check repository integrity
git gc                    # Clean and optimize repository
git cherry-pick <commit>  # Apply specific commit to current branch

# Submodules
git submodule add <url>   # Add submodule
git submodule update --init # Initialize submodules
git submodule update --recursive # Update submodules recursively
