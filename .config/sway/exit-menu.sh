#!/bin/bash

OPTIONS=$'Cancel\nExit Sway\nSuspend\nPoweroff\nReboot'

SELECT=$(echo "$OPTIONS" | python ~/.config/sway/dmenu.py -i -p "What would you like to do?")
[ "$SELECT" = "Exit Sway" ] && swaymsg exit
[ "$SELECT" = "Suspend" ] && systemctl suspend
[ "$SELECT" = "Poweroff" ] && systemctl poweroff
[ "$SELECT" = "Reboot" ] && systemctl reboot
[ "$SELECT" = "Cancel" ] && exit 0
