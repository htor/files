#!/bin/bash
# randomize mac address

set -e

old_mac=$(ifconfig en0 | awk '/ether/ { print $2 }')
echo "old mac: $old_mac"
old_mac=(${old_mac//:/ })

random_mac=$(openssl rand -hex 3 | sed 's/\(..\)/\1:/g; s/.$//')
random_mac=(${random_mac//:/ })

old_mac[3]=${random_mac[0]}
old_mac[4]=${random_mac[1]}
old_mac[5]=${random_mac[2]}

new_mac=$(echo ${old_mac[@]} | sed 's/ /:/g')
echo "new mac: $new_mac"

sudo ifconfig en0 ether $new_mac
actual_mac=$(ifconfig en0 | awk '/ether/ { print $2 }')
echo "actual mac: $actual_mac"
