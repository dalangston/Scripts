#!/bin/bash

# Check availablitiy of outbound ports

OPTS="--connect-timeout 5"

if [ $# -eq 1 ]
then
	curl $OPTS portquiz.net:$1 &>/dev/null && return 0 || return 1
fi
	
if [ $# -gt 1 ]
then
	PORT_LIST=( "$@" )
else
	PORT_LIST=( "51820" "53" "22" "80" "443" "8080" "8443" )
fi

for port in "${PORT_LIST[@]}"
do
	curl $OPTS portquiz.net:$port &>/dev/null && echo "$port is Reachable" || echo "$port is Unreachabe"
done

