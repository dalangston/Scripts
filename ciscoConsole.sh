#!/bin/bash

####
# Use minicom to open serial console for Cisco-like devices using USB-Serial
###

DEV="/dev/ttyUSB0"
BAUD="9600"

minicom -D $DEV -b $BAUD
