#!/bin/bash

SIGNAL=$(a=$(/sbin/iwconfig wlp3s0 | grep "Link Quality" | awk '{print $2}' | sed 's/.*\=//'); echo $(($((${a%/*} * 100)) / ${a#*/}))%;)
SSID=$(iwconfig wlp3s0 |grep ESSID| awk '{print $NF}'|cut -d ":" -f 2)
IP=$(ifconfig wlp3s0|grep 192|grep inet)
IP=$(echo $IP|cut -d " " -f 2)
(echo "connected to $SSID :: $IP"
 echo " Signal Strength ::" "$SIGNAL"
) | dzen2 -l 2 -p -x "1100" -y "20" -w "180"  -fn '-*-terminus-medium-r-*-*-12-*-*-*-*-*-*-*'  -fg '#89bcdd' -bg '#1c1c24' -sa 'l' -ta 'c'\
                                                        -title-name 'popup_wifiinfo' -e 'onstart=uncollapse;button1=exit;button3=exit'


