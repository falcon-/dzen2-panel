#!/bin/bash
while [ 1 ];do clear;a=$(/sbin/iwconfig wlp3s0 | grep "Link Quality" | awk '{print $2}' | sed 's/.*\=//'); echo "Signal Strength :: " $(($((${a%/*} * 100)) / ${a#*/}))%;sleep 1;done

