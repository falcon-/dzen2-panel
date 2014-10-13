#!/bin/bash
#wmname "spectrwm"
#setxkbmap de nodeadkeys
vol=`amixer get Master | grep "Mono:" | awk '{print $4}' | tr -d '[]'`
    if [ $vol == "0%" ]
    then
echo "Mute"
    else
echo $vol
    fi
    else
echo "Mute"
    fi
