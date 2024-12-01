# You can view all settings by this command
git config --list --show-origin
git config --global user.name "John Doe"
git config --global user.email johndoe@example.com
git config --global core.editor "code --wait"  # Set VS Code as default Git editor with --wait flag to block terminal until file is closed
git config --list # check the settings again

###########################################################################################################

# using initialization using this command
git init # create a new Git repository in the current directory(.git)
# some commands like using after git init
# add some files to the staging area
git add file1.txt file2.txt
git add  -i => this will give interactive terminal
git commit -m "Initial commit"
# you can use git clone by remote repository by github
git clone git_repo
git status
#This is showing three important steps
1. Changes not staged for commit: Modified files not yet added to the staging area.
2. Untracked files: New files not yet tracked by Git.
3. Changes to be committed: Changes already in the staging area.
Working Directory  →  Staging Area  →  Repository (Committed)
  (Modify files)         (git add)         (git commit)

.gitignore # file tells Git which files/directories to ignore and not track

git diff # show the differences between the working directory and the staging area
#This happens and showing only staging area
git diff --staged # show the differences between the staging area and the repository
git diff --cached # same as --staged
git rev-parse --show-toplevel # show the root directory of the current Git repository

git rm file => # The git rm file command is used to remove a file from both the working directory and the staging area in Git.

git log --oneline --graph --decorate --all # show the commit history
git log --pretty=oneline # show the commit history in a more readable format
git log --pretty=format:"%h - %an, %ar : %s" # show the commit history in a more readable format
# options
Option	Description
--oneline	One commit per line with abbreviated hash and message.
--graph	Graphical representation of the branch structure.
--decorate	Adds branch and tag information.
--since / --until	Filter commits by date range.
--author	Filter commits by author.
--grep	Filter commits by message content.
--stat	Show added/deleted line counts for each commit.
--patch / -p	Show detailed diffs for each commit.

git commit -amend # modify the last commit message

###########################################################################################################

git remote add origin XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX # add a remote repository
git remote -v # show the remote repositories
git remote show origin # show the details of a remote repository

#########################################################################################################

git tag -l # list all tags
git tag -a v1.4 -m "my version 1.4" # create a new tag
git show v1.4 # show the details of a tag
git tag -a v1.2 9fceb02 # create a tag from a specific commit
git push origin --tags # push the tags to the remote repository

#######################################################################################################
# Checking out tags
git checkout -b version2 v2.0.0 # create a new branch and switch to it
git checkout v2.0.0 # switch to an existing branch

#######################################################################################################

# Git Branching
git branch testing # create a new branch
git checkout testing # switch to a branch
git branch -d testing # delete a branch
git branch --merged # show the merged branches
git branch -vv # show the details of a branch
git branch --no-merged # show the unmerged branches
git push --set-upstream origin corrected-branch-name # set the upstream branch for a new branch
git checkout -b serverfix origin/serverfix  # create a new branch and switch to it
#####################################################################################################

# git merging
git merge iss53 # merge a branch into the current branch
git fetch origin main # fetch the latest changes from the remote repository
git pull # pull the latest changes from the remote repository

### difference between git fetch and git pull
git fetch => # Downloads new changes from the remote repository (e.g., new branches or updates), but does not merge them into your local branch.
git pull => # Does the same as git fetch (downloads changes) but also automatically merges those changes into your local branch.

### difference between git rebase and git merge
git rebase => # Re-applies your local commits on top of another branch, creating a linear history.
git merge => # Combines two branches into one, preserving the history of both branches, resulting in a merge commit.


## difference between git log and git reflog
git log => # Shows the commit history of the current branch.
git reflog => # Shows the history of all actions (commits, checkouts, rebases) in your repository, even those that are not in the current branch history.

###############################################################################################################

# Git Stashing => Purpose: Temporarily saves changes that are not ready to be committed
git stash # stash the current changes
git stash list # list the stashed changes
git stash apply # apply the last stashed changes

############################################################################################################

# git grep
git grep => # helps you search for text or patterns in your Git repository, making it easier to find specific code or comments across all tracked files.

# git filter-branch
git filter-branch # is a powerful but older command used to rewrite Git history. It allows you to modify or remove commits in your repository's history
git filter-branch [options] <filter> <commit-range>

Tree    Role
HEAD    Last commit snapshot, next parent
Index   Proposed next commit snapshot
Working Directory Sandbox

#########################################################################################################

git ls-files -a => # list all files in the Git repository, including untracked files and ignored files.
git ls-tree -r HEAD => # list all files in the current branch, including untracked files and ignored files.

git reset is for undoing changes and moving the HEAD pointer.
Modes determine how much is undone:
Soft: Undo commits but keep changes staged.
Mixed: Undo commits and unstage changes but keep them in the working directory.
Hard: Completely discard changes and undo commits.
git reset --soft HEAD~1 => # undo the last commit but keep changes staged
git reset --mixed HEAD~1 => # undo the last commit and unstage changes but keep them in the working directory
git reset --hard HEAD~1 => # completely discard changes and undo the last commit

# git blame
git blame => # shows who wrote each line of code and when
git blame -L 5,10 example.txt # show the blame information for lines 5 to 10 of example.txt
git blame --since="2 weeks ago" example.txt # show the blame information for changes made in the last 2 weeks
git blame --show-email example.txt # show the email addresses of the authors
