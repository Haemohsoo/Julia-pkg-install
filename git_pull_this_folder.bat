@echo off
git config --global user.email "hsko85@empas.com"

rem https://stackoverflow.com/questions/17605767/create-list-or-arrays-in-windows-batch
rem creating a list of git repository basic directories


set gitcmd=git pull
set lll=---------------------------------------------------------------------------------


echo %lll%
cd
%gitcmd%
echo %lll%

pause