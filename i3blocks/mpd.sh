#!/bin/sh
#check variable counts the word playing in output of mpc
check=$(mpc | grep -c playing)
mout=$(mpc | sed -n '1p')
if [ $check -gt 0 ]
then
mout="⮓ $mout " #"<span foreground="#95c7ae"> hello </span>"
elif [ $(pidof ncmpcpp) -gt 0 ] #use this option if you only want it to display when ncmpcpp is open
#elif [ $(mpc | grep -c paused) -gt 0 ] #use this option if you want it display at all times
then
mout="⮔ $mout "
else
mout=" "
fi
echo $mout

case $BLOCK_BUTTON in
  3) mpc toggle ;;  # right click, mute/unmute
  4) mpc prev ;; # scroll up, previous song
  5) mpc next ;; # scroll down, next song
esac

exit 0
