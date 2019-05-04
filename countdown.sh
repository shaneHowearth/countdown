#!/bin/bash
EOD=16:00:00
clear;
while :
    do i=$(expr $(date +%s -d $EOD) - $(date +%s))
       j=$((($RANDOM % 256)-1)); k=$((($RANDOM % 256)-1))
       printf "\e[1m\e[5m\e[48;5;${k}m\e[38;5;${j}m%5s\e[0m\r" "$i"
       sleep 1
    done
