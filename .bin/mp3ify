#!/bin/bash

if test $# != 1
then
    echo "usage: mp3ify [file|dir]"
    exit 1
fi

if test -d "$1"
then
    find -E "$1" -not -path '*/\.*' -iregex '.*\.(flac)$' -exec mp3ify {} \;
else
    ffmpeg -n -hide_banner -i "$1" -ab 320k -map_metadata 0 -id3v2_version 3 "${1%.*}.mp3" 
fi
