#!/bin/bash

FILTER_BIN="$(which konwert)"
FILTER_OPTS="cp437-utf8"

clear

echo
echo "Connecting to alt.org..."
echo

ssh nethack@alt.org | $FILTER_BIN $FILTER_OPTS
