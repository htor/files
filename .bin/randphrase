#!/bin/bash
# generates random 6-word passphrase
# requires wordplay and coreutils

set -e
wordfile=/usr/local/Cellar/wordplay/7.22/share/wordplay/words721.txt
numwords=${1:-6}
random_phrase="$(tr 'A-Z' 'a-z' < $wordfile | shuf -n $numwords | tr '\n' ' ')"
echo $random_phrase
