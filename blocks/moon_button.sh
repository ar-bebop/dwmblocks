#!/bin/sh

if pidof caffeine-ng; then
    CAFFEINE="✔"
else
    CAFFEINE="✘"
fi

cat <<END | xmenu -i | sh &
 Applications
	 Terminal						st
	 Neovim						st nvim
	 Qutebrowser					qutebrowser

 Function
	 RANDR Cycle					autorandr --cycle
	 Paint?						paint --random
	 $CAFFEINE Caffeine			caffeine kill || caffeine start
 System
	 Lock							xscreensaver-command -lock
	 Logout						loginctl kill-user $USER
	⏼ Reboot						loginctl reboot
	⏻ Shutdown						loginctl poweroff
END
