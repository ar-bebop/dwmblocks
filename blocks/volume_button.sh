#!/bin/sh
case "$1" in
    1) pactl set-sink-volume @DEFAULT_SINK@ -10% ;;
    2) pactl set-sink-mute @DEFAULT_SINK@ toggle ;;
    3) pactl set-sink-volume @DEFAULT_SINK@ +10% ;;
esac
