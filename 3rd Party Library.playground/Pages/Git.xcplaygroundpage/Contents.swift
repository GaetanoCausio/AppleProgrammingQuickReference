/*: (C) Gaetano Causio 2016
 
 # Git
 
 ## Re-Build a complete git local repository

 Close Xcode, open terminal and go to your project folder, then:   
 
 `rm -Rf .git`   ➤ remove current git \
 `git init`      ➤ initialize git \
 `git add .`     ➤ add all files of current project
 
 At this point you can open your project in git and perform your first commit!
 
 ## Add an Xcode project to github
 
 - in Gihub create a new repository with no files!!!
 - get the url of the repository
 - open your project in Xcode, under "Source Control" select your current repository and then choose "Configure [Project name]"
 - go to he "Remote" tab and add a new remote location, give it "github" as a name and past the url from github
 - under "Source Control" perform a "Push"
 
 ## Merging multiple commits into one
 
 `git rebase -i --root`  ➤ For all commits \
 `git rebase -i HEAD~4`  ➤ For the last 4 commits
 
 At this point en editor will appear with the following data:
 
 ![Screen1](Screen1.png)
 
 Change the second and subsequent *pick* commands to *squash* :
 
 ![Screen2](Screen2.png)
 
 Write and quit the editor by issuing the commando: ESC + `:wq`
 
 if squash was succesfull a new editor will start allowing you to change the commit message (on top of the screen), issue `:q` to quit
 
## Git Command Line
 
 `git init` ➤ Initialize a Git repository  \
 `git status` ➤ See what the current state of our project is  \
 `git add FileName` ➤ Start tracking changes for FileName  \
 `git add '*.swift'` ➤ Start tracking changes for all *.swift files  \
 `git rm '*.c'` ➤ Remove actual files from disk and also stage (track) the removal \
 `git commit -m "Comment"` ➤ Commit all staged changes   \
 `git log --oneline` ➤ Show commit history  \
 `git remote add origin https://github.com/link.git` ➤ Add a remote repository  \
 `git push -u origin master` ➤ Push local commits (master) to remote (origin) repo  \
 `git push` ➤ Once used -u you don't need to repeat parameters in subsequents push  \
 `git pull origin master` ➤ Pull down any new changes from remote repo   \
 `git diff HEAD` ➤ Diff from most recent commit (reffered to as HEAD pointer)  \
 `git diff --staged` ➤ See changes you just staged.  \
 `git reset FileName` ➤ Unstage (stop tracking changes) FileName  \
 `git checkout -- FileName` ➤ Change FileName back to how it was since last commit  \
 `git branch BranchName` ➤ Create a new branch  \
 `git checkout BranchName` ➤ Switch to branch BranchName  \
 `git branch` ➤ Show branches, the onw with * is the active one  \
 `git merge BranchName` ➤ Merge changes from BranchName into active branch (master)   \
 `git branch -d BranchName` ➤ Delete a branch \
 
 `git commit --amend` ➤ Amend last commit message  \
 `git config --global --edit`  ➤ Edit git configuration and location of .gitignore file

## Handy links

[Try git Course](https://try.github.io/levels/1/challenges/1) \
[Git Real Course](http://gitreal.codeschool.com/?utm_source=github&utm_medium=codeschool_option&utm_campaign=trygit) \
[Markdown-Cheatsheet](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet) \
[Shields.io Tag Icons](http://shields.io)
[Languages Supported](https://github.com/github/linguist/blob/master/lib/linguist/languages.yml)
 
*/
