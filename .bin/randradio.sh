#!/bin/bash
# play a random radio station

set -e

radio_channels=(
  http://ice1.somafm.com/cliqhop-128-mp3
)

open -na vlc ${radio_channels[$RANDOM % ${#radio_channels[@]}]}

