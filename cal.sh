#!/bin/bash

CAL=$(cal)
echo "$CAL" | dzen2 -l 7 -p -x "1150" -y "20" -w "110"  -fn '-*-terminus-medium-r-*-*-12-*-*-*-*-*-*-*' -fg '#89bcdd' -bg '#1c1c24'  -sa 'l' -ta 'c'\
                                                        -title-name 'popup_calendar' -e 'onstart=uncollapse;button1=exit;button3=exit'

