#!/bin/sh
sudo onemon.sh &
#sudo /home/machu/.screenlayout/temp.sh &
xset s off &
xset dpms 0 0 3600 &
xset r 66 &
xset r rate 200 50 &
setxkbmap -variant colemak &
nitrogen --restore &
#xrdb -load .Xresources &
redshift &
apulse32 skype &
#compton -b &
exec i3
