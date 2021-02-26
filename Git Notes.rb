>git init
set up a git repository

>git status

>git add

>git commit
git commit -m 'add password length validation'
same as
gcm 'add password length validation'

"adding new commonly use aliases"
type code ~/.bash_profile
add 
alias gcm='git commit -m'

>git reset
unstage all staged changes
------------------------------------------------------------------
>git status
will see modified files

>git diff
will show exactly which line is changed, from original to new modified

>git add lib/tic_tac_toe/game.rb
>git status
turned green, "changes to be committed" section
add this file to the next commited, haven't commit yet though

>get diff --staged
see all changes in the staging area

>git commit -m "log out when we're switithing players"
to comment a change

>git log
see new commit , snapshot of current progress in project
move all stuff from staging area to git folder, and clear staging area
"clean slate"
"new checkpoint"

>git branch
can see all current branches we're working on

>git co -b add_cheryl
check out , add branch, name of branch
move current branch to new branch

>git add -A
add all files to staging area

>ctrl + k 
clear screen

>git diff --staged
see all the changes in staging area

>git commit -m "change default player name to cheryl"
>git log 
can see last commit is "change default ...""

>git branch
still at "add Cheryl" branch

>git co master
change back to master branch

>git merge add_cheryl
now merge in changes from add_cheryl
made new commit on master branch call add_cheryl, all all changes to master

"Getting our code online"

loging to github.comment
-create a new repository
-give it a name
-give it accessor
-get online url

>git remote add origin (url)
telling git where to set up the remote
>git push -u origin master
push the current master branch files to origin
-u means everytime i type "git push origin master" , make it go to same place

refresh page github , will be visible

"Heroku" where be remote to run the code online

"Go back to a point in time",changing head
>git log, copy the hash after "commit"

>git co (paste hash)
will be in detached head, go back to a previous checkpoint

>git co master 
go back to the tip of master(latest save point)

USEFUL COMMANDS

add bunch of bad code in many different files. want to reset
>git status
>git reset --hard
will reset all file system back to the last commit, checkpoint

>get status
>git diff
>git add -a
>git reset lib/tic_tac_toes/cell.rb
will only reset this file that you wanna reset, and not other files

>git status
willl show red

>git commit -m "Add steve"
only send in the green files
>git reset --hard
change all current files back to last savepoint, not including the ones just commited













