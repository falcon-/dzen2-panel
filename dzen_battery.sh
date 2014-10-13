#!/bin/bash
#source $(dirname $0)/config.sh
#XPOS=$((1190 + 554))
WIDTH="82"
LINES="2"


battime=$(acpi -b | sed -n "1p" | awk -F " " '{print $5}')
batperc=$(acpi -b | sed -n "1p" | awk -F " " '{print $4}' | head -c3)
batstatus=$(acpi -b | cut -d',' -f1 | awk -F " " '{print $3}')

(echo " ^fg(\#89bcdd)Battery"; echo "  ^fg()$batstatus"; echo "  ^fg(\#89bcdd)$battime ^fg()left"; sleep 15) | dzen2 -fg '#89bcdd' -bg  '#1c1c24' -fn '-*-termsyn-medium-r-normal-*-10-110-75-75-m-50-iso8859-*' -x '1150' -y '20' -w '82' -l $LINES -e 'onstart=uncollapse,hide;button1=exit;button3=exit'
