#!/bin/bash

choice=$(echo -e "Sleep\nReboot\nShutdown\nLock" | rofi -dmenu -p "Power")

case "$choice" in
Sleep) systemctl suspend ;;
Reboot) systemctl reboot ;;
Shutdown) systemctl poweroff ;;
Lock) hyprlock ;;
esac
