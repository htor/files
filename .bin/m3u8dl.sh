#!/bin/bash

set -e

read -p "Enter m3u8 URL: " url
read -p "Enter file name: " file

ffmpeg -i "$url" -bsf:a aac_adtstoasc -vcodec copy -c copy -crf 50 "${file}.mp4"
