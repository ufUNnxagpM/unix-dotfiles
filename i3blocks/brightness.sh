#!/bin/sh

backlight=$(xbacklight)
echo $(python -c "print (round(${backlight}))")

case $BLOCK_BUTTON in
  4) xbacklight +1 ;; # scroll up, increase
  5) xbacklight -1 ;; # scroll down, decrease
esac

exit 0
