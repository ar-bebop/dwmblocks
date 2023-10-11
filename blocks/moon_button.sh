#!/bin/sh

cat <<END | xmenu -i | sh &
 Applications
	 Terminal		st
	 neovim		st nvim
	 qutebrowser	qutebrowser
 System
	 Logout		loginctl kill-user $USER
	⏼ Reboot		reboot
	⏻ Shutdown		poweroff
END
