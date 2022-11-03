#! /bin/bash
git config --global user.email "hsko85@empas.com"
git pull


##########################################
# https://stackoverflow.com/questions/192319/how-do-i-know-the-script-file-name-in-a-bash-script
echo " "
echo "##########################################"
echo $(basename "$BASH_SOURCE") "finished"
echo "##########################################"
exit 
##########################################
