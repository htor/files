#!/bin/bash
# stay awake when laptop lid is closed

function prevent_sleep() {
  sudo pmset -a sleep 0
  sudo pmset -a hibernatemode 0
  sudo pmset -a disablesleep 1
}

function enable_sleep() {
  sudo pmset -a sleep 1
  sudo pmset -a hibernatemode 3
  sudo pmset -a disablesleep 0
  exit 0
}

prevent_sleep
trap enable_sleep SIGINT SIGTERM
while true
do
  read _
done
