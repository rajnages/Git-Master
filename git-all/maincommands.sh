# You can view all settings by this command
git config --list --show-origin
git config --global user.name "John Doe"
git config --global user.email johndoe@example.com
git config --global core.editor "code --wait"  # Set VS Code as default Git editor with --wait flag to block terminal until file is closed
git config --list # check the settings again

# using initialization using this command
git init # create a new Git repository in the current directory(.git)
# some commands like using after git init
# add some files to the staging area
git add file1.txt file2.txt
git commit -m "Initial commit"
# you can use git clone by remote repository by github
git clone git_repo
git status
.gitignore # file tells Git which files/directories to ignore and not track
