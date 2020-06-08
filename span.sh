#!/bin/bash
# Toggle a fully spanned virtual monitor in bspwm (no config needed)

RESOLUTION=$(xrandr | awk 'NR==1{print $8 $9 $10}' | tr -d \,)
NUM_DISPLAYS=$(xrandr --query | grep ' connected ' | wc -l)

if [[ $(bspc query -M | wc -l) -eq $NUM_DISPLAYS ]]; then
	bspc wm -a span $RESOLUTION+0+0 &
	bspc monitor -f span &
	echo "Added virtual span monitor"
else
	bspc monitor span -r &
	bspc wm --adopt-orphans &
	echo "Removed virtual span monitor"
fi

exit
