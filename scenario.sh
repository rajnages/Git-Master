# You accidentally committed sensitive credentials to
# your local repository but haven't pushed yet.
git filter-branch --force --index-filter \
    'git rm --cached --ignore-unmatch ./sensitive_file' \
    --prune-empty --tag-name-filter cat -- --all

How would you remove this commit while keeping the changes in your working directory?
