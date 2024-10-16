#!/bin/bash

option=$(printf '%s\n' \
"logout"   \
"suspend"  \
"poweroff" \
"reboot"  |\
wmenu -b)

case "${option}" in
  "poweroff" | "reboot")
    hyprctl dispatch exec ${option};;
  "suspend")
    hyprctl dispatch exec systemctl suspend;;
  "logout")
    hyprctl dispatch exit;;
esac
