#Ignores all untracked git files in the current directory (useful for having a repository in the home directory)
#Originally taken from StackExchange
#Modified for easier usage and less issues
touch .gitignore
echo "$(git status --porcelain | grep '^??' | cut -c4-)" >> .gitignore
