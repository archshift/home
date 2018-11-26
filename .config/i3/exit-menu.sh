#!/bin/bash

OPTIONS=$'Cancel\nExit i3\nSuspend\nPoweroff\nReboot'

SELECT=$(echo "$OPTIONS" | ~/.config/i3/dmenu.sh -i -p "What would you like to do?")
[ "$SELECT" = "Exit i3" ] && i3-msg exit
[ "$SELECT" = "Suspend" ] && systemctl suspend
[ "$SELECT" = "Poweroff" ] && systemctl poweroff
[ "$SELECT" = "Reboot" ] && systemctl reboot
[ "$SELECT" = "Cancel" ] && exit 0
