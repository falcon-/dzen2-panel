#!/bin/bash

ssid=$(iwconfig wlp3s0 |grep ESSID| awk '{print $NF}'|cut -d ":" -f 2)
	ip=$(ifconfig wlp3s0|grep 192|grep inet)
	ip=$(echo $ip|cut -d " " -f 2)
	echo -n "^fg(\#557280) $ssid ^fg()"
