# Remove sensitive password file from history
git filter-branch --force --index-filter \
    'git rm --cached --ignore-unmatch config/database.yml' \
    --prune-empty --tag-name-filter cat -- --all

# After removing sensitive data
git push origin --force --all  # Force push all branches
git push origin --force --tags # Force push all tags

# Clean up
git for-each-ref --format='delete %(refname)' refs/original | git update-ref --stdin
git reflog expire --expire=now --all
git gc --prune=now

# You were working on a feature and made several changes but haven't committed them.
# Suddenly, you accidentally ran 'git checkout main'. Your changes are now gone. How can you recover them?

git stash list
git stash apply
git stash pop

git reflog
git checkout HEAD@{1}

git fsck --lost-found
git show

# best practises
git stash save "my changes"
git checkout main
git config --global checkout.checkForChanges true
