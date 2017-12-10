#!/bin/bash

###
# List connected monitors and their EDID
#
###

for monitor in /sys/class/drm/*/edid
do
	echo ==========
	echo " $i"
	echo ==========
	cat $i
	echo
done

