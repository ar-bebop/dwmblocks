#!/bin/sh

ICON_HIGH="⚢"
ICON_MED="⚠"
ICON_LOW="⚙"

case $(cat /sys/firmware/acpi/platform_profile) in
    performance)
        printf '%s!' "$ICON_HIGH";;
    balanced)
        printf '%s;' "$ICON_MED";;
    low-power)
        printf '%s.' "$ICON_LOW";;
esac
