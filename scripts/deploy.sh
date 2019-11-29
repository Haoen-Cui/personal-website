#!/bin/sh

# If a command fails then the deploy stops
set -e

# Create git submodule
printf "\033[0;32mCloning haoen-cui.github.io...\033[0m\n"
git submodule add --force -b master https://github.com/Haoen-Cui/haoen-cui.github.io.git public

# Build the project: if using a theme, replace with `hugo -t <YOURTHEME>`
printf "\033[0;32mBuilding hugo site...\033[0m\n"
hugo --theme hugo-academic

# Go To Public folder
cd public

# Add changes to git.
git add .

# Commit changes.
msg="rebuilding site $(date)"
if [ -n "$*" ]; then
	msg="$*"
fi
git diff-index --quiet HEAD || git commit -m "$msg"

# Push source and build repos.
printf "\033[0;32mPushing to Haoen-Cui/haoen-cui.github.io master branch...\033[0m\n"
git push --quiet --force https://Haoen-Cui:${GITHUB_PAT}@github.com/Haoen-Cui/haoen-cui.github.io.git master

# success message
printf "\033[0;32mDone !!!\033[0m\n"
