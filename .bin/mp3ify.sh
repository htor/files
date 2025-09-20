#!/usr/bin/env bash

set -e

if test $# != 1
then
    echo "usage: mp3ify.sh [file|dir]"
    exit 1
fi

if test -d "$1"
then
    find -E "$1" -not -path '*/\.*' -iregex '.*\.(aiff?|wav|flac)$' -exec bash -c 'mp3ify.sh "$@"' _ {} \; -exec rm -rf {} \;
else
    ffmpeg -n -hide_banner -i "$1" -ab 320k -map_metadata 0 -id3v2_version 3 "${1%.*}.mp3"
fi
