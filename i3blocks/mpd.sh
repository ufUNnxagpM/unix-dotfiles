#!/bin/sh

#check variable counts the word playing in output of mpc
playcheck=$(mpc | grep -c playing)
pausecheck=$(mpc | grep -c paused)

mout=$(mpc | sed -n '1p')

if [ $playcheck -gt 0 ]; then
mout="⮓ $mout" 
elif [ $pausecheck -gt 0 -a $(pidof ncmpcpp) -gt 0 ]; then
mout="⮔ $mout"
else
mout=""
fi

echo $mout

case $BLOCK_BUTTON in
  3) mpc toggle ;;  # right click, mute/unmute
  4) mpc prev ;; # scroll up, previous song
  5) mpc next ;; # scroll down, next song
esac

exit 0
