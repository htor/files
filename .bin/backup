#!/bin/bash
# backup my stuff

set -e

files=(
~/.bin
~/.ssh
~/.bash_profile
~/.vimrc 
~/.inputrc
~/.gitconfig
)
backupdir=~/space/backups
if [[ -d $backupdir ]]
then
    rsync -auvv --delete --exclude={.git,node_modules} "${files[@]}" $backupdir
else
    echo "backup directory not mounted, doing nothing"
fi
