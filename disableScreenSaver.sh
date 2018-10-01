#!/bin/bash
# credits goes to http://silviumc.wordpress.com/2011/12/05/how-to-stop-the-screen-saver-in-kde-while-watching-long-flash-clips-in-a-web-browser/

while /bin/true
do 
qdbus org.freedesktop.ScreenSaver /ScreenSaver SimulateUserActivity > /dev/null; 
sleep 1m; 
done
