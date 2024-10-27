#!/usr/bin/env bash

set -e

trap exit INT TERM

ansi() {
    printf "\e[$1"
}

exit() {
    ansi "H" # go to 1:1
    ansi "0J" # clear from cursor to end
    ansi "?25h" # show cursor
}

lines=$(tput lines)
columns=$(tput cols)
x=$((columns / 2))
y=$((lines / 2))

ansi "?25l"     # hide cursor
ansi "2J"       # clear screen
ansi "1;1H"     # go to point x.y (1-based)

# print background pattern
for ((i=0; i<lines; i++))
do
    for ((j=0; j<columns; j++))
    do
        printf "$1"
    done
done

while true
do
    # cmd="$(date +'%Y-%m-%dT%H:%M:%S%z')"
    cmd="$(date)"
    len=${#cmd}
    ansi "$y;$((x-len/2))H $cmd " # go middle
    ansi "m"      # reset formatting
    sleep 1
done


# input LeftArrow = x=$'\E[D'
