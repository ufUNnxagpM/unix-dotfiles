#!/bin/sh

backlight=$(xbacklight)
echo $(python -c "print (round(${backlight}))")
exit 0
