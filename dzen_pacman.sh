#!/bin/bash
WIDTH="150"
pacmanlines=$(pacman -Qu | wc -l)
LINES=$(( $pacmanlines + 2 ))

updates=$(pacman -Qu)


(
echo " ^fg(\#89bcdd)Updates"; 
echo " $updates"; 
echo " "; 
echo " ^fg(\#89bcdd)Right click to update";sleep 15
) | dzen2 -fg '#89bcdd' -bg '#1c1c24' -fn '-artwiz-terminus-medium-r-normal-*-10-110-75-75-m-50-iso8859-*' -x '1000' -y '10' -w $WIDTH -l $LINES -e 'onstart=uncollapse,hide;button1=exit;button2=exec:xterm -e sudo pacaur -Syu;button3=exit'
