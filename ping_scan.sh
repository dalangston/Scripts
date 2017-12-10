#!/bin/bash

# Ping every host in a subnet
# Currently only supports /24

PREFIX="192.168.20"

for i in $(seq 1 255);do
	IP="$PREFIX.$i"
	if ping -c 1 -W 1 $IP 1>/dev/null;then
		echo "$IP"
	fi
done

