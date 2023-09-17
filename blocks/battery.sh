#!/bin/sh

read -r capacity </sys/class/power_supply/BAT0/capacity
read -r status </sys/class/power_supply/BAT0/status

if [ "$status" = "Charging" ]; then
    printf " %s%%" "$capacity"
else
    if [ "$capacity" -ge 90 ]; then
        ICON=""
    elif [ "$capacity" -ge 80 ]; then
        ICON=""
    elif [ "$capacity" -ge 65 ]; then
        ICON=""
    elif [ "$capacity" -ge 50 ]; then
        ICON=""
    elif [ "$capacity" -ge 30 ]; then
        ICON=""
    elif [ "$capacity" -gt 20 ]; then
        ICON=""
    else
        ICON=""

    fi
    printf "$ICON %s%%" "$capacity"
fi
