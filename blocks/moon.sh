#!/bin/sh

PHASE=$(curl -s "https://www.moongiant.com/phase/today" | grep -oP "Phase: <span>\K.*?(?=<)")

case "$PHASE" in
    "New Moon")
        printf "🌕";;
    "Waxing Crescent")
        printf "🌖";;
    "Firt Quarter")
        printf "🌗";;
    "Waxing Gibbous")
        printf "🌘";;
    "Full Moon")
        printf "🌑";;
    "Waning Gibbous")
        printf "🌒";;
    "Last Quarter")
        printf "🌓";;
    "Waning Crescent")
        printf "🌔";;
esac
