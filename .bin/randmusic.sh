#!/bin/bash
# create a random playlist with music and play it

set -e

target_directory=/Volumes/space/music
num_tracks=10
playlist=$(mktemp)
mv $playlist $playlist.m3u
playlist=$playlist.m3u

case $# in
    0) 
        if [[ ! -d $target_directory ]]
        then
            echo "default directory $target_directory not mounted, doing nothing"
            exit 1
        fi ;;
    1)  
        target_directory=$1 ;;
    2)  
        target_directory=$1
        num_tracks=$2 ;;
    *)
        echo "usage: randmusic <directory> <num-tracks>"
        exit 1 ;;
esac

echo "#EXTM3U" > $playlist
find -E $target_directory -maxdepth 3 -type f \
    -iregex '.*/[^.]+\.(flac|mp3|ogg|wav|aiff?)$' | \
    shuf -n $num_tracks | \
    while read file
    do 
        echo "#EXTINF:0,$(basename "$file")" >> $playlist
        echo "$file" >> $playlist
    done
open -a /Applications/VLC.app $playlist
