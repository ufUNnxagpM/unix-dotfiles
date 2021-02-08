#!/bin/bash

if setxkbmap -v | grep -q 'colemak'; 
then 
	setxkbmap -layout us 
	echo "Activated Qwerty layout"
else 
	setxkbmap -layout us -variant colemak
	echo "Activated Colemak layout"
fi
