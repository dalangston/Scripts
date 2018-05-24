#!/bin/bash

FILTER_BIN="$(which konwert)"
FILTER_OPTS="cp437-utf8"

ssh nethack@alt.org | $FILTER_BIN $FILTER_OPTS
