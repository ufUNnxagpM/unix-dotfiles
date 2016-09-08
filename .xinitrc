#!/bin/sh
sudo /home/machu/.screenlayout/4k.sh &
xrdb ~/.Xresources &
xset r 66 & 
xset r rate 200 50 &
nitrogen --restore & 
#nvidia-settings -a "[gpu:0]/GPUFanControlState=1" -a "[fan:0]/GPUTargetFanSpeed=27" &
nvidia-settings --assign CurrentMetaMode="nvidia-auto-select +0+0 { ForceFullCompositionPipeline = On }" &
redshift &
pactl set-default-sink alsa_output.usb-Yamaha_Corporation_Steinberg_UR22-00.analog-stereo & #use so lemonbar displays correct audio 
#skype &
compton &
exec i3
