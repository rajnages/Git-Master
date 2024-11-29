# difference between git fetch and git pull
- git fetch origin main => downloads all new commits,branches,and files from the remote repository(origin) to your local repository
- git pull => combines git fetch _ git merge in one command
  downloads and automatically merges changes into your currect branch
# Thing of it this way:
Fetch = Download (safe)
Pull = Download + Merge (automatic)
Push = Upload (share your changes)