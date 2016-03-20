#!/bin/sh
sudo onemon.sh &
xset r 66 &
xset r rate 200 50 &
nitrogen --restore &
redshift &
skype &
compton -b &
exec i3
