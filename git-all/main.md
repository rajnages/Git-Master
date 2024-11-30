# What is Git
Git is a popular version control system(more specifically we can say that it is a distributed version control system). It was developed by Linux Torvalds(ya the same guy who made Linux).

# What is GItHub
GitHub is a developer platform that allows developers to create, store, manage and share their code. It uses Git software, which provides distributed version control of access control, bug tracking, software feature requests, task management, continuous integration, and wikis for every project

# Types version control systems

# Git repository structure:
1.working directory
2.staging area(index)
3.local repository
4.remote repository

# Basic commands


# difference between git fetch and git pull
- git fetch origin main:
  downloads all new commits,branches,and files from the remote repository(origin) to your local repository

- git pull:
  1.combines git fetch _ git merge in one command downloads and automatically merges changes into your currect branch

# Thing of it this way:
Fetch = Download (safe)
Pull = Download + Merge (automatic)
Push = Upload (share your changes)

# Git Merge and Git rebase

- git merge:
  1.Creates a new commit that combines changes from both branches
  2.Preserves complete history
  3.Creates a branch structure that looks like a diamond

- git rebase:
  1.Moves entire feature branch to begin on tip of main
  2.Creates linear history
  3.Rewrites commit history

# Git Tag and Git Branch
- branch is like a movable pointer that follows new commits
- tag is like a sticky note attached to a specific commit

# Git stash
- git stash is temporary drawer to save your uncommited changes when you need to switch tasks

#
