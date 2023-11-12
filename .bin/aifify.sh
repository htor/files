#!/bin/bash

set -e

if test $# != 1
then
    echo "usage: aifify [file|dir]"
    exit 1
fi

if test -d "$1"
then
    find -E "$1" -not -path '*/\.*' -iregex '.*\.(flac|wav)$' -exec aifify.sh {} \; -exec rm -rf {} \;
else
    ffmpeg -n -hide_banner -i "$1" -write_id3v2 1 -c:v copy "${1%.*}.aiff"
fi

