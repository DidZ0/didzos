#!/bin/bash

#KEYMAP
setxkbmap us intl &
xset r rate 300 50 &

#KEYRING
eval $(gnome-keyring-daemon --start)
export SSH_AUTH_SOCK

#JAVA APPS ISSUES
export _JAVA_AWT_WM_NONREPARENTING=1
export AWT_TOOLKIT=MToolkit
wmname LG3D

#APPS
nm-applet &
wal -R &
picom --experimental-backends &

#STATUS_BAR 
while true; do
   xsetroot -name "$( date +"%F %R" )"
   sleep 1m    # Update time every minute
done 

#START_LOOP
while true; do
    dwm 2> ~/.dwm.log
done &

#START
exec dwm