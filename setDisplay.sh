#!/bin/bash

###
# Enable and place monitors connected via DiplayLink
###

LaptopDisplay="LVDS1"
#LEFT="DVI-I-2-2"
LEFT="DVI-I-2-1"
#RIGHT="DVI-I-3-3"
#RIGHT="DVI-I-2-3"
VGA_PORT="VGA1"

#LMODE="1680x1850"
LMODE="1680x1050"
RMODE="1920x1080"

#Location
LAPTOP_POS="0x282"
LEFT_POS="1366x0"
RIGHT_POS="3046x0"

for OUTPUT in $(xrandr --listproviders | awk  '/modesetting/ {print $2 | "tr -d [:punct:]"}');do
	xrandr --setprovideroutputsource $OUTPUT 0
	sleep 1
done

#xrandr --output $LEFT --mode $LMODE --right-of $LaptopDisplay --output $RIGHT --auto --right-of $LEFT
#xrandr --output $LEFT --auto --right-of $LaptopDisplay --output $RIGHT --auto --right-of $LEFT
xrandr --output $LEFT --auto --pos $LEFT_POS --output $VGA_PORT --off
