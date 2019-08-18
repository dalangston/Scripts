#!/bin/bash

FILTER_BIN="$(which konwert)" || FILTER_BIN=$(which luit)
if !$FILTER_BIN; then
	echo "Unable to find filter program"
	echo
	echo "run:  sudo apt install konwert "
	exit 1
fi

FILTER_OPTS="cp437-utf8"

clear

echo
echo "Connecting to alt.org..."
echo

ssh nethack@alt.org | $FILTER_BIN $FILTER_OPTS
