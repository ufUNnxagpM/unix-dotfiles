#!/bin/sh

mod=$1
gapcurrent=$(bspc config window_gap)

case $mod in
	"+"*)	bspc config window_gap $(expr $gapcurrent + ${mod#*+});;
	"-"*)	bspc config window_gap $(expr $gapcurrent - ${mod#*-});;
	*)	bspc config window_gap $mod;;
esac

