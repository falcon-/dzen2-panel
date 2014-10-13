#!/bin/bash
WIDTH="180"
LINES="8"

essid=$(iwconfig wlp3s0 | sed -n "1p" | awk -F '"' '{print $2}')
mode=$(iwconfig wlp3s0 | sed -n "1p" | awk -F " " '{print $3}')
freq=$(iwconfig wlp3s0 | sed -n "2p" | awk -F " " '{print $2}' | cut -d":" -f2)
mac=$(iwconfig wlp3s0 | sed -n "2p" | awk -F " " '{print $6}')
qual=$(iwconfig wlp3s0 | sed -n "6p" | awk -F " " '{print $2}' | cut -d"=" -f2)
lvl=$(iwconfig wlp3s0 | sed -n "6p" | awk -F " " '{print $4}' | cut -d"=" -f2)
rate=$(iwconfig wlp3s0 | sed -n "3p" | awk -F "=" '{print $2}' | cut -d" " -f1)
inet=$(ifconfig wlp3s0 | sed -n "2p" | awk -F " " '{print $2}')
netmask=$(ifconfig wlp3s0 | sed -n "2p" | awk -F " " '{print $4}')
broadcast=$(ifconfig wlp3s0 | sed -n "2p" | awk -F " " '{print $6}')

(
echo " ^fg(\#89bcdd)Network"; 
echo " ^fg(\#89bcdd)$essid"; 
echo " Freq: ^fg(\#89bcdd)$freq GHz ^fg() Band: ^fg(\#89bcdd)$mode"; 
echo " Down: ^fg(\#89bcdd)$rate MB/s  ^fg() Quality: ^fg(\#89bcdd)$qual"; 
echo " IP: ^fg(\#89bcdd)$inet";  
echo " Netmask: ^fg(\#89bcdd)$netmask";  
echo " Broadcast: ^fg(\#89bcdd)$broadcast"; 
echo " MAC: ^fg(\#89bcdd)$mac";  
echo " "; sleep 20
) | dzen2 -fg '#89bcdd' -bg '#1c1c24' -fn '-artwiz-terminus-medium-r-normal-*-10-110-75-75-m-50-iso8859-*' -x '1200' -y '20' -w $WIDTH -l $LINES -e 'onstart=uncollapse,hide;button1=exit;button3=exit'
