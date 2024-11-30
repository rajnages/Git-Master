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