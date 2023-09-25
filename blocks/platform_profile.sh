#!/bin/sh

ICONh="⚢"
ICONm="⚠"
ICONl="⚙"

case $(cat /sys/firmware/acpi/platform_profile) in
    performance)
        printf '%s' "$ICONh";;
    balanced)
        printf '%s' "$ICONm";;
    low-power)
        printf '%s' "$ICONl";;
esac
