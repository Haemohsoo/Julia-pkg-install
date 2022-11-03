#! /bin/bash
# https://stackoverflow.com/questions/13699929/enter-current-directory-mac/1369929#1369929
# Enter current directory -mac
# cd  "$(dirname "$0")"

# cd to *.command file folder
BASEDIR=$(dirname "$0")
cd "$BASEDIR"

# run shell
FILE_FIRST=$(basename "$0" .command)
sh ./"$FILE_FIRST".sh

##########################################
# https://stackoverflow.com/questions/192319/how-do-i-know-the-script-file-name-in-a-bash-script
echo " "
echo "##########################################"
echo $(basename "$BASH_SOURCE") "finished"
echo "##########################################"
exit 
##########################################
