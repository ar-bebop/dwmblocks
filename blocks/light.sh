#!/bin/sh

ICON_LOW=""
ICON_HIGH=""

LIGHT=$(light)
LIGHT=${LIGHT%.*}

if [ "$LIGHT" -gt 50 ]; then
    printf "$ICON_HIGH %s%%" "$LIGHT"
else
    printf "$ICON_LOW %s%%" "$LIGHT"
fi
