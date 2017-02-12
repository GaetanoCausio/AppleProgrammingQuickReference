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
 
## Handy Git commands
 
 `git log --oneline` ➤ Show commit history    
 `git commit --amend` ➤ Amend last commit message
 `git config --global --edit`  ➤ Edit git configuration and location of .gitignore file

## Handy links

[Markdown-Cheatsheet](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet)   
[Shields.io Tag Icons](http://shields.io)
 
*/
