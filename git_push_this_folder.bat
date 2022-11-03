@echo off
git config --global user.email "hsko85@empas.com"

rem https://stackoverflow.com/questions/17605767/create-list-or-arrays-in-windows-batch


set gitcmd=git push
set cmt_msg=batch
set lll=---------------------------------------------------------------------------------

@echo off
echo %lll%

cd
	   
rem add all Untracked files
git add .

rem put tracked files to staging area
	   
rem to automatically "add" changes from all known files and to automatically "rm" files in the index 
rem that have been removed from the working tree, and then perform the actual commit;
git commit -a -m %cmt_msg%
%gitcmd%
echo %lll%


pause