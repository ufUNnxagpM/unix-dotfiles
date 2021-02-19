#!/usr/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

BAR_NAMES=( top bottom left right )

# Launch top and bottom with custom theme
for i in "${BAR_NAMES[@]}"
do
	if [[ $# -ne 1 ]]; then
		polybar $i &
	else
		polybar -c $HOME/.config/polybar/themes/$THEME $i &
	fi
done

echo $'\e[1;33m'Bars launched with theme $THEME$'\e[0m'
