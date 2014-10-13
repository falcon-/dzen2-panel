#!/bin/bash

BATT=$(acpi -V | grep -i charging | cut -d: -f2,3,4,5)

(
echo "$BATT ";sleep 20
) | dzen2 -p -x "1050" -y "20" -w "260"  -fn '-*-terminus-medium-r-*-*-12-*-*-*-*-*-*-*' -fg '#89bcdd' -bg '#1c1c24' -sa 'l' -ta 'c'\
    -title-name 'popup_sysinfo' -e 'onstart=uncollapse;button1=exit;button3=exit'
 
