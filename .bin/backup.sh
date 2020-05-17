#!/bin/bash
# backup my stuff

set -e

if [[ -d /Volumes/space2 ]]
then
    time rsync -auvv --delete --exclude={Films,.*} /Volumes/space/ /Volumes/space2
    say "backup done"
else
    echo "Disk space2 not mounted, doing nothing"
fi
