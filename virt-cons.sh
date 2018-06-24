#!/bin/bash

# Connect to multiple consoles in EVE-NG virtual lab.
#  Takes the POD number and Number of devices as arguments.
#  Creates a tmux session, and populates the window with panse
#   containing telnet sessions to each of the devices.
#
#  This version does nothing to verify that the targets are available
#
# Used the below GitHub Gist as a reference:
#  https://gist.github.com/kizzx2/4739236

if [ $# -lt 2 ]
then
  echo "Usage $0 [POD #] [Term Count]"
  exit 2
fi

POD=$1
NUM_TERMS=$2
EVE_NG="eve-ng"

session="EVE-NG_LAB"

tmux new -d -s $session

on_error() {
  tmux kill-session -t $session
}
trap on_error ERR

FIRST=$((32768 + 128 * $POD + 1))
LAST=$((FIRST + NUM_TERMS - 1))

for PORT in $(seq $FIRST $LAST | sort -rn)
do
  tmux splitw -t $session -l 1
  tmux send -t $session:0.1 "telnet $EVE_NG $PORT" C-m
  tmux selectp -t $session:0.0
done

tmux killp -t $session:0.0
tmux selectl -t $session tiled

tmux a -t $session
