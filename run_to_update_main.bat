@echo off
echo Starting Git Update Process...

:: Store current branch name
for /f "tokens=* USEBACKQ" %%F in (`git rev-parse --abbrev-ref HEAD`) do set current_branch=%%F

echo Current branch: %current_branch%

:: Fetch all changes
echo Fetching changes from remote...
git fetch --all

:: Save any local changes
echo Stashing local changes...
git stash

:: Update main branch
echo Updating main branch...
git checkout main
git pull origin main

:: Return to original branch and update it
echo Returning to %current_branch% and updating...
git checkout %current_branch%
git merge main

:: Restore local changes if any were stashed
echo Restoring local changes...
git stash pop

echo Update process complete!
pause